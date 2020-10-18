<?php
class ControllerExtensionPaymentPaynetz extends Controller {
    private $error = array();

    public function index() {
        
        $this->language->load('extension/payment/paynetz');
        
        $this->document->setTitle('Atom Paynetz Payment Method Configuration');
        
        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {       
            $this->model_setting_setting->editSetting('payment_paynetz', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true));
        }


        if($this->error)
        {
            $data['error_warning'] = implode("<br/>",$this->error);	
        }else{
            $data['error_warning'] = ""; 
        }

        $data['heading_title'] = $this->language->get('heading_title');
        
        $data['entry_text_paynetz_checkout_label'] = $this->language->get('paynetz_checkout_label');

        $data['paynetz_login_id'] = $this->language->get('paynetz_login_id');
        $data['paynetz_password'] = $this->language->get('paynetz_password');
        $data['paynetz_req_hashkey'] = $this->language->get('paynetz_req_hashkey');
        $data['paynetz_res_hashkey'] = $this->language->get('paynetz_res_hashkey');
        $data['paynetz_req_enckey'] = $this->language->get('paynetz_req_enckey');
        $data['paynetz_res_enckey'] = $this->language->get('paynetz_res_enckey');
        $data['paynetz_salt'] = $this->language->get('paynetz_salt');
        $data['paynetz_client_code'] = $this->language->get('paynetz_client_code');
        $data['paynetz_productid'] = $this->language->get('paynetz_productid');
        $data['paynetz_proxy_unamepass'] = $this->language->get('paynetz_proxy_unamepass');
        $data['paynetz_proxy_hostport'] = $this->language->get('paynetz_proxy_hostport');
        $data['paynetz_isproxy'] = $this->language->get('paynetz_isproxy');
        $data['paynetz_isproxy_yes'] = $this->language->get('paynetz_isproxy_yes');
        $data['paynetz_isproxy_no'] = $this->language->get('paynetz_isproxy_no');
        $data['paynetz_url'] = $this->language->get('paynetz_url');
        
        
        $data['button_save'] = $this->language->get('text_button_save');
        $data['button_cancel'] = $this->language->get('text_button_cancel');
        $data['entry_order_status'] = $this->language->get('entry_order_status');

        $data['entry_test_mode'] = $this->language->get('entry_test_mode');
        $data['entry_test_mode_on'] = $this->language->get('entry_test_mode_on');
        $data['entry_test_mode_off'] = $this->language->get('entry_test_mode_off');

        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_edit'] = $this->language->get('text_edit');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');


        $data['action'] = $this->url->link('extension/payment/paynetz', 'user_token=' . $this->session->data['user_token'], 'SSL');
        $data['cancel'] = $this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token'], 'SSL');

        if (isset($this->request->post['payment_paynetz_checkout_label'])) {
            $data['payment_paynetz_checkout_label'] = $this->request->post['payment_paynetz_checkout_label'];
        } else {
            $data['payment_paynetz_checkout_label'] = 'Pay with Credit/Debit Card and Net Banking';
        }


        if (isset($this->request->post['payment_paynetz_login_id'])) {
            $data['payment_paynetz_login_id'] = $this->request->post['payment_paynetz_login_id'];
        } else {
            $data['payment_paynetz_login_id'] = $this->config->get('payment_paynetz_login_id');
        }

        if (isset($this->request->post['payment_paynetz_password'])) {
            $data['payment_paynetz_password'] = $this->request->post['payment_paynetz_password'];
        } else {
            $data['payment_paynetz_password'] = $this->config->get('payment_paynetz_password');
        }
        
        if (isset($this->request->post['payment_paynetz_req_hashkey'])) {
            $data['payment_paynetz_req_hashkey'] = $this->request->post['payment_paynetz_req_hashkey'];
        } else {
            $data['payment_paynetz_req_hashkey'] = $this->config->get('payment_paynetz_req_hashkey');
        }
        
        if (isset($this->request->post['payment_paynetz_res_hashkey'])) {
            $data['payment_paynetz_res_hashkey'] = $this->request->post['payment_paynetz_res_hashkey'];
        } else {
            $data['payment_paynetz_res_hashkey'] = $this->config->get('payment_paynetz_res_hashkey');
        }
        
        if (isset($this->request->post['payment_paynetz_req_enckey'])) {
            $data['payment_paynetz_req_enckey'] = $this->request->post['payment_paynetz_req_enckey'];
        } else {
            $data['payment_paynetz_req_enckey'] = $this->config->get('payment_paynetz_req_enckey');
        }
        
        if (isset($this->request->post['payment_paynetz_res_enckey'])) {
            $data['payment_paynetz_res_enckey'] = $this->request->post['payment_paynetz_res_enckey'];
        } else {
            $data['payment_paynetz_res_enckey'] = $this->config->get('payment_paynetz_res_enckey');
        }
        
        if (isset($this->request->post['payment_paynetz_salt'])) {
            $data['payment_paynetz_salt'] = $this->request->post['payment_paynetz_salt'];
        } else {
            $data['payment_paynetz_salt'] = $this->config->get('payment_paynetz_salt');
        }

        if (isset($this->request->post['payment_paynetz_client_code'])) {
            $data['payment_paynetz_client_code'] = $this->request->post['payment_paynetz_client_code'];
        } else {
            $data['payment_paynetz_client_code'] = $this->config->get('payment_paynetz_client_code');
        }
        
        if (isset($this->request->post['payment_paynetz_productid'])) {
            $data['payment_paynetz_productid'] = $this->request->post['payment_paynetz_productid'];
        } else {
            $data['payment_paynetz_productid'] = $this->config->get('payment_paynetz_productid');
        }
         if (isset($this->request->post['payment_paynetz_isproxy'])) {
            $data['payment_paynetz_isproxy'] = $this->request->post['payment_paynetz_isproxy'];
        } else {
            $data['payment_paynetz_isproxy'] = 0;
        }
        if (isset($this->request->post['payment_paynetz_proxy_unamepass'])) {
            $data['payment_paynetz_proxy_unamepass'] = $this->request->post['payment_paynetz_proxy_unamepass'];
        } else {
            $data['payment_paynetz_proxy_unamepass'] = $this->config->get('payment_paynetz_proxy_unamepass');
        }
        
        if (isset($this->request->post['payment_paynetz_proxy_hostport'])) {
            $data['payment_paynetz_proxy_hostport'] = $this->request->post['payment_paynetz_proxy_hostport'];
        } else {
            $data['payment_paynetz_proxy_hostport'] = $this->config->get('payment_paynetz_proxy_hostport');
        }
        

       

        
        if (isset($this->request->post['payment_paynetz_testmode'])) {
            $data['payment_paynetz_testmode'] = $this->request->post['payment_paynetz_testmode'];
        } else {
            $data['payment_paynetz_testmode'] = '0';
        }  
        
        if (isset($this->request->post['payment_paynetz_url'])) {
            $data['payment_paynetz_url'] = $this->request->post['payment_paynetz_url'];
        } else {
            $data['payment_paynetz_url'] = $this->config->get('payment_paynetz_url');;
        }    
        

        if (isset($this->request->post['payment_paynetz_status'])) {
            $data['payment_paynetz_status'] = $this->request->post['payment_paynetz_status'];
        } else {
            $data['payment_paynetz_status'] = $this->config->get('payment_paynetz_status');
        }

        if (isset($this->request->post['payment_paynetz_order_status_id'])) {
            $data['payment_paynetz_order_status_id'] = $this->request->post['payment_paynetz_order_status_id'];
        } else {
            $data['payment_paynetz_order_status_id'] = $this->config->get('payment_paynetz_order_status_id');
        }

        if (isset($this->request->post['payment_paynetz_sort_order'])) {
            $data['payment_paynetz_sort_order'] = $this->request->post['payment_paynetz_sort_order'];
        } else {
            $data['payment_paynetz_sort_order'] = $this->config->get('payment_paynetz_sort_order');
        }

        $this->load->model('localisation/order_status');
        $data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/payment/paynetz', 'user_token=' . $this->session->data['user_token'], 'SSL')
        );


        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');   
        $this->response->setOutput($this->load->view('extension/payment/paynetz', $data));
    }

    private function validate() {      
        if (!$this->user->hasPermission('modify', 'extension/payment/paynetz')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!$this->request->post['payment_paynetz_checkout_label']) {
            $this->error['payment_paynetz_checkout_label'] = $this->language->get('error_checkout_label');
        }
        if (!$this->request->post['payment_paynetz_login_id']) {
            $this->error['payment_paynetz_login_id'] = $this->language->get('error_paynetz_login_id');
        }
        
        if (!$this->request->post['payment_paynetz_password']) {
            $this->error['payment_paynetz_password'] = $this->language->get('error_paynetz_password');
        }
        
        if (!$this->request->post['payment_paynetz_req_hashkey']) {
            $this->error['payment_paynetz_req_hashkey'] = $this->language->get('error_paynetz_req_hashkey');
        }
        
        if (!$this->request->post['payment_paynetz_res_hashkey']) {
            $this->error['payment_paynetz_res_hashkey'] = $this->language->get('error_paynetz_res_hashkey');
        }
        
        if (!$this->request->post['payment_paynetz_req_enckey']) {
            $this->error['payment_paynetz_req_enckey'] = $this->language->get('error_paynetz_req_enckey');
        }
        
        if (!$this->request->post['payment_paynetz_res_enckey']) {
            $this->error['payment_paynetz_res_enckey'] = $this->language->get('error_paynetz_res_enckey');
        }
        
        if (!$this->request->post['payment_paynetz_salt']) {
            $this->error['payment_paynetz_salt'] = $this->language->get('error_paynetz_salt');
        }
        
        if (!$this->request->post['payment_paynetz_client_code']) {
            $this->error['payment_paynetz_client_code'] = $this->language->get('error_paynetz_client_code');
        }
        
        if (!$this->request->post['payment_paynetz_productid']) {
            $this->error['payment_paynetz_productid'] = $this->language->get('error_paynetz_productid');
        }
        
        if (!$this->request->post['payment_paynetz_url']) {
            $this->error['payment_paynetz_url'] = $this->language->get('error_paynetz_url');
        }

        if (!$this->error) { 
            return true;
        } else {                   
            return false;
        }
    }


}