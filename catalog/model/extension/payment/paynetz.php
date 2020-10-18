<?php
class ModelExtensionPaymentPaynetz extends Model {
  public function getMethod($address, $total) {
    $this->load->language('payment/paynetz');
    $this->load->model('setting/setting');

    $checkout_label = $this->config->get('payment_paynetz_checkout_label'); 
    $method_data = array(
      'code'     => 'paynetz',
      'title'    =>  !empty($checkout_label) ? $checkout_label : $this->language->get('text_title'),
      'terms'      => '',
      'sort_order' => $this->config->get('paynetz_sort_order')
    );
  
    return $method_data;
  }
}