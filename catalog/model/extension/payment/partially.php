<?php

class ModelExtensionPaymentPartially extends Model {
  public function getMethod($address, $total) {
		$this->load->language('extension/payment/partially');

    $status = true;
    // check min allowed amount
    $min_total = $this->config->get('payment_partially_min_total');
		if ($min_total && $min_total > $total) {
			$status = false;
		}

		$method_data = array();

    // make sure min total met if set, and offer set
		if ($status && $this->config->get('payment_partially_offer')) {
			$method_data = array(
				'code'       => 'partially',
				'title'      => $this->language->get('text_title'),
				'terms'      => '',
				'sort_order' => $this->config->get('payment_partially_sort_order')
			);
		}

		return $method_data;
	}

  public function getCheckoutUrl($plan) {
    $body = json_encode(array('payment_plan' => $plan));

    $endpoint = 'https://partial.ly/api/v1/gateway_purchase_url';

    $headers = array();
		$headers[] = 'Content-Type: application/json';
    $headers[] = 'Content-Length: ' . strlen($body);
		$headers[] = 'Authorization: Bearer ' . $this->config->get('payment_partially_api_key');

    $this->log->write('Partial.ly posting to '.$endpoint.' '.$body);

    $opts = array(
			CURLOPT_RETURNTRANSFER => true,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS => $body,
			CURLOPT_URL => $endpoint,
      CURLOPT_HTTPHEADER => $headers
		);

    $ch = curl_init();

    curl_setopt_array($ch, $opts);

		$raw_response = curl_exec($ch);

    $url = '';

    if (curl_errno($ch)) {
        //error message
        $err = curl_error($ch);
        $this->log->write('Partial.ly get '.$endpoint.' curl_error: '.$err);
    }
    else {
      try {
        $json = json_decode($raw_response);
        if (isset($json->gateway_purchase_url)) $url = $json->gateway_purchase_url;
      }
      catch (Exception $ex) {}
    }

		curl_close($ch);

    return $url;
  }

  public function getWidget($product_id) {
    // make sure offer is set first
    if (empty($this->config->get('payment_partially_offer'))) return '';
    
    $this->load->model('catalog/product');
		$product_info = $this->model_catalog_product->getProduct($product_id);
    if ($product_info) {
      //$this->log->write('Partial.ly product info '.print_r($product_info, true));
      $widget_config = array(
        'amount' => $product_info['price'],
        'offer' => $this->config->get('payment_partially_offer'),
        'quantity' => 1,
        'currency' => $this->config->get('config_currency'),
        'targetSelector' => '#partiallyWidgetContainer',
        'style' => $this->config->get('payment_partially_widget_style'),
        'title' => $this->config->get('payment_partially_widget_title'),
        'actionText' => $this->config->get('payment_partially_widget_trigger_text'),
        'popupDetails' => $this->config->get('payment_partially_widget_popup_details'),
        'quantitySelector'=>'#input-quantity',
        'source' => 'opencart',
        'partiallyUrl' => 'https://partial.ly'
      );

      if ($this->config->get('payment_partially_widget_body')) {
        $widget_config['body'] = $this->config->get('payment_partially_widget_body');
      }

      // check for checkout button config
      if ($this->config->get('payment_partially_widget_checkout_enabled')) {
        $widget_config['includeCheckout'] = true;
        $widget_config['checkoutButtonText'] = $this->config->get('payment_partially_widget_checkout_text');

        $this->load->model('tool/image');

        $widget_config['checkoutButtonConfig'] = array(
          'amount' => $product_info['price'],
          'offer' => $this->config->get('payment_partially_offer'),
          'quantity' => 1,
          'currency' => $this->config->get('config_currency'),
          'returnUrl' => $this->url->link('product/product', 'product_id=' . $product_id, true),
          'quantitySelector'=>'#input-quantity',
          'baseUrl' => 'https://partial.ly',
          'meta' => array(
            'source' => 'opencart',
            'opencart_order_url' => $this->url->link('extension/payment/partially/create_order', '', true),
            'items' => array(
              array(
                'name' => $product_info['name'],
                'price' => $product_info['price'],
                'quantity' => 1,
                'total' => $product_info['price'],
                'product_id' => $product_info['product_id'],
                'sku' => $product_info['sku'],
                'image' => $this->model_tool_image->resize($product_info['image'], 74, 74),
                'weight' => $product_info['weight'],
                'weight_units' => $this->getWeightUnits()
              )
            )
          )
        );
      }

      $data['widget_config'] = json_encode($widget_config);
      return $this->load->view('extension/payment/partially_widget', $data);
    }
    else {
      $this->log->write('Partial.ly widget could not load product with id '.$product_id);
      return '';
    }
  }

  private function getWeightUnits() {
    $weights = $this->getWeightClasses();
    $weight_id = $this->config->get('config_weight_class_id');
    if (isset($weights[$weight_id])) $name = $weights[$weight_id];
    else $name = 'Kilogram';
    if ($name == 'Kilogram') return 'kg';
    if ($name == 'Pound') return 'lbs';
    if ($name == 'Ounce') return 'oz';
    return 'g';
  }

  // since there isn't a catalog model for this, we're basically copy/pasting from admin model. sigh
  private function getWeightClasses() {
		$weight_class_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "weight_class wc LEFT JOIN " . DB_PREFIX . "weight_class_description wcd ON (wc.weight_class_id = wcd.weight_class_id) WHERE wcd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

    foreach ($query->rows as $row) $weight_class_data[$row['weight_class_id']] = $row['title'];

		return $weight_class_data;
	}

}
