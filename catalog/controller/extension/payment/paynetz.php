<?php
require __DIR__ . "/lib/AtomAES.php";

class ControllerExtensionPaymentPaynetz extends Controller {

    private $logger;
    private $paynetz_login_id;
    private $paynetz_password;
    private $paynetz_req_hashkey;
    private $paynetz_res_hashkey;
    private $paynetz_res_enckey;
    private $paynetz_req_enckey;
    private $paynetz_salt;
    private $paynetz_client_code;
    private $paynetz_productid;
    private $paynetz_proxy_unamepass;
    private $paynetz_proxy_hostport;
    private $paynetz_isproxy;
    private $paynetz_url;

    public function __construct($arg)
    {
        $this->logger= new Log('paynetz.log');


        parent::__construct($arg);

    }

    public function getChecksum($txnid,$amt,$key,$login,$pass,$proid){
        $str = $login . $pass . "NBFundTransfer" . $proid . $txnid . $amt . "INR";

        $signature = hash_hmac("sha512",$str,$key);
        $this->logger->write("Request Signature String : => ".$str);
        return $signature;
    }

    public function getEncData($data){

        $datenow = date("d/m/Y h:m:s");

        if($data['paynetz_testmode'] == 1){
            $seperator = trim('&');
        }else{
            $seperator = trim('|');
        }

        $transactionDate = str_replace(" ", "%20", $datenow);
        $strReqst = "";
        $strReqst .= "login=".$data['paynetz_login_id'];
        $strReqst .= $seperator."pass=".$data['paynetz_password'];

        $strReqst .= $seperator."ttype=NBFundTransfer";

        $strReqst .= $seperator."prodid=".$data['paynetz_productid'];
        $strReqst .= $seperator."amt=".$data['amount'];
        $strReqst .= $seperator."txncurr=INR";
        $strReqst .= $seperator."txnscamt=".$data['amount'];
        $strReqst .= $seperator."ru=".$this->url->link('extension/payment/paynetz/confirm');
        $strReqst .= $seperator."clientcode=".urlencode(base64_encode($data['paynetz_client_code']));
        $strReqst .= $seperator."txnid=".$data['transaction_id'];
        $strReqst .= $seperator."date=".$transactionDate;
        $strReqst .= $seperator."udf1=".$data['name'];
        $strReqst .= $seperator."udf2=".$data['email'];
        $strReqst .= $seperator."udf3=".$data['phone'];
        $strReqst .= $seperator."custacc=639827";
        $strReqst .= $seperator."signature=".$this->getChecksum($data['transaction_id'],$data['amount'],$data['paynetz_req_hashkey'],$data['paynetz_login_id'],$data['paynetz_password'],$data['paynetz_productid']);
        $atomenc = new AtomAES();
        $this->logger->write("Request String ".$strReqst);
        $encData = $atomenc->encrypt($strReqst, $data['paynetz_req_enckey'], $data['paynetz_salt']);
        return "login=".$data['paynetz_login_id']."&encdata=".strtoupper($encData); // do not change in this line
    }

    public function start() { 

        $this->load->model('checkout/order');

        $apidata = [];

        $api_data['paynetz_login_id'] = $this->config->get('payment_paynetz_login_id');
        $api_data['paynetz_password'] = $this->config->get('payment_paynetz_password');
        $api_data['paynetz_req_hashkey'] = $this->config->get('payment_paynetz_req_hashkey');
        $api_data['paynetz_res_hashkey'] = $this->config->get('payment_paynetz_res_hashkey');
        $api_data['paynetz_res_enckey']  = $this->config->get('payment_paynetz_res_enckey');
        $api_data['paynetz_req_enckey'] = $this->config->get('payment_paynetz_req_enckey');
        $api_data['paynetz_salt']  = $this->config->get('payment_paynetz_salt');
        $api_data['paynetz_client_code'] = $this->config->get('payment_paynetz_client_code');
        $api_data['paynetz_productid'] = $this->config->get('payment_paynetz_productid');
        $api_data['paynetz_proxy_unamepass']= $this->config->get('payment_paynetz_proxy_unamepass');
        $api_data['paynetz_proxy_hostport'] = $this->config->get('payment_paynetz_proxy_hostport');
        $api_data['paynetz_isproxy'] = $this->config->get('payment_paynetz_isproxy');
        $api_data['paynetz_testmode'] = $this->config->get('payment_paynetz_testmode');
        $api_data['paynetz_url']= $this->config->get('payment_paynetz_url');

        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        $this->logger->write("Step 2: Creating new Order with ".$this->session->data['order_id']);

        if ($order_info['currency_code'] != "INR"){

            $this->load->model('localisation/currency');
            $currencies = $this->model_localisation_currency->getCurrencies();

            foreach ($currencies as $currency) { 
                if ($currency['code'] == $order_info['currency_code']) { 
                    $order_info['total'] == (float) ($order_info['total'] / $currency['value']) ; 
                    break;
                }
            }
        }    

        $order_info['roundAmount'] = round($order_info['total'],2);   

        $products = $this->cart->getProducts();
        $api_data['description'] = " ";

        foreach($products as $product => $values) { 
            $api_data['description'] = html_entity_decode($values['name']." - ".$values['quantity']."".$api_data['description'], ENT_QUOTES, 'UTF-8');
        }

        $session_orderid   =  $this->session->data['order_id'];

        $api_data['description'] = html_entity_decode($api_data['description']."("."Order ID: ".$session_orderid.")", ENT_QUOTES, 'UTF-8');


        if ($order_info) { 

            $api_data['name'] = substr(trim((html_entity_decode($order_info['payment_firstname'] . ' ' . $order_info['payment_lastname'], ENT_QUOTES, 'UTF-8'))), 0, 20);
            $api_data['email'] 			= substr($order_info['email'], 0, 75);
            $api_data['phone'] 			= substr(html_entity_decode($order_info['telephone'], ENT_QUOTES, 'UTF-8'), 0, 20);
            $api_data['amount'] 		= $order_info['roundAmount'].'.00';
            $api_data['transaction_id'] = time()."-". $this->session->data['order_id'];

            $encdata = $this->getEncData($api_data);

            $this->logger->write("Data Sending : ".print_r($api_data,true));

            $method_data['action'] = $api_data['paynetz_url'].'/paynetz/epi/fts?'.$encdata;


        }else{
            $this->logger->write('No Order Info Found or Order Info is false');
            exit;
        }

        $method_data['telephone'] 	= substr(html_entity_decode($order_info['telephone'], ENT_QUOTES, 'UTF-8'), 0, 20);
        $method_data['footer'] 		= $this->load->controller('common/footer');
        $method_data['header'] 		= $this->load->controller('common/header');


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/payment/paynetz/paynetz_redirect')){
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/payment/paynetz/paynetz_redirect',$method_data));
        }else{
            $this->response->setOutput($this->load->view("extension/payment/paynetz/paynetz_redirect",$method_data));
        }


    }

    public function index(){ 
        if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) 
        {
            $method_data['action'] = $this->config->get('config_ssl') . 'index.php'; 
        }
        else{
            $method_data['action'] = $this->config->get('config_url') . 'index.php'; 
        }

        $this->logger->write("Action URL: " . $method_data['action']);
        $method_data['confirm'] = 'extension/payment/paynetz/start';
        $this->logger->write("Step 1: Redirecting to extension/payment/paynetz/start");

        return $this->load->view('extension/payment/paynetz/paynetz', $method_data);
    }


    public function confirm(){  
        if(isset($this->request->post['encdata'])){
            $encdata = $this->request->post['encdata'];
            $respHashKey = $this->config->get('payment_paynetz_res_haskey');
            $responseEncryptionKey = $this->config->get('payment_paynetz_res_enckey');
            $salt = $this->config->get('payment_paynetz_salt');
            $atomenc = new AtomAES();
            $decrypted = $atomenc->decrypt($encdata, $responseEncryptionKey, $salt);
            $this->logger->write("Decrypted data :".sprintf($decrypted));
            $array_response = explode('|', $decrypted); //change & to | for production
            $equalSplit = array();
            foreach ($array_response as $ar) {
                $equalSub = explode('=', $ar);
                if(!empty($equalSub[1]) && !empty($equalSub[0])){
                    $temp = array(
                        $equalSub[0] => $equalSub[1],
                    );
                    $equalSplit += $temp;
                }
            }
            $order_id = $equalSplit['mer_txn'];
            $order_id = explode("-",$order_id);
            $order_id = $order_id[1];
            $this->logger->write("Extracted order id from trasaction_id: ".$order_id);
            $this->load->model('checkout/order');
            $order_info = $this->model_checkout_order->getOrder($order_id);
            if($order_info)
            {
                if ($equalSplit['f_code'] === "Ok") {
                    $this->logger->write("Payment for ".$equalSplit['mer_txn']." was credited.");
                    $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payment_paynetz_order_status_id'), "Payment was successful", true);
                    $this->response->redirect($this->url->link('checkout/success', '', 'SSL'));
                }else if ($equalSplit['f_code'] === "C"){
                    $this->logger->write("Payment for ".$equalSplit['mer_txn']." cancelled.");
                    $this->model_checkout_order->addOrderHistory($order_id, 10, "Payment Cancelled for Order ID: ".$equalSplit['mer_txn']."", true);
                    $this->session->data['error'] = 'Failed : Payment for the order has been cancelled ';
                    $this->response->redirect($this->url->link('checkout/cart', '', 'SSL'));
                }else{
                    $this->logger->write("Payment for ".$equalSplit['mer_txn']." failed.");
                    $this->model_checkout_order->addOrderHistory($order_id, 10, "Payment failed for Order ID: ".$equalSplit['mer_txn']."", true);
                    $this->session->data['error'] = 'Failed : Payment for the order has been failed ';
                    $this->response->redirect($this->url->link('checkout/cart', '', 'SSL'));
                }
            }else{
                $this->logger->write("No order Id Found");
                $this->response->redirect($this->config->get('config_url'));
            }
        }else{
            $this->logger->write("Callback called with no Encrypted data or Failed.");
            $this->response->redirect($this->config->get('config_url'));
        }
     

    }


}
