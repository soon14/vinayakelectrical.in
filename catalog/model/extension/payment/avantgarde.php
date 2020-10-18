<?php
class ModelExtensionPaymentavantgarde extends Model {
	public function getMethod($address, $total) {
		return array(
				'code'       => 'avantgarde',
				'title'      => "AvantGarde Payments",
				'terms'      => '',
				'sort_order' => $this->config->get('free_checkout_sort_order')
			);

	}
}
?>