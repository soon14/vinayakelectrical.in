<?php

class ControllerExtensionPaymentTnp extends Controller
{
    private $logger;

    public function __construct($arg)
    {
        $this->logger = new Log('tnp.log');
        parent::__construct($arg);
    }

    public function index()
    {
        $this->language->load('extension/payment/tnp');
        $method_data['button_confirm'] = $this->language->get('button_confirm');
        $method_data['action'] = "https://biz.traknpay.in/v2/paymentrequest";

        $this->load->model('checkout/order');
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
        if ($order_info) {
            $api_key = $this->config->get('payment_tnp_api_key');
            $private_salt = $this->config->get('payment_tnp_private_salt');
            $mode = $this->config->get('payment_tnp_mode');
            $name = substr(trim((html_entity_decode($order_info['payment_firstname'] . ' ' . $order_info['payment_lastname'], ENT_QUOTES, 'UTF-8'))), 0, 20);
            $email = substr($order_info['email'], 0, 75);
            $phone = substr(html_entity_decode($order_info['telephone'], ENT_QUOTES, 'UTF-8'), 0, 20);
            $order_info['currency_code'] = 'INR';
            $amount = $this->currency->format($order_info['total'], $order_info['currency_code'], false, false);
            $amount = $this->amount_format($amount);
            $orderid = $this->session->data['order_id'];
            $address_line_1 = html_entity_decode($order_info['payment_address_1'], ENT_QUOTES, 'UTF-8');
            $address_line_2 = html_entity_decode($order_info['payment_address_2'], ENT_QUOTES, 'UTF-8');
            $city = html_entity_decode($order_info['payment_city'], ENT_QUOTES, 'UTF-8');
            $country = html_entity_decode($order_info['payment_iso_code_3'], ENT_QUOTES, 'UTF-8');
            $description = 'TNPV2_OpencartV2.x: Paying invoice ' . html_entity_decode($order_info['order_id'], ENT_QUOTES, 'UTF-8') . ' of store ' . html_entity_decode($order_info['store_name'], ENT_QUOTES, 'UTF-8') . ' using open cart plugin';
            $state = html_entity_decode($order_info['payment_zone'], ENT_QUOTES, 'UTF-8');
            $zip_code = html_entity_decode($order_info['payment_postcode'], ENT_QUOTES, 'UTF-8');
            $currency = html_entity_decode($order_info['currency_code'], ENT_QUOTES, 'UTF-8');
            $ip = html_entity_decode($order_info['ip'], ENT_QUOTES, 'UTF-8');
            $return_url = $this->url->link('extension/payment/tnp/callback');

            $data = Array();
            $data['api_key'] = $api_key;
            $data['order_id'] = $orderid;
            $data['currency'] = $currency;
            $data['name'] = $name;
            $data['email'] = $email;
            $data['amount'] = $amount;
            $data['phone'] = $phone;
            $data['address_line_1'] = $address_line_1;
            $data['address_line_2'] = $address_line_2;
            $data['city'] = $city;
            $data['country'] = $country;
            $data['description'] = $description;
            $data['state'] = $state;
            $data['zip_code'] = $zip_code;
            $data['return_url'] = $return_url;
            $data['udf1'] = $ip;
            $data['mode'] = $mode;


            $hash_columns = [
                'address_line_1',
                'address_line_2',
                'amount',
                'api_key',
                'city',
                'country',
                'currency',
                'description',
                'email',
                'mode',
                'name',
                'order_id',
                'phone',
                'return_url',
                'state',
                'udf1',
                'udf2',
                'udf3',
                'udf4',
                'udf5',
                'zip_code',
            ];

            ksort($hash_columns);
            $hash_data = $private_salt;
            foreach ($hash_columns as $column) {
                if (isset($data[$column])) {
                    if (strlen($data[$column]) > 0) {
                        $hash_data .= '|' . trim($data[$column]);
                    }
                }
            }
            $this->logger->write('Hash data from the client to server : ' . $hash_data);
            $hash = null;
            if (strlen($hash_data) > 0) {
                $hash = strtoupper(hash("sha512", $hash_data));
            }

            $data['hash'] = $hash;
            $method_data = array_merge($method_data, $data);

            return $this->load->view('extension/payment/tnp', $method_data);
        }
    }

    public function callback()
    {
        if (isset($this->request->post['order_id'])) {

            $this->load->model('checkout/order');
            $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

            $order_info['currency_code'] = 'INR';
            $amount = $this->currency->format($order_info['total'], $order_info['currency_code'], false, false);
            $amount = $this->amount_format($amount);

            //Oreder Id sent to the server
            $orderid = $this->session->data['order_id'];

            //Order Id got from the server in the post request
            $order_id = $this->request->post['order_id'];
            $response_code = $this->request->post['response_code'];
            $response_message = $this->request->post['response_message'];
            $transaction_id = $this->request->post['transaction_id'];

            $hash_columns = $this->request->post;
            unset($hash_columns['hash']);
            ksort($hash_columns);

            $private_salt = $this->config->get('payment_tnp_private_salt');
            $hash_data = $private_salt;

            foreach ($hash_columns as $key => $value) {
                if (strlen($value) > 0) {
                    $hash_data .= '|' . $value;
                }
            }
            $hash = null;
            if (strlen($hash_data) > 0) {
                $hash = strtoupper(hash("sha512", $hash_data));
            }
            if ($hash == $this->request->post['hash']) {
                if ($response_code == 0) {
                    $this->logger->write("Payment ₹$amount is successful for Order Id $order_id and Transaction Id $transaction_id.");
                    $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payment_tnp_order_status_id'),
                        "Payment successful for tnp Order ID: $order_id", true);

                    return $this->response->redirect($this->url->link('checkout/success', '', 'SSL'));
                }
                else if ($response_code != 0) {
                    $this->logger->write("Payment unsuccessful for Order Id : $order_id");
                    return $this->response->redirect($this->url->link('checkout/failure', '', 'SSL'));
                }
                else {
                    return $this->error($response_message);
                }
            }
            else {
                $this->logger->write("Hash mis matched");
                $this->logger->write("Hash Calculated with data sent by server is : " . $hash_data);
                $this->logger->write("Hash Calculated  : " . $hash);
                $this->logger->write("Hash from the server is : " . $this->request->post['hash']);

                return $this->failure();
            }
        }
        return $this->response->redirect($this->url->link('checkout/failure', '', 'SSL'));
        }

    public function failure()
    {
        $this->load->language('extension/payment/tnp');

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
            'text' => $this->language->get('text_failure'),
            'href' => $this->url->link('checkout/failure')
        );

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_message'] = sprintf($this->language->get('text_message'), $this->url->link('information/contact'));

        $data['button_continue'] = $this->language->get('button_continue');
        $data['continue'] = $this->url->link('common/home');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        $this->response->setOutput($this->load->view('common/success', $data));
    }

    public function error($response_message)
    {
        $this->load->language('extension/payment/tnp');

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

        $data['heading_title'] = 'Correct the below error';
        $data['text_message'] = '<h2>'.$response_message.'<h2>';

        $data['button_continue'] = $this->language->get('button_continue');
        $data['continue'] = $this->url->link('common/home');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        return $this->response->setOutput($this->load->view('common/success', $data));
    }

    public function amount_format($number)
    {
        $amount = round((float)$number, (int)2);
        $amount = number_format($amount, (int)2, $this->language->get('decimal_point'), '');
        return $amount;
    }
}
?>