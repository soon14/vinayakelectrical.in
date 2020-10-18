<?php
/**
 * @copyright 2018 Kartpay.com.
 * @author Panos <panos@kartpay.com>
 * Date: 24/7/2018
 * Time: 12:04 μμ
 */

class ControllerExtensionPaymentKartPay extends Controller {

    public function index() {
        $data = [];
        $data['button_confirm'] = $this->language->get('button_confirm');

        $data['text_loading'] = $this->language->get('text_loading');
        $this->load->model("extension/payment/kartpay");
        $this->load->model('checkout/order');
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
        $data['posted'] = $this->model_extension_payment_kartpay->proceed($order_info);
        $data['continue'] ='https://test.kartpay.me/api/v1/payments';
        if($this->config->get('payment_kartpay_livemode')){
            $data['continue'] = 'https://live.kartpay.com/api/v1/payments';
        }

        return $this->load->view('extension/payment/kartpay', $data);
    }

    public function response() {
        $paramList = $this->request->request;            //This is the response sent by the CCAvenue Server
        $response = $paramList['result'];
        $order_id = isset($paramList['order_id']) ? $paramList['order_id'] : 0;
        $order_amount = isset($paramList['order_amount']) ? $paramList['order_amount'] : 0;
        $status = isset($paramList['status']) ? strtolower($paramList['status']) : 'failed';
        $statusMessage = isset($paramList['status_message']) ? $paramList['status_message'] : 'System error';

        $this->load->model('checkout/order');
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        if($order_info['order_id']==$order_id) {

            if($response=='success' && $status=='success') {
                $this->load->model('checkout/order');
                $this->model_checkout_order->addOrderHistory(
                    $this->session->data['order_id'],
                    $this->config->get('payment_kartpay_order_status_id')
                );
                $this->response->redirect($this->url->link('checkout/success'));
            }
            elseif($response=='success' && $status!='success') {
                $this->session->data['error'] = $statusMessage;
                $this->response->redirect($this->url->link('checkout/checkout', '', true));
            }
            elseif($response=='canceled') {
                $this->session->data['error'] = "Sorry Transaction Canceled Please try again";
                $this->response->redirect($this->url->link('checkout/checkout', '', true));
            }
        }

    }

}