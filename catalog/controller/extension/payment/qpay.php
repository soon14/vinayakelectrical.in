<?php
class ControllerExtensionPaymentQpay extends Controller {
	public function index() {
		if (!$this->config->get('payment_qpay_test')) {
			$data['action'] = 'https://pg.qpayindia.com/wwws/Payment/PaymentDetails.aspx';
		} else {
			$data['action'] = 'https://pg.qpayindia.com/wwws/Payment/PaymentDetails.aspx';
			
		}

		$this->load->model('checkout/order');
		

		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
        $data['amt'] = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);
		
		$data['QPayID']=$this->config->get('payment_qpay_username').'`'.base64_encode($data['amt']);
		$data['QPayPWD']=$this->config->get('payment_qpay_password');
		

		$data['Currency'] = "INR";
		$data['OrderID'] = $order_info['order_id'];
		$data['Mode'] = "Test";
		$data['Paymentoption'] = "C,D,N,U";
		$data['TransactionType'] = "PURCHASE";

		$data['pmt_sender_email'] = $order_info['email'];
		$data['pmt_contact_firstname'] = html_entity_decode($order_info['payment_firstname'], ENT_QUOTES, 'UTF-8');
		$data['pmt_contact_surname'] = html_entity_decode($order_info['payment_lastname'], ENT_QUOTES, 'UTF-8');
		$data['phone'] = $order_info['telephone'];
		$data['country'] = $order_info['payment_iso_code_2'];
        $data['regindi_address2'] = html_entity_decode($order_info['payment_address_2'], ENT_QUOTES, 'UTF-8');
		$data['address'] = html_entity_decode($order_info['payment_address_1'], ENT_QUOTES, 'UTF-8').','.$data['regindi_address2'];
		
		$data['city'] = html_entity_decode($order_info['payment_city'], ENT_QUOTES, 'UTF-8');
		$data['state'] = html_entity_decode($order_info['payment_zone'], ENT_QUOTES, 'UTF-8');
		$data['postal_code'] = html_entity_decode($order_info['payment_postcode'], ENT_QUOTES, 'UTF-8');

		$data['ResponseURL'] = $this->url->link('extension/payment/qpay/callback');

		return $this->load->view('extension/payment/qpay', $data);
	}

	public function callback() {
		$this->load->language('extension/payment/qpay');
		
		
		//print_r($_POST);exit;

		if (isset($this->request->post['MerchantOrderID'])) {
			$order_id = $this->request->post['MerchantOrderID'];
		} else {
			$order_id = 0;
		}

		$this->load->model('checkout/order');

		$order_info = $this->model_checkout_order->getOrder($order_id);

		if ($order_info) {
			$error = '';

			if (!isset($this->request->post['ResponseCode']) || !isset($this->request->post['MerchantOrderID'])) {
				$error = $this->language->get('text_unable');
				
			}  elseif ($this->request->post['ResponseCode'] == '201') {
				$error = $this->language->get('text_declined');
			}
			elseif ($this->request->post['ResponseCode'] == '142') {
				$error = $this->language->get('text_cancelled');
			}
		} else {
			$error = $this->language->get('text_unable');
		}

		if ($error) {
			$data['breadcrumbs'] = array();

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_home'),
				'href' => $this->url->link('common/home')
			);

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_basket'),
				'href' => $this->url->link('checkout/cart')
			);

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_checkout'),
				'href' => $this->url->link('checkout/checkout', '', true)
			);

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_failed'),
				'href' => $this->url->link('checkout/success')
			);

			$data['text_message'] = sprintf($this->language->get('text_failed_message'), $error, $this->url->link('information/contact'));

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('common/success', $data));
		} else {
			$this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payment_qpay_order_status_id'));

			$this->response->redirect($this->url->link('checkout/success'));
		}
	}
}