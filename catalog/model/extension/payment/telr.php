<?php 
class ModelExtensionPaymentTelr extends Model {
	public function getMethod($address, $total) {
		$this->load->language('extension/payment/telr');
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('telr_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");
		
		if ($this->config->get('telr_total') > $total) {
			$status = false;
		} elseif (!$this->config->get('telr_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}	
		
		$method_data = array();
		$title=trim($this->config->get('telr_title'));
		if (empty($title)) {
			$title=trim($this->language->get('text_title'));
			if (empty($title)) {
				$title="Credit Card / Debit Card (Telr)";
			}
		}
	
		if ($status) {
			$method_data = array( 
				'code'		=> 'telr',
				'title'		=> $title,
				'terms' => '',
				'sort_order'	=> $this->config->get('telr_sort_order')
			);
		}
		return $method_data;
	}

}
?>