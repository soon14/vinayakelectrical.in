<?php
class ControllerCommonPaynear extends Controller {
	public function index() {
		
		require_once "PaynearEpay.php";
		
		$merchantId = $this->config->get('payment_paynear_account');
		$secretKey = $this->config->get('payment_paynear_secret');
		//$testMode = $this->config->get('paynear_test');
		$params = $_POST;
		
		$epay = new PaynearEpay($merchantId, $secretKey);
		
		try{
			
			$epay->initiatePayment($params);
			
		} catch(Exception $e){
			echo 'Error:' . $e->getMessage();
		}
	}
}
?>