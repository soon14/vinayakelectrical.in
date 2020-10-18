<?php
/**
 * @copyright 2018 Kartpay.com.
 * @author Panos <panos@kartpay.com>
 * Date: 24/7/2018
 * Time: 11:43 πμ
 */

class ControllerExtensionPaymentKartPay extends Controller {
    public function index() {
        $this->load->language('extension/payment/kartpay');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('payment_kartpay', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true));
        }

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_merchant_id'] = $this->language->get('entry_merchant_id');
        $data['entry_access_code'] = $this->language->get('entry_access_code');
        $data['entry_working_key'] = $this->language->get('entry_working_key');
        $data['entry_livemode'] = $this->language->get('entry_livemode');
        $data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');
        $data['entry_total'] = $this->language->get('entry_total');

        $data['help_total'] = $this->language->get('help_total');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard','user_token=' . $this->session->data['user_token'], true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('extension/extension','user_token=' . $this->session->data['user_token'] . '&type=payment', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/payment/kartpay','user_token=' . $this->session->data['user_token'], true)
        );


        $data['action'] = $this->url->link('extension/payment/kartpay', 'user_token=' . $this->session->data['user_token'], true);

        $data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true);

        if (isset($this->request->post['payment_kartpay_order_status_id'])) {
            $data['payment_kartpay_order_status_id'] = $this->request->post['payment_kartpay_order_status_id'];
        } else {
            $data['payment_kartpay_order_status_id'] = $this->config->get('payment_kartpay_order_status_id');
        }

        $this->load->model('localisation/order_status');

        $data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

        if (isset($this->request->post['payment_kartpay_geo_zone_id'])) {
            $data['payment_kartpay_geo_zone_id'] = $this->request->post['payment_kartpay_geo_zone_id'];
        } else {
            $data['payment_kartpay_geo_zone_id'] = $this->config->get('payment_kartpay_geo_zone_id');
        }

        $this->load->model('localisation/geo_zone');

        $data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();


        if (isset($this->request->post['payment_kartpay_status'])) {
            $data['payment_kartpay_status'] = $this->request->post['payment_kartpay_status'];
        } else {
            $data['payment_kartpay_status'] = $this->config->get('payment_kartpay_status');
        }

        if (isset($this->request->post['payment_kartpay_total'])) {
            $data['payment_kartpay_total'] = $this->request->post['payment_kartpay_total'];
        } else {
            $data['payment_kartpay_total'] = $this->config->get('payment_kartpay_total');
        }

        if (isset($this->request->post['payment_kartpay_merchant_id'])) {
            $data['payment_kartpay_merchant_id'] = $this->request->post['payment_kartpay_merchant_id'];
        } else {
            $data['payment_kartpay_merchant_id'] = $this->config->get('payment_kartpay_merchant_id');
        }

        if (isset($this->request->post['payment_kartpay_access_key'])) {
            $data['payment_kartpay_access_key'] = $this->request->post['payment_kartpay_access_key'];
        } else {
            $data['payment_kartpay_access_key'] = $this->config->get('payment_kartpay_access_key');
        }

        if (isset($this->request->post['payment_kartpay_livemode'])) {
            $data['payment_kartpay_livemode'] = $this->request->post['payment_kartpay_livemode'];
        } else {
            $data['payment_kartpay_livemode'] = $this->config->get('payment_kartpay_livemode');
        }

        if (isset($this->request->post['payment_kartpay_order_prefix'])) {
            $data['payment_kartpay_order_prefix'] = $this->request->post['payment_kartpay_order_prefix'];
        } else {
            $data['payment_kartpay_order_prefix'] = $this->config->get('payment_kartpay_order_prefix');
        }

        if (isset($this->request->post['payment_kartpay_sort_order'])) {
            $data['payment_kartpay_sort_order'] = $this->request->post['payment_kartpay_sort_order'];
        } else {
            $data['payment_kartpay_sort_order'] = $this->config->get('payment_kartpay_sort_order');
        }

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/payment/kartpay', $data));
    }

    protected function validate() {
        if (!$this->user->hasPermission('modify', 'extension/payment/kartpay')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        return !$this->error;
    }
}