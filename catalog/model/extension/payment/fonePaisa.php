<?php
class ModelExtensionPaymentfonePaisa extends Model{
    public function getMethod($address, $total) {
		$this->language->load('extension/payment/fonePaisa');
		$method_data = array();
      	$method_data = array( 
        	'code'       => 'fonePaisa',
        	'title'      => $this->language->get('text_title'),
			'sort_order' => $this->config->get('fonePaisa_sort_order'),
			'terms'      => ''
      	);
    	return $method_data;
  	}
}
?>