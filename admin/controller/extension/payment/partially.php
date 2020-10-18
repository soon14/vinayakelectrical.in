<?php
class ControllerExtensionPaymentPartially extends Controller {

  private $error = array();

  public function index() {
    $this->load->language('extension/payment/partially');
    $this->document->setTitle($this->language->get('heading_title'));

    $this->load->model('setting/setting');
    if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('payment_partially', $this->request->post);
			$data['success'] = $this->language->get('text_success');
		}
    else {
      $data['success'] = false;
    }

    if (isset($this->session->data['user_token'])) {
      $token = $this->session->data['user_token'];
      $token_field = 'user_token';
    }
    else {
      $token = $this->session->data['token'];
      $token_field = 'token';
    }

    $data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', $token_field . '=' . $token, true)
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', $token_field . '=' . $token . '&type=payment', true)
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/payment/partially', $token_field . '=' . $token, true)
		);

    // errors
    if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['api_key'])) {
			$data['error_api_key'] = $this->error['api_key'];
		} else {
			$data['error_api_key'] = '';
		}

    // form data
    if (isset($this->request->post['payment_partially_api_key'])) {
			$data['payment_partially_api_key'] = $this->request->post['payment_partially_api_key'];
		} else {
			$data['payment_partially_api_key'] = $this->config->get('payment_partially_api_key');
		}

    if (isset($this->request->post['payment_partially_status'])) {
			$data['payment_partially_status'] = $this->request->post['payment_partially_status'];
		} else {
			$data['payment_partially_status'] = $this->config->get('payment_partially_status');
		}

    if (isset($this->request->post['payment_partially_offer'])) {
			$data['payment_partially_offer'] = $this->request->post['payment_partially_offer'];
		} else {
			$data['payment_partially_offer'] = $this->config->get('payment_partially_offer');
		}

    if (isset($this->request->post['payment_partially_min_total'])) {
			$data['payment_partially_min_total'] = $this->request->post['payment_partially_min_total'];
		} else {
			$data['payment_partially_min_total'] = $this->config->get('payment_partially_min_total');
		}

    if (isset($this->request->post['payment_partially_order_status_id'])) {
			$data['payment_partially_order_status_id'] = $this->request->post['payment_partially_order_status_id'];
		} else {
			$data['payment_partially_order_status_id'] = $this->config->get('payment_partially_order_status_id');
		}

    if (isset($this->request->post['payment_partially_sort_order'])) {
			$data['payment_partially_sort_order'] = $this->request->post['payment_partially_sort_order'];
		} else {
			$data['payment_partially_sort_order'] = $this->config->get('payment_partially_sort_order');
		}

    if (isset($this->request->post['payment_partially_widget_style'])) {
			$data['payment_partially_widget_style'] = $this->request->post['payment_partially_widget_style'];
		} else {
			$data['payment_partially_widget_style'] = $this->config->get('payment_partially_widget_style');
		}

    if (isset($this->request->post['payment_partially_widget_title'])) {
			$data['payment_partially_widget_title'] = $this->request->post['payment_partially_widget_title'];
		} else {
			$data['payment_partially_widget_title'] = $this->config->get('payment_partially_widget_title');
		}

    if (isset($this->request->post['payment_partially_widget_body'])) {
			$data['payment_partially_widget_body'] = $this->request->post['payment_partially_widget_body'];
		} else {
			$data['payment_partially_widget_body'] = $this->config->get('payment_partially_widget_body');
		}

    if (isset($this->request->post['payment_partially_widget_trigger_text'])) {
			$data['payment_partially_widget_trigger_text'] = $this->request->post['payment_partially_widget_trigger_text'];
		} else {
			$data['payment_partially_widget_trigger_text'] = $this->config->get('payment_partially_widget_trigger_text');
		}

    if (isset($this->request->post['payment_partially_widget_popup_details'])) {
			$data['payment_partially_widget_popup_details'] = $this->request->post['payment_partially_widget_popup_details'];
		} else {
			$data['payment_partially_widget_popup_details'] = $this->config->get('payment_partially_widget_popup_details');
		}

    if (isset($this->request->post['payment_partially_widget_checkout_enabled'])) {
			$data['payment_partially_widget_checkout_enabled'] = $this->request->post['payment_partially_widget_checkout_enabled'];
		} else {
			$data['payment_partially_widget_checkout_enabled'] = $this->config->get('payment_partially_widget_checkout_enabled');
		}

    if (isset($this->request->post['payment_partially_widget_checkout_text'])) {
			$data['payment_partially_widget_checkout_text'] = $this->request->post['payment_partially_widget_checkout_text'];
		} else {
			$data['payment_partially_widget_checkout_text'] = $this->config->get('payment_partially_widget_checkout_text');
		}

    // try to pull offers
    $this->load->model('extension/payment/partially');
		$data['offers'] = $this->model_extension_payment_partially->getOffers($data['payment_partially_api_key']);

    // order status options
    $this->load->model('localisation/order_status');
		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

    // urls
		$data['action'] = $this->url->link('extension/payment/partially', $token_field . '=' . $token, true);
		$data['cancel'] = $this->url->link('marketplace/extension', $token_field . '=' . $token . '&type=payment', true);

    // template
    $data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

    $this->response->setOutput($this->load->view('extension/payment/partially', $data));
  }

  public function install() {
    // widget default values
    $defaults = array(
      'payment_partially_widget_style' => 'stacked',
      'payment_partially_widget_title' => 'Flexible Payments',
      'payment_partially_widget_trigger_text' => 'learn more',
      'payment_partially_widget_checkout_text' => 'Purchase with Partial.ly'
    );
    $this->load->model('setting/setting');
    $this->model_setting_setting->editSetting('payment_partially', $defaults);
	}

  private function validate() {
		if (!$this->user->hasPermission('modify', 'extension/payment/partially')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

    // no real validation for now

		return !$this->error;
	}
}
