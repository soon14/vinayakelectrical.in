<?php
/*
Plugin Name: fonePaisa Payment Gateway
Plugin URI: https://www.fonepaisa.com/
Description: Accept all cards, wallets, bank accounts and upi.
Version: 1.0.0
Author: Mojo Jojo
Author Email : sumit.chakraborty961@gmail.com
Author URI: http://www.fonepaisa.com/
*/

class ControllerExtensionPaymentfonePaisa extends Controller{
    public function index() {
		require_once(DIR_SYSTEM . 'encdec_fonePaisa.php');
		require_once(DIR_SYSTEM . 'fonePaisa_constants.php');
    
        $this->load->language('extension/payment/fonePaisa');
        $data['button_confirm'] = $this->language->get('button_confirm');
		$this->load->model('extension/payment/fonePaisa');
        
        $this->load->model('checkout/order');
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
        
        $data['id'] = $this->config->get('payment_fonePaisa_id');
        $data['merchant'] = $this->config->get('payment_fonePaisa_merchant');
        $data['merchant_display'] = $this->config->get('payment_fonePaisa_merchant_display');
        $data['api'] = $this->config->get('payment_fonePaisa_api');
		$data['invoice'] = $this->session->data['order_id'];
		$tmp_amount = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);
		$data['amount'] = number_format((float)$tmp_amount, 2, '.', '');
		
		$data['email']     =  '';
		$data['mobile_no'] =  '';
        
        if(isset($data['email'])){
			$data['email'] = $order_info['email'];
		}else{
            $data['email'] = "";
        }
		if(isset($data['mobile_no'])){
			$data['mobile_no']= preg_replace('#[^0-9]{0,10}#is','',$order_info['telephone']);
		}else{
            $data['mobile_no']= "";
        }
        if($this->config->get('payment_fonePaisa_environment') == "P") {
			$data['action_url'] = $FONEPAISA_PAYMENT_URL_PROD;
		} else {
			$data['action_url'] = $FONEPAISA_PAYMENT_URL_TEST;
            $data['invoice'] = 'oc_3_x_'.$data['invoice'];
		}
        
        $parameters = array(
            "id" => $data['id'],
            "merchant_id" => $data['merchant'],
            "merchant_display" => $data['merchant_display'],
            "invoice"  => $data['invoice'], 
            "invoice_amt" => $data['amount'],
            "amount" => $data['amount'],
            "mobile" => $data['mobile_no'],
            "email" => $data['email'],
            "api_key" => $data['api']
        );
        $mer = htmlspecialchars_decode(decrypt_e($this->config->get('payment_fonePaisa_key'),$const1),ENT_NOQUOTES);
		$mer = rtrim($mer);
		$data['hexsign'] = getSign($parameters, $mer);
		$data['callback_url'] = $this->url->link('extension/payment/fonePaisa/callback', '', true);
		$data['callback_failure_url'] = $this->url->link('extension/payment/fonePaisa/callback', '', true);
		
		return $this->load->view('extension/payment/fonePaisa', $data);
		
    }
    
    public function callback(){
        
		require_once(DIR_SYSTEM . 'encdec_fonePaisa.php');
		require_once(DIR_SYSTEM . 'fonePaisa_constants.php');
		$param = array();
		foreach($_POST as $key=>$value)
		{
		   	$param[$key] = $_POST[$key];
		}
		$isValidSign = false;
		$txnstatus = false;
		$mer = $this->config->get('payment_fonePaisa_pub_key');
		$mer = rtrim($mer);
		if(isset($_POST['sign']))
		{
			$return = fonepaisa_verifymsg($param, $mer);
            if($return){
                $isValidSign = true;
            }
		}
        //var_dump($isValidSign);
        $order_id = $_POST['invoice'];	
        /*if($this->config->get('payment_fonePaisa_environment') != "P"){
            $order_id = 'oc_3_x_'.$order_id;
        }*/
		$this->load->model('checkout/order');
        //var_dump($this->session->data['order_id']);
        //var_dump($this->model_checkout_order->getOrder($order_id));
        //var_dump($this->model_checkout_order->getOrder($this->session->data['order_id']));
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

		if( $_POST['status'] == "S") {
			$txnstatus = true;
		}
        //var_dump($txnstatus);
        //var_dump($order_info);
        if ($order_info) 
		{
			$this->language->load('extension/payment/fonePaisa');
			$data['title'] = $this->language->get('heading_title');
			$data['language'] = $this->language->get('code');
			$data['direction'] = $this->language->get('direction');
			$data['heading_title'] = $this->language->get('heading_title');
			$data['text_response'] = $this->language->get('text_response');
			$data['text_success'] = $this->language->get('text_success');
			$data['text_success_wait'] = sprintf($this->language->get('text_success_wait'), $this->url->link('checkout/success', '', true));
			$data['text_failure'] = $this->language->get('text_failure');
			$data['text_failure_wait'] = sprintf($this->language->get('text_failure_wait'), $this->url->link('checkout/cart', '', true));
			
			if (($txnstatus && $isValidSign)) {
							    
				$this->load->model('checkout/order');
				$this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('payment_fonePaisa_order_status_id'));
                
				$data['continue'] = $this->url->link('checkout/success', '', true);
                if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/payment/fonePaisa_success')) {
					$this->template = $this->config->get('config_template') . '/template/extension/payment/fonePaisa_success';
				}else{
					$this->template = '/extension/payment/fonePaisa_success';
				}
					
				$this->children = array(
					'common/column_left',
					'common/column_right',
					'common/content_top',
					'common/content_bottom',
					'common/footer',
					'common/header'
				);
				
				$this->response->setOutput($this->load->view($this->template,$data));
				
			} else {
				$this->load->model('checkout/order');
				$data['continue'] = $this->url->link('checkout/cart', '', true);
                
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/payment/fonePaisa_failure')) {
					$this->template = $this->config->get('config_template') . '/template/extension/payment/fonePaisa_failure';
				} else {
					$this->template = '/extension/payment/fonePaisa_failure';
				}
				
				$this->children = array(
					'common/column_left',
					'common/column_right',
					'common/content_top',
					'common/content_bottom',
					'common/footer',
					'common/header'
				);
	
				$this->response->setOutput($this->load->view($this->template,$data));
			}
		}
	}
}
?>