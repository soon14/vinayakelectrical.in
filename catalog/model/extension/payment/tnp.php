<?php
class ModelExtensionPaymentTnp extends Model {
  public function getMethod($address, $total) {
    $this->load->language('extension/payment/tnp');
    $this->load->model('setting/setting');

    $checkout_label = $this->config->get('payment_tnp_checkout_label');

    $method_data = array(
      'code'     => 'tnp',
      'title'    =>  !empty($checkout_label) ? $checkout_label : 'Credit Card / Debit Card / Net Banking',
      'terms'      => '',
      'sort_order' => $this->config->get('custom_sort_order')
    );
  
    return $method_data;
  }
}