<?php

class ControllerExtensionPaymentPartially extends Controller {

  /*
  called at checkout when Partial.ly payment method selected
  makes a call to partial.ly api to create an order in checkout status
  and gets the partial.ly gateway checkout url
  */
  public function index() {
    $this->load->language('extension/payment/partially');
    $data['button_confirm'] = $this->language->get('button_confirm');

    $this->load->model('checkout/order');

		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

    if ($order_info) {
      // create array of payment plan data to post to partial.ly gateway api
      $plan = array(
          'offer_id' => $this->config->get('payment_partially_offer'),
          'integration' => 'opencart',
          'integration_id' => $order_info['order_id'],
          'amount' => $order_info['total'],
          'currency' => $order_info['currency_code'],
          'customer' => array(
              'first_name' => $order_info['firstname'],
              'last_name' => $order_info['lastname'],
              'email' => $order_info['email']
          ),
          'meta' => array(
            'checkout_complete_url' => $this->url->link('checkout/success'),
            'checkout_notify_url' => $this->url->link('extension/payment/partially/callback', '', true),
            'checkout_cancel_url' => $this->url->link('checkout/checkout', '', true),
            'items' => array()
          )
      );

      if (isset($order_info['telephone'])) $plan['customer']['phone'] = $order_info['telephone'];

      if (isset($order_info['shipping_address_1']) && ! empty($order_info['shipping_address_1'])) {
        $plan['shipto_address'] = $order_info['shipping_address_1'];
        $plan['shipto_address2'] = $order_info['shipping_address_2'];
        $plan['shipto_city'] = $order_info['shipping_city'];
        $plan['shipto_state'] = $order_info['shipping_zone_code'];
        $plan['shipto_postal_code'] = $order_info['shipping_postcode'];
        $plan['shipto_country'] = $order_info['shipping_iso_code_2'];
      }
      else {
        $plan['shipto_address'] = $order_info['payment_address_1'];
        $plan['shipto_address2'] = $order_info['payment_address_2'];
        $plan['shipto_city'] = $order_info['payment_city'];
        $plan['shipto_state'] = $order_info['payment_zone_code'];
        $plan['shipto_postal_code'] = $order_info['payment_postcode'];
        $plan['shipto_country'] = $order_info['payment_iso_code_2'];
      }

      $this->load->model('tool/image');
      foreach ($this->cart->getProducts() as $product) {
        $plan['meta']['items'][] = array(
          'id' => $product['cart_id'],
          'product_id' => $product['product_id'],
          'name' => htmlspecialchars($product['name']),
          'sku' => htmlspecialchars($product['model']),
          'price' => $product['price'],
          'quantity' => $product['quantity'],
          'total' => $product['total'],
          'weight' => $product['weight'],
          'image' => $this->model_tool_image->resize($product['image'], 80, 80)
        );
      }

      $this->load->model('extension/payment/partially');
      $data['checkout_url'] = $this->model_extension_payment_partially->getCheckoutUrl($plan);
    }

    return $this->load->view('extension/payment/partially', $data);
  }

  /*
  After a partial.ly gateway checkout, partial.ly will post payment plan info
  here, and we need to update order status as in config
  */
  public function callback() {
    // read raw json body
    $body = file_get_contents('php://input');
    // get signature header
    $signature = $_SERVER['HTTP_PARTIALLY_SIGNATURE'];
    // calculate signature
    $local_signature = hash_hmac('sha256', $body, $this->config->get('payment_partially_api_key'));

    // make sure received and calculated signatures match
    if ($local_signature == $signature) {
      $json = json_decode($body);
      $this->load->model('checkout/order');
      // update order status
      $notes = 'Partial.ly plan #'.$json->payment_plan->number;
      $this->model_checkout_order->addOrderHistory($json->payment_plan->integration_id, $this->config->get('payment_partially_order_status_id'), $notes);
      // response with 200 ok
      $this->response->setOutput("ok");
    }
    else {
      $this->log->write('Partial.ly received invalid callback signature');
      // respond with status 400 and error
      http_response_code(400);
      $this->response->setOutput("not ok");
    }
  }

  /*
  After standard partial.ly checkout from a widget checkout button,
  partial.ly will post notice here so that we can create the order.
  Need to return order info for partial.ly
  */
  public function create_order() {
    // read raw json body
    $body = file_get_contents('php://input');
    // get signature header
    $signature = $_SERVER['HTTP_PARTIALLY_SIGNATURE'];
    // calculate signature
    $local_signature = hash_hmac('sha256', $body, $this->config->get('payment_partially_api_key'));

    // json response type header
    $this->response->addHeader('Content-Type: application/json');

    // make sure received and calculated signatures match
    if ($local_signature == $signature) {
      $json = json_decode($body);

      //$this->log->write('Partial.ly creating order from payment_plan: '.print_r($json, true));

      $order_data = array(
          'invoice_prefix' => $this->config->get('config_invoice_prefix'),
          'store_id' => $this->config->get('config_store_id'),
          'store_name' => $this->config->get('config_name')
      );

      if ($order_data['store_id']) {
				$order_data['store_url'] = $this->config->get('config_url');
			} else {
				if ($this->request->server['HTTPS']) {
					$order_data['store_url'] = HTTPS_SERVER;
				} else {
					$order_data['store_url'] = HTTP_SERVER;
				}
			}

      $order_data['customer_id'] = 0;
      $order_data['customer_group_id'] = 0;
      $order_data['firstname'] = $json->payment_plan->customer->first_name;
      $order_data['lastname'] = $json->payment_plan->customer->last_name;
      $order_data['email'] = $json->payment_plan->customer->email;
      $order_data['telephone'] = $json->payment_plan->customer->phone;
      $order_data['fax'] = '';
      $order_data['custom_field'] = '';
      $order_data['payment_firstname'] = $json->payment_plan->customer->first_name;
			$order_data['payment_lastname'] = $json->payment_plan->customer->last_name;
			$order_data['payment_company'] = '';
			$order_data['payment_address_1'] = $json->payment_plan->shipto_address;
			$order_data['payment_address_2'] = $json->payment_plan->shipto_address2;
			$order_data['payment_city'] = $json->payment_plan->shipto_city;
			$order_data['payment_postcode'] = $json->payment_plan->shipto_postal_code;
			$order_data['payment_zone'] = '';
			$order_data['payment_zone_id'] = '';
			$order_data['payment_country'] = $json->payment_plan->shipto_country;
			$order_data['payment_country_id'] = 0;
			$order_data['payment_address_format'] = '';
			$order_data['payment_custom_field'] = '';
      $order_data['payment_method'] = 'partially';
      $order_data['payment_code'] = '';
      $order_data['shipping_firstname'] = $json->payment_plan->customer->first_name;
			$order_data['shipping_lastname'] = $json->payment_plan->customer->last_name;
			$order_data['shipping_company'] = '';
			$order_data['shipping_address_1'] = $json->payment_plan->shipto_address;
			$order_data['shipping_address_2'] = $json->payment_plan->shipto_address2;
			$order_data['shipping_city'] = $json->payment_plan->shipto_city;
			$order_data['shipping_postcode'] = $json->payment_plan->shipto_postal_code;
			$order_data['shipping_zone'] = '';
			$order_data['shipping_zone_id'] = '';
			$order_data['shipping_country'] = $json->payment_plan->shipto_country;
			$order_data['shipping_country_id'] = 0;
			$order_data['shipping_address_format'] = '';
			$order_data['shipping_custom_field'] = '';
      $order_data['shipping_method'] = '';
      $order_data['shipping_code'] = '';

      $order_data['products'] = array();

      if ($json->payment_plan->meta->items) {
        foreach ($json->payment_plan->meta->items as $item) {
          $order_data['products'][] = array(
  					'product_id' => $item->product_id,
  					'name'       => $item->name,
  					'model'      => '',
  					'option'     => array(),
  					'download'   => '',
  					'quantity'   => $item->quantity,
  					'subtract'   => 0,
  					'price'      => $item->price,
  					'total'      => $item->total,
  					'tax'        => 0,
  					'reward'     => 0
  				);
        }
      }

      $order_data['vouchers'] = array();
      $order_data['comment'] = '';
			$order_data['total'] = $json->payment_plan->amount;
      $order_data['affiliate_id'] = 0;
      $order_data['commission'] = 0;
      $order_data['marketing_id'] = 0;
      $order_data['tracking'] = '';
      $order_data['language_id'] = $this->config->get('config_language_id');
			$order_data['currency_id'] = $this->currency->getId($json->payment_plan->currency);
			$order_data['currency_code'] = $json->payment_plan->currency;
			$order_data['currency_value'] = $this->currency->getValue($json->payment_plan->currency);
			$order_data['ip'] = $json->payment_plan->ip_address;
      $order_data['forwarded_ip'] = '';
      $order_data['user_agent'] = $json->payment_plan->user_agent;
      $order_data['accept_language'] = '';

      //$this->log->write('Partial.ly trying to creat order with data: ' . print_r($order_data, true));

      $this->load->model('checkout/order');
      $order_id = $this->model_checkout_order->addOrder($order_data);
      // update order status
      $notes = 'Partial.ly plan #'.$json->payment_plan->number;
      $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payment_partially_order_status_id'), $notes);
      $this->response->setOutput( json_encode(array('order_id' => $order_id)) );
    }
    else {
      $this->log->write('Partial.ly received invalid callback signature');
      // respond with status 400 and error
      http_response_code(400);
      $this->response->setOutput( json_encode(array('error' => 'invalid signature')) );
    }
  }

  // test method to display raw widget
  public function widget() {
    if (isset($this->request->get['product_id'])) {
			$product_id = (int)$this->request->get['product_id'];
		} else {
			$product_id = 0;
		}
    $this->load->model('extension/payment/partially');
    $this->response->setOutput( $this->model_extension_payment_partially->getWidget($product_id) );
  }
}
