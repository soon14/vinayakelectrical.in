<?php
/*
Plugin Name: fonePaisa Payment Gateway
Plugin URI: https://www.fonepaisa.com/
Description: Accept all cards, wallets, bank accounts and upi.
Version: 1.0.0
Author: Mojo Jojo
Author Email : sumit.chakraborty961@gmail.com
Author URI: http://www.fonepaisa.com/
 */
 
class ControllerExtensionPaymentfonePaisa extends Controller {
  	private $error = array();
	//function executed at load of page
	public function index() {
		require_once(DIR_SYSTEM . 'encdec_fonePaisa.php');
		require_once(DIR_SYSTEM . 'fonePaisa_constants.php');
        
		$this->language->load('extension/payment/fonePaisa');

		$this->document->setTitle($this->language->get('heading_title'));
        
        // Parse the data in post request and encrypt the key
        $arr = array();	
		foreach($this->request->post as $key => $value)
		{
			if($key == 'payment_fonePaisa_key')
			{
				 $arr[$key] = encrypt_e($value, $const1);
				continue;
			}
			$arr[$key] = $value;
		}
   		$this->load->model('setting/setting');
        
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('payment_fonePaisa', $arr);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true));
		}
        
        $data['heading_title'] = $this->language->get('heading_title');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_all_zones'] = $this->language->get('text_all_zones');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_live'] = $this->language->get('text_live');
		$data['text_successful'] = $this->language->get('text_successful');
		$data['text_fail'] = $this->language->get('text_fail');
		$data['text_env_production'] = $this->language->get('text_env_production');
		$data['text_env_test'] = $this->language->get('text_env_test');

        $data['entry_id'] = $this->language->get('entry_id');
		$data['entry_id_help'] = $this->language->get('entry_id_help');
		$data['entry_merchant'] = $this->language->get('entry_merchant');
		$data['entry_merchant_help'] = $this->language->get('entry_merchant_help');
		$data['entry_merchant_display'] = $this->language->get('entry_merchant_display');
		$data['entry_merchant_display_help'] = $this->language->get('entry_merchant_display_help');
		$data['entry_merchantapi'] = $this->language->get('entry_merchantapi');
		$data['entry_merchantapi_help'] = $this->language->get('entry_merchantapi_help');
		$data['entry_merchantpubkey'] = $this->language->get('entry_merchantpubkey');
		$data['entry_merchantpubkey_help'] = $this->language->get('entry_merchantpubkey_help');
		$data['entry_merchantkey'] = $this->language->get('entry_merchantkey');
		$data['entry_merchantkey_help'] = $this->language->get('entry_merchantkey_help');
		$data['entry_environment'] = $this->language->get('entry_environment');
		$data['entry_environment_help'] = $this->language->get('entry_environment_help');
		$data['entry_status'] = $this->language->get('entry_status');
        $data['entry_order_status'] = $this->language->get('entry_order_status');
        $data['entry_order_status_help'] = $this->language->get('entry_order_status_help');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
        
        if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
        
        if (isset($this->error['id'])) {
			$data['error_id'] = $this->error['id'];
		} else {
			$data['error_id'] = '';
		}
		if (isset($this->error['merchant'])) {
			$data['error_merchant'] = $this->error['merchant'];
		} else {
			$data['error_merchant'] = '';
		}
		if (isset($this->error['merchant_display'])) {
			$data['error_merchant_display'] = $this->error['merchant_display'];
		} else {
			$data['error_merchant_display'] = '';
		}
		if (isset($this->error['api'])) {
			$data['error_api'] = $this->error['api'];
		} else {
			$data['error_api'] = '';
		}
		if (isset($this->error['key'])) {
			$data['error_key'] = $this->error['key'];
		} else {
			$data['error_key'] = '';
		}
		if (isset($this->error['pub_key'])) {
			$data['error_pub_key'] = $this->error['pub_key'];
		} else {
			$data['error_pub_key'] = '';
		}
		if (isset($this->request->post['payment_fonePaisa_order_status_id'])) {
			$data['payment_fonePaisa_order_status_id'] = $this->request->post['payment_fonePaisa_order_status_id'];
		} else {
			$data['payment_fonePaisa_order_status_id'] = $this->config->get('payment_fonePaisa_order_status_id');
		}

        $this->load->model('localisation/order_status');
		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

        $data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_extension'),
			'href'      => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'], true),
      		'separator' => ' :: '
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/payment/fonePaisa', 'user_token=' . $this->session->data['user_token'], true),
      		'separator' => ' :: '
   		);
        
        $data['action'] = $this->url->link('extension/payment/fonePaisa', 'user_token=' . $this->session->data['user_token'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true);
        
        if (isset($this->request->post['payment_fonePaisa_id'])) {
			$data['payment_fonePaisa_id'] = $this->request->post['payment_fonePaisa_id'];
		} else {
			$data['payment_fonePaisa_id'] = $this->config->get('payment_fonePaisa_id');
		}
        if (isset($this->request->post['payment_fonePaisa_merchant'])) {
			$data['payment_fonePaisa_merchant'] = $this->request->post['payment_fonePaisa_merchant'];
		} else {
			$data['payment_fonePaisa_merchant'] = $this->config->get('payment_fonePaisa_merchant');
		}
        if (isset($this->request->post['payment_fonePaisa_merchant_display'])) {
			$data['payment_fonePaisa_merchant_display'] = $this->request->post['payment_fonePaisa_merchant_display'];
		} else {
			$data['payment_fonePaisa_merchant_display'] = $this->config->get('payment_fonePaisa_merchant_display');
		}
        if (isset($this->request->post['payment_fonePaisa_key'])) {
			$data['payment_fonePaisa_key'] = $this->request->post['payment_fonePaisa_key'];
		}else {
			$data['payment_fonePaisa_key'] = "";
			if ($this->config->get('payment_fonePaisa_key') != "") {
				$data['payment_fonePaisa_key'] = htmlspecialchars_decode(decrypt_e($this->config->get('payment_fonePaisa_key'),$const1),ENT_NOQUOTES);
			}
		}
        if (isset($this->request->post['payment_fonePaisa_pub_key'])) {
			$data['payment_fonePaisa_pub_key'] = $this->request->post['payment_fonePaisa_pub_key'];
		}else {
			$data['payment_fonePaisa_pub_key'] = "";
			if ($this->config->get('payment_fonePaisa_pub_key') != "") {
				$data['payment_fonePaisa_pub_key'] = $this->config->get('payment_fonePaisa_pub_key');//htmlspecialchars_decode(decrypt_e($this->config->get('payment_fonePaisa_pub_key'),$const1),ENT_NOQUOTES);
			}
		}
        if (isset($this->request->post['payment_fonePaisa_api'])) {
			$data['payment_fonePaisa_api'] = $this->request->post['payment_fonePaisa_api'];
		}else {
			$data['payment_fonePaisa_api'] = $this->config->get('payment_fonePaisa_api');
		}
        
        if (isset($this->request->post['payment_fonePaisa_status'])) {
			$data['payment_fonePaisa_status'] = $this->request->post['payment_fonePaisa_status'];
		}else{
            $data['payment_fonePaisa_status'] = $this->config->get('payment_fonePaisa_status');
        }
        if (isset($this->request->post['payment_fonePaisa_environment'])) {
			$data['payment_fonePaisa_environment'] = $this->request->post['payment_fonePaisa_environment'];
		}else{
            $data['payment_fonePaisa_environment'] = $this->config->get('payment_fonePaisa_environment');
        }
        if (isset($this->request->post['payment_fonePaisa_sort_order'])) {
			$data['payment_fonePaisa_sort_order'] = $this->request->post['payment_fonePaisa_sort_order'];
		}else{
            $data['payment_fonePaisa_sort_order'] = $this->config->get('payment_fonePaisa_sort_order');
        }
        
        /*$this->template = 'extension/payment/fonePaisa.twig';
		$this->children = array(
			'common/header',
			'common/footer'
		);*/
        $data['header'] = $this->load->controller('common/header');
	    $data['footer'] = $this->load->controller('common/footer');
        $data['column_left'] = $this->load->controller('common/column_left');
        $this->response->setOutput($this->load->view('extension/payment/fonePaisa', $data));

    }
    //validate function to ensure required fields are filled before proceeding
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/payment/fonePaisa')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
        if (!$this->request->post['payment_fonePaisa_id']) {
			$this->error['id'] = $this->language->get('error_id');
		}
		if (!$this->request->post['payment_fonePaisa_merchant']) {
			$this->error['merchant'] = $this->language->get('error_merchant');
		}
		if (!$this->request->post['payment_fonePaisa_merchant_display']) {
			$this->error['merchant_display'] = $this->language->get('error_merchant_display');
		}
		if (!$this->request->post['payment_fonePaisa_key']) {
			$this->error['key'] = $this->language->get('error_key');
		}
		if (!$this->request->post['payment_fonePaisa_pub_key']) {
			$this->error['pub_key'] = $this->language->get('error_pub_key');
		}
		if (!$this->request->post['payment_fonePaisa_api']) {
			$this->error['api'] = $this->language->get('error_api');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
?>