<?php
session_start();
class ControllerCheckoutSuccess extends Controller {
	public function index() {
		$this->load->language('checkout/success');
		
		if (isset($this->session->data['order_id'])) {
			$this->cart->clear();

			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['guest']);
			unset($this->session->data['comment']);
			unset($this->session->data['order_id']);
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);
			unset($this->session->data['totals']);
		}

		$this->document->setTitle($this->language->get('heading_title'));

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
			'href' => $this->url->link('checkout/checkout', '', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_success'),
			'href' => $this->url->link('checkout/success')
		);

		if ($this->customer->isLogged()) {
			$data['text_message'] = sprintf($this->language->get('text_customer'), $this->url->link('account/account', '', true), $this->url->link('account/order', '', true), $this->url->link('account/download', '', true), $this->url->link('information/contact'));
		} else {
			$data['text_message'] = sprintf($this->language->get('text_guest'), $this->url->link('information/contact'));
		}

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
	    $mobile = $_SESSION['contactno'];
	    $message ="We have received your order.Your Order id is :".$_SESSION['order_id'] ." Thank You for shopping with us-Kasturi Collection-7058756668.www.kasturicollection.com";
	    
	    $username="kastri";
		$api_password="kastri";
		$sender="KASTRI";
		$domain="http://cannyinfotech.in/api/mt/SendSMS?";
		
		$username=urlencode($username);
		$password=urlencode($api_password);
		$sender=urlencode($sender);
		$message=urlencode($message);
		
		$parameters="user=$username&password=$api_password&senderid=$sender&channel=TRANS&DCS=0&flashsms=0&number=$mobile&text=$message&route=2";
		
		$url=$domain.$parameters;
    
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // For HTTPS
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false); // For HTTPS
        curl_exec($ch);
        $statusCode = curl_getinfo($ch, CURLINFO_HTTP_CODE); // Returns 200 if everything went well
        if($statusCode==200)
        {
        //echo "<script>alert('SMS Sent');</script>";
        }
        else
        { 
       // echo "<script>alert('SMS Sending Failed.');</script>";
        }
        
        curl_close($ch);

		$this->response->setOutput($this->load->view('common/success', $data));
	}
	
}