<?php
/**
 * @copyright 2018 Kartpay.com.
 * @author Panos <panos@kartpay.com>
 * Date: 24/7/2018
 * Time: 12:05 μμ
 */

class ModelExtensionPaymentKartPay extends Model {

    public function getMethod($address, $total) {
        $this->load->language('extension/payment/kartpay');

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('payment_kartpay_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

        if ($this->config->get('payment_kartpay_total') > 0 && $this->config->get('payment_kartpay_total') > $total) {
            $status = false;
        } elseif (!$this->config->get('payment_kartpay_geo_zone_id')) {
            $status = true;
        } elseif ($query->num_rows) {
            $status = true;
        } else {
            $status = false;
        }

        $method_data = array();

        if ($status) {
            $method_data = array(
                'code'       => 'kartpay',
                'title'      => $this->language->get('text_title'),
                'terms'      => '',
                'sort_order' => $this->config->get('payment_kartpay_sort_order')
            );
        }

        return $method_data;
    }

    public function proceed($order_info,$app=false) {
        //---------------------
        $order_id = intval($order_info['order_id']);

        $liveMode = boolval($this->config->get('payment_kartpay_livemode'));
        $prefix = $this->config->get('payment_kartpay_order_prefix');
        $prefix = !empty($prefix) ? $prefix : 'O-';

        $kartpay_url='http://test.kartpay.me/api/v1/payments';
        if($liveMode){
            $kartpay_url='http://live.kartpay.me/api/v1/payments';
        }

        $success_url = $this->url->link('extension/payment/kartpay/response', ['id_order'=>$order_id, 'result'=>'success']);
        $cancel_url = $this->url->link('extension/payment/kartpay/response', ['id_order'=>$order_id, 'result'=>'canceled']);

        $kartpay_order_id = $order_id;
        $posted = array();
        $posted['access_key']    = $this->config->get('payment_kartpay_access_key');
        $posted['merchant_id']   = $this->config->get('payment_kartpay_merchant_id');
        $posted['order_id']      = $kartpay_order_id;
        $posted['currency']      = $order_info['currency_code'];
        $posted['order_amount']  = $this->currency->format($order_info['total'], $order_info['currency_code'], false, false);
        $posted['customer_phone']= $order_info['telephone'];
        $posted['customer_email']= $order_info['email'];
        $posted['language'] = 'EN';
        $posted['success_url'] = $success_url;
        $posted['failed_url'] = $cancel_url;
        $posted['api_option'] = 'hosted';
        //---------------------
        $hashSequence = "merchant_id|access_key|order_id|order_amount|currency|customer_email|customer_phone";
        $hashVarsSeq = explode('|', $hashSequence);
        $hash_string = '';
        foreach($hashVarsSeq as $hash_var) {
            $hash_string .= isset($posted[$hash_var]) ? $posted[$hash_var] : '';
        }
        $hash = hash('sha512', $hash_string);
        //$hash = $hash_string;
        $posted['hash']=$hash;
        return $posted;

    }

}
