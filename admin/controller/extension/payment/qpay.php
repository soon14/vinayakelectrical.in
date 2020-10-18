<?php
class ControllerExtensionPaymentqpay extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/payment/qpay');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('payment_qpay', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true));
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['username'])) {
			$data['error_username'] = $this->error['username'];
		} else {
			$data['error_username'] = '';
		}

		if (isset($this->error['password'])) {
			$data['error_password'] = $this->error['password'];
		} else {
			$data['error_password'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/payment/qpay', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['action'] = $this->url->link('extension/payment/qpay', 'user_token=' . $this->session->data['user_token'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true);

		if (isset($this->request->post['payment_qpay_username'])) {
			$data['payment_qpay_username'] = $this->request->post['payment_qpay_username'];
		} else {
			$data['payment_qpay_username'] = $this->config->get('payment_qpay_username');
		}

		if (isset($this->request->post['payment_qpay_password'])) {
			$data['payment_qpay_username'] = $this->request->post['payment_qpay_password'];
		} elseif ($this->config->get('payment_qpay_password')) {
			$data['payment_qpay_password'] = $this->config->get('payment_qpay_password');
		} else {
			$data['payment_qpay_password'] = token(32);
		}

		if (isset($this->request->post['payment_qpay_test'])) {
			$data['payment_qpay_test'] = $this->request->post['payment_qpay_test'];
		} else {
			$data['payment_qpay_test'] = $this->config->get('payment_qpay_test');
		}

		if (isset($this->request->post['payment_qpay_total'])) {
			$data['payment_qpay_total'] = $this->request->post['payment_qpay_total'];
		} else {
			$data['payment_qpay_total'] = $this->config->get('payment_qpay_total');
		}

		if (isset($this->request->post['payment_qpay_order_status_id'])) {
			$data['payment_qpay_order_status_id'] = $this->request->post['payment_qpay_order_status_id'];
		} else {
			$data['payment_qpay_order_status_id'] = $this->config->get('payment_qpay_order_status_id');
		}

		$this->load->model('localisation/order_status');

		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

		if (isset($this->request->post['payment_qpay_geo_zone_id'])) {
			$data['payment_qpay_geo_zone_id'] = $this->request->post['payment_qpay_geo_zone_id'];
		} else {
			$data['payment_qpay_geo_zone_id'] = $this->config->get('payment_qpay_geo_zone_id');
		}

		$this->load->model('localisation/geo_zone');

		$data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

		if (isset($this->request->post['payment_qpay_status'])) {
			$data['payment_qpay_status'] = $this->request->post['payment_qpay_status'];
		} else {
			$data['payment_qpay_status'] = $this->config->get('payment_qpay_status');
		}

		if (isset($this->request->post['payment_qpay_sort_order'])) {
			$data['payment_qpay_sort_order'] = $this->request->post['payment_qpay_sort_order'];
		} else {
			$data['payment_qpay_sort_order'] = $this->config->get('payment_qpay_sort_order');
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/payment/qpay', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/payment/qpay')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['payment_qpay_username']) {
			$this->error['username'] = $this->language->get('error_username');
		}

		if (!$this->request->post['payment_qpay_password']) {
			$this->error['password'] = $this->language->get('error_password');
		}

		return !$this->error;
	}
}
