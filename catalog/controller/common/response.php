<?php 

class ControllerCommonResponse extends Controller { 
public function index() { 

$this->load->language('common/paynear');
$data['button_confirm'] = $this->language->get('button_confirm');
$data['button_continue'] = $this->language->get('button_continue');
$data['heading_title'] = $this->language->get('heading_title');
$data['continue'] = HTTP_SERVER . 'index.php?route=common/home';

		require_once "PaynearEpay.php";
		
		$merchantId = '1007874';
		$secretKey = 'RA136A579CB4MB0475GEA022626FZDAJ';
		//$testMode = true;
		$params = $_POST;
      $result = $params;
		//$epay = new PaynearEpay($merchantId, $secretKey);
		///try{
			
		 ///  $result = $epay->getPaymentResponse($params);
		    
		//} catch(Exception $e){
			//echo 'Error:' . $e->getMessage();
		//	exit;
		//}
		
	   

	$data['response']=$result;

   
	$this->load->model('checkout/order');
	
	if($result['responseCode']=='000')
	{
		
		if (isset($this->session->data['order_id'])) {
			$this->cart->clear();
			unset($this->session->data['order_id']);	
		}

		$this->model_checkout_order->addOrderHistory($result['orderRefNo'],'5');
		$data['success_heading_title'] = $this->language->get('success_heading_title');
		$data['responseMsg']='Your order has been successfully placed! <br/> Your Order id - '.$result['orderRefNo'];
	}
	else
	{	
		$this->model_checkout_order->addOrderHistory($result['orderRefNo'],'10');
		 $data['responseMsg']='Sorry, Try Again !! <br/>Payment Failed';
		 	$data['success_heading_title'] = $this->language->get('fail_heading_title');
	}
		
		
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['footer'] = $this->load->controller('common/footer');
		
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
	
		$data['continue'] = $this->url->link('common/home');
		$data['button_continue'] = $this->language->get('button_continue');
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_basket'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_checkout'),
			'href' => $this->url->link('checkout/checkout', '', 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_success'),
			'href' => $this->url->link('checkout/success')
		);
		
		$this->response->setOutput($this->load->view('common/response', $data));
		
		
		
	
	 }
	 
	 	
}
?>
