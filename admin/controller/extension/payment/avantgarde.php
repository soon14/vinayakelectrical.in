<?php
class ControllerExtensionPaymentAvantgarde extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/payment/avantgarde');
		$this->load->model('setting/setting');
		$this->document->setTitle($this->language->get('heading_title'));
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			#var_dump($this->request->post);die;
			$this->model_setting_setting->editSetting('payment_avantgarde', $this->request->post);
			$this->session->data['success'] = $this->language->get('text_success');
			$this->cache->delete('avantgarde');
			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token']. '&type=payment', true));
			//$this->response->redirect($this->url->link('extension/payment',  'user_token=' . $this->session->data['user_token'], true));
		    //$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['user_token'], 'SSL'));
		}
		$settings= $this->model_setting_setting->getSetting('payment_avantgarde');
		$data['payment_avantgarde_merchant_id'] = 
					isset($settings["payment_avantgarde_merchant_id"])?$settings["payment_avantgarde_merchant_id"]:'';
		$data['payment_avantgarde_merchant_key'] = 
					isset($settings["payment_avantgarde_merchant_key"])?$settings["payment_avantgarde_merchant_key"]:'';
		$data['payment_avantgarde_aggregator_id'] = 
					isset($settings["payment_avantgarde_aggregator_id"])?$settings["payment_avantgarde_aggregator_id"]:'';
		$data['payment_avantgarde_domain_url'] = 
					isset($settings["payment_avantgarde_domain_url"])?$settings["payment_avantgarde_domain_url"]:'';
		$data['payment_avantgarde_transaction_method'] = 
					isset($settings["payment_avantgarde_transaction_method"])?$settings["payment_avantgarde_transaction_method"]:'';
		$data['payment_avantgarde_status'] = 
					isset($settings["payment_avantgarde_status"])?$settings["payment_avantgarde_status"]:'';
				
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_module'] = $this->language->get('text_module');
		$data['heading_title'] = $this->language->get('heading_title');
		$data['merchant_key_title'] = $this->language->get('merchant_key_title');
		$data['merchant_id_title'] = $this->language->get('merchant_id_title');
		
		$data['aggregator_id_title'] = $this->language->get('aggregator_id_title');
		
		$data['domain_url_title'] = $this->language->get('domain_url_title');
		
		$data['transaction_method_title'] = $this->language->get('transaction_method_title');
		$data['transaction_method_sale_title'] = $this->language->get('transaction_method_sale_title');
		$data['transaction_method_auth_title'] = $this->language->get('transaction_method_auth_title');
		
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		/* Loading up some URLS. */
		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true);
		$data['form_action'] = $this->url->link('extension/payment/avantgarde', 'user_token=' . $this->session->data['user_token'], true);
		
		/* Present error messages to users. */
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
					
					
		if (isset($this->request->post['avantgardepayment_merchant_id']))
			$data['avantgardepayment_merchant_id'] = $this->request->post['avantgardepayment_merchant_id'];
		
		if (isset($this->request->post['avantgardepayment_merchant_key']))
			$data['avantgardepayment_merchant_key'] = $this->request->post['avantgardepayment_merchant_key'];
		
		if (isset($this->request->post['avantgardepayment_aggregator_id']))
			$data['avantgardepayment_aggregator_id'] = $this->request->post['avantgardepayment_aggregator_id'];
		
		if (isset($this->request->post['avantgardepayment_domain_url']))
			$data['avantgardepayment_domain_url'] = $this->request->post['avantgardepayment_domain_url'];
		
		if (isset($this->request->post['avantgardepayment_transaction_method']))
			$data['avantgardepayment_transaction_method'] = $this->request->post['avantgardepayment_transaction_method'];
		
		if (isset($this->request->post['payment_avantgardepayment_status']))
			$data['payment_avantgardepayment_status'] = $this->request->post['payment_avantgardepayment_status'];
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard')
		);
	 	
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('Payment'),
			'href' => $this->url->link('extension/payment')
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/avantgarde')
		);
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');		
		$this->response->setOutput($this->load->view('extension/payment/avantgarde', $data));
	}
	private function validate() {
		
		
		
		if (strlen($this->request->post['payment_avantgarde_merchant_id']) <= 3) 
			$this->error['warning'] = $this->language->get('error_merchant_id');
		
		if (strlen($this->request->post['payment_avantgarde_merchant_key']) <= 3) 
			$this->error['warning'] = $this->language->get('error_merchant_key_error');
		
		if (strlen($this->request->post['payment_avantgarde_aggregator_id']) <= 1) 
			$this->error['warning'] = $this->language->get('error_avantgarde_aggregator_id');
		
		

		if ($this->error) {
			return false;
		} else {
			return true;
		}
	}
	public function install() {  
        $this->load->model('user/user_group');
        $this->model_user_user_group->addPermission($this->user->getId(), 'access', 'avantgarde');
        $this->model_user_user_group->addPermission($this->user->getId(), 'modify', 'avantgarde');
    }
}
?>