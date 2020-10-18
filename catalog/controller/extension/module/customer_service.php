<?php
class ControllerExtensionModuleCustomerService extends Controller {
	public function index() {
		$this->load->language('extension/module/customer_service');
		
		$data['text_contact'] = $this->language->get('text_contact');
    	$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_returns'] = $this->language->get('text_returns');
		
		$data['contact'] = $this->url->link('information/contact');
    	$data['sitemap'] = $this->url->link('information/sitemap');
		$data['return'] = $this->url->link('account/return/insert');

		return $this->load->view('extension/module/customer_service', $data);
	}
}