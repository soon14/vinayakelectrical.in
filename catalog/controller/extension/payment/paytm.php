<?php
class ControllerExtensionPaymentpaytm extends Controller {
	public function index() {
		require_once(DIR_SYSTEM . 'encdec_paytm.php');
		require_once(DIR_SYSTEM . 'paytm_constants.php');
		
		$this->load->language('extension/payment/paytm');
		$data['button_confirm'] = $this->language->get('button_confirm');
		$this->load->model('extension/payment/paytm');
		
		$this->load->model('checkout/order');
    
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
		
		$data['merchant'] = $this->config->get('payment_paytm_merchant');
		
		$data['trans_id'] = $this->session->data['order_id'];
		$data['amount'] = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);
		$data['channel_id'] = "WEB";
		$data['industry_type_id'] = $this->config->get('payment_paytm_industry');;
		$data['website'] = $this->config->get('payment_paytm_website');
		
		if( ! empty($order_info['customer_id'])){
			$data['customer_id'] = $order_info['customer_id'];
		}else{
			$data['customer_id'] = $order_info['email'];
		}
		
		$data['email']     =  '';
		$data['mobile_no'] =  '';
		
		if(isset($data['email'])){
			$data['email'] = $order_info['email'];
		}
		
		if(isset($data['mobile_no'])){
			$data['mobile_no']= preg_replace('#[^0-9]{0,13}#is','',$order_info['telephone']);
		}
		
		
		if($this->config->get('payment_paytm_environment') == "P") {
			$data['action_url'] = $PAYTM_PAYMENT_URL_PROD;
		} else {
			$data['action_url'] = $PAYTM_PAYMENT_URL_TEST;
		}
		
		if($_SERVER['HTTPS']){
			$data['callback_url'] = HTTPS_SERVER .$callbackurl_tail_part; 
		}else{
			$data['callback_url'] = HTTP_SERVER .$callbackurl_tail_part; 
		}
		
		$parameters = array(
							"MID" => $data['merchant'],
              "ORDER_ID"  => $data['trans_id'],               
              "CUST_ID" => $data['customer_id'],
              "TXN_AMOUNT" => $data['amount'],
              "CHANNEL_ID" => $data['channel_id'],
              "INDUSTRY_TYPE_ID" => $data['industry_type_id'],
              "WEBSITE" => $data['website'],
							"MOBILE_NO" => $data['mobile_no'],
							"EMAIL" => $data['email'],
						);
		
		if($this->config->get('payment_paytm_callbackurl') == '1')
		{
			$parameters["CALLBACK_URL"] = $data['callback_url'];
		}
		$mer = htmlspecialchars_decode(decrypt_e($this->config->get('payment_paytm_merchant2'),$const1),ENT_NOQUOTES);
		$mer = rtrim($mer);
		$data['checkSum'] = getChecksumFromArray($parameters, $mer);
		$data['paytm_callbackurl'] = $this->config->get('payment_paytm_callbackurl');
		$data['callback'] = $this->url->link('extension/payment/paytm/callback', '', 'SSL');
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/payment/paytm')) {
			return $this->load->view($this->config->get('config_template') . '/template/extension/payment/paytm', $data);
		} else {
			return $this->load->view('extension/payment/paytm', $data);
		}
	}
	
	public function callback(){
	
		require_once(DIR_SYSTEM . 'encdec_paytm.php');
		require_once(DIR_SYSTEM . 'paytm_constants.php');
		$param = array();
		foreach($_POST as $key=>$value)
		{
		   	if($key != "route") {
				$param[$key] = $_POST[$key];
		  	}
		}
		$isValidChecksum = false;
		$txnstatus = false;
		$authStatus = false;
		$mer = htmlspecialchars_decode(decrypt_e($this->config->get('payment_paytm_merchant2'),$const1),ENT_NOQUOTES);
		$mer = rtrim($mer);
		if(isset($_POST['CHECKSUMHASH']))
		{
			$checksum = htmlspecialchars_decode($_POST['CHECKSUMHASH']);
			$return = verifychecksum_e($param, $mer, $checksum);
			if($return == "TRUE")
			$isValidChecksum = true;
		}
		$order_id = $_POST['ORDERID'];	
		$this->load->model('checkout/order');
		$order_info = $this->model_checkout_order->getOrder($order_id);

		
		if( $param['STATUS'] == "TXN_SUCCESS") {
			$txnstatus = true;
		}
		
		
		if ($order_info) 
		{
			
			$this->language->load('extension/payment/paytm');
			$data['title'] = sprintf($this->language->get('heading_title'), $this->config->get('config_name'));
			$data['language'] = $this->language->get('code');
			$data['direction'] = $this->language->get('direction');
			$data['heading_title'] = sprintf($this->language->get('heading_title'), $this->config->get('config_name'));
			$data['text_response'] = $this->language->get('text_response');
			$data['text_success'] = $this->language->get('text_success');
			$data['text_success_wait'] = sprintf($this->language->get('text_success_wait'), $this->url->link('checkout/success'));
			$data['text_failure'] = $this->language->get('text_failure');
			$data['text_failure_wait'] = sprintf($this->language->get('text_failure_wait'), $this->url->link('checkout/cart'));
			
			
			if ($txnstatus && $isValidChecksum) {
				// Create an array having all required parameters for status query.
				$requestParamList = array("MID" => $this->config->get('payment_paytm_merchant') , "ORDERID" => $order_id);
				
				$mer = htmlspecialchars_decode(decrypt_e($this->config->get('payment_paytm_merchant2'),$const1),ENT_NOQUOTES);
					
				$mer = rtrim($mer); 
				
				$StatusCheckSum = getChecksumFromArray($requestParamList, $mer);
						
				$requestParamList['CHECKSUMHASH'] = $StatusCheckSum;
				
				// Call the PG's getTxnStatus() function for verifying the transaction status.
				
				if($this->config->get('payment_paytm_environment') == "P") {
					$check_status_url = 'https://secure.paytm.in/oltp/HANDLER_INTERNAL/getTxnStatus';
				} else {
					$check_status_url = 'https://pguat.paytm.com/oltp/HANDLER_INTERNAL/getTxnStatus';
				}
				$responseParamList = callNewAPI($check_status_url, $requestParamList);
				if($responseParamList['STATUS']=='TXN_SUCCESS' && $responseParamList['TXNAMOUNT']==$_POST['TXNAMOUNT'])
				{
					$authStatus = true;
									
					$this->load->model('checkout/order');
					
						
					$this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payment_paytm_order_status_id'));
					
					
					$data['continue'] = $this->url->link('checkout/success');
					if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/payment/paytm_success')) {
						$this->template = $this->config->get('config_template') . '/template/extension/payment/paytm_success';
					} else {
						$this->template = 'extension/payment/paytm_success';
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
				else{
					$this->load->model('checkout/order');

					$data['continue'] = $this->url->link('checkout/cart');
					if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/payment/paytm_failure')) {
						$this->template = $this->config->get('config_template') . '/template/extension/payment/paytm_failure';
					} else {
						$this->template = 'extension/payment/paytm_failure';
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
				
			} else {
				$this->load->model('checkout/order');

				$data['continue'] = $this->url->link('checkout/cart');
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/payment/paytm_failure')) {
					$this->template = $this->config->get('config_template') . '/template/extension/payment/paytm_failure';
				} else {
					$this->template = 'extension/payment/paytm_failure';
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
