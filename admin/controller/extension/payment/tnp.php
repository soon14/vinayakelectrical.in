<?php
class Controllerextensionpaymenttnp extends Controller {
    private $error = array();

    public function index() {
        $this->language->load('extension/payment/tnp');
        $this->document->setTitle('TraknPay Payment Method Configuration');
        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST' && $this->validate())) {
            $this->model_setting_setting->editSetting('payment_tnp', $this->request->post);
            $this->session->data['success'] = 'Saved.';
            $this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true));

        }

        $data['heading_title'] = $this->language->get('heading_title');
        $data['button_save'] = $this->language->get('text_button_save');
        $data['button_cancel'] = $this->language->get('text_button_cancel');
        $data['entry_order_status'] = $this->language->get('entry_order_status');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_edit'] = $this->language->get('text_edit');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');
        $data['tnp_entry_mode']=$this->language->get('tnp_entry_mode');
        $data['text_mode_live']=$this->language->get('text_mode_live');
        $data['text_mode_test']=$this->language->get('text_mode_test');


        $data['action'] = $this->url->link('extension/payment/tnp', 'user_token=' . $this->session->data['user_token'], true);
        $data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true);

        if (isset($this->request->post['payment_tnp_checkout_label'])) {
            $data['payment_tnp_checkout_label'] = $this->request->post['payment_tnp_checkout_label'];
        } else {
            $data['payment_tnp_checkout_label'] = $this->config->get('payment_tnp_checkout_label');
        }

        if (isset($this->request->post['payment_tnp_api_key'])) {
            $data['payment_tnp_api_key'] = $this->request->post['payment_tnp_api_key'];
        } else {
            $data['payment_tnp_api_key'] = $this->config->get('payment_tnp_api_key');
        }
        if (isset($this->request->post['payment_tnp_private_salt'])) {
            $data['payment_tnp_private_salt'] = $this->request->post['payment_tnp_private_salt'];
        } else {
            $data['payment_tnp_private_salt'] = $this->config->get('payment_tnp_private_salt');
        }
        if (isset($this->error['error_api_key'])) {
            $data['error_api_key'] = $this->error['error_api_key'];
        } else {
            $data['error_api_key'] = '';
        }

        if (isset($this->error['error_private_salt'])) {
            $data['error_private_salt'] = $this->error['error_private_salt'];
        } else {
            $data['error_private_salt'] = '';
        }

        if (isset($this->request->post['payment_tnp_status'])) {
            $data['payment_tnp_status'] = $this->request->post['payment_tnp_status'];
        } else {
            $data['payment_tnp_status'] = $this->config->get('payment_tnp_status');
        }

        if (isset($this->request->post['payment_tnp_order_status_id'])) {
            $data['payment_tnp_order_status_id'] = $this->request->post['payment_tnp_order_status_id'];
        } else {
            $data['payment_tnp_order_status_id'] = $this->config->get('payment_tnp_order_status_id');
        }

        if (isset($this->request->post['payment_tnp_sort_order'])) {
            $data['payment_tnp_sort_order'] = $this->request->post['payment_tnp_sort_order'];
        } else {
            $data['payment_tnp_sort_order'] = $this->config->get('payment_tnp_sort_order');
        }

        if (isset($this->request->post['payment_tnp_mode'])) {
            $data['payment_tnp_mode'] = $this->request->post['payment_tnp_mode'];
        } else {
            $data['payment_tnp_mode'] = $this->config->get('payment_tnp_mode');
        }
        $this->load->model('localisation/order_status');
        $data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_payment'),
            'href' => $this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/payment/tnp', 'user_token=' . $this->session->data['user_token'], 'SSL')
        );

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/payment/tnp', $data));
    }

    protected function validate() {

        if (!$this->request->post['payment_tnp_api_key']) {
            $this->error['error_api_key'] = $this->language->get('error_api_key');
        }
        if (!$this->request->post['payment_tnp_private_salt']) {
            $this->error['error_private_salt'] = $this->language->get('error_private_salt');
        }
        return !$this->error;
    }
}