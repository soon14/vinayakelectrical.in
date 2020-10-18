<?php 
class ModelExtensionPaymentPzopencart extends Model {
  	public function getMethod($address, $total) {
		$this->load->language('extension/payment/pzopencart');
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('pzopencart_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");
		
		if ($this->config->get('payment_pzopencart_total') > $total) {
			$status = false;
		} elseif (!$this->config->get('payment_pzopencart_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true; 
		} else {
			$status = false;
		}	
		
		// Determine which gateway to use!! Pz or Cs
		// $this->language->get('text_title')
		$text_title = ''; //text_title in language file not used
		
		//Check which or both of the gateways enabled...

		//if(!$this->config->get('payment_pzopencart_pz_merchant') && !$this->config->get('payment_pzopencart_pz_salt')) {
		if(!$this->config->get('payment_pzopencart_pz_merchant') ) {
			$text_title = 'CsPay';			
		}
		elseif(!$this->config->get('payment_pzopencart_cs_vturl') && !$this->config->get('payment_pzopencart_cs_access_key') && !$this->config->get('payment_pzopencart_cs_secret_key')) {
			$text_title = 'Pzopencart';
		}
		else {
			if($this->config->get('payment_pzopencart_route_cs') == 0)
			{
				$text_title = 'Pzopencart';
			}
			elseif($this->config->get('payment_pzopencart_route_pz') == 0)
			{
				$text_title = 'CsPay';	
			}
			else {
				$cper = $this->db->query("SELECT I.payment_method,I.payment_code, COUNT(*) / T.total * 100 AS percent FROM oc_order as I, (SELECT COUNT(*) AS total FROM oc_order where order_status_id > 0) AS T WHERE payment_method='CsPay' and payment_code='pzopencart' and order_status_id >= ".$this->config->get('payment_pzopencart_order_status_id'));
		
				$pper = $this->db->query("SELECT I.payment_method,I.payment_code, COUNT(*) / T.total * 100 AS percent FROM oc_order as I, (SELECT COUNT(*) AS total FROM oc_order where order_status_id > 0) AS T WHERE payment_method='Pzopencart' and payment_code='pzopencart' and order_status_id >= ".$this->config->get('payment_pzopencart_order_status_id'));			
				
				if($cper->row['percent'] > $this->config->get('payment_pzopencart_route_cs') && $pper->row['percent'] <= $this->config->get('payment_pzopencart_route_pz')) {
					$text_title = 'Pzopencart';
				}
				elseif($cper->row['percent'] <= $this->config->get('payment_pzopencart_route_cs') && $pper->row['percent'] > $this->config->get('payment_pzopencart_route_pz')) {
					$text_title = 'CsPay';
				}
				else {
					if($pper->row['percent'] >= $cper->row['percent'])
						$text_title = 'CsPay';
					else
						$text_title = 'Pzopencart';
				}
			}
		}
		
		$method_data = array();
	
		if ($status && $text_title) {  
      		$method_data = array( 
        		'code'       => 'pzopencart',
        		'title'      => $text_title,
				'terms'      => '',
				'sort_order' => $this->config->get('payment_pzopencart_sort_order')
      		);
    	}
   
    	return $method_data;
  	}
	
	
	
}
?>