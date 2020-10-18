<?php
    /*
     Payment Name      : CCAvenue MCPG
     Description          : Extends Payment with  CCAvenue MCPG.
     CCAvenue Version  : MCPG-2.0
     Module Version    : bz-3.0
     Author              : BlueZeal SoftNet
     Copyright         : © 2009-2017
     */
    
    
    
    if (defined('DOM_BZ_PATH_PG_MAIN_201')== false)
    {
        define("DOM_BZ_PATH_PG_MAIN_201",dirname(DIR_APPLICATION)."/admin/controller/common/");
    }
    
    $file_bz_dom=DOM_BZ_PATH_PG_MAIN_201."main.php";  // BZ =>this code neeed to define from ces_ccave_php_details.xls
    
    // need to be edit for every ecommerce path
    if (file_exists($file_bz_dom)) {
        include_once($file_bz_dom);
    }
    class ControllerExtensionPaymentCcavenuepay extends Controller {
        private $error = array();
        private    $_pgmod_ver            = "4.0";            //==> Module Version same as in api
        private    $_pgcat                = "CCAvenue";            //==>Category same as in api
        private    $_pgcat_ver          = "MCPG-2.1";            //==>Category Version same as in api
        private $_pgcms             = "opencart";            //==>CMS same as in api
        public    $_pgcms_ver         = "3.0";            //==>CMS Version same as in api
        private    $_pg_lic_key         = 'FREE';                //Payment module license key same as in api
        private  $_errors            =array();
        public function getErrors()
        {
            return $this->_errors;
        }
        public function index() {
            $payment_ccavenuepay_license_key = $this->_pg_lic_key;
            $create_ini                 = $this->getCcavenueApi($this->session->data['user_token']);
            $url="https://www.bluezeal.in/support";
            
            $this->document->addStyle('view/stylesheet/style.css');
            $this->document->addStyle('view/stylesheet/bright.css');
            $this->load->language('extension/payment/ccavenuepay');
            $this->document->setTitle($this->language->get('heading_title'));
            $this->load->model('setting/setting');
            
            if (class_exists('B')) {
                $b = new B();}
            else{ echo"Error code 2 : contact BlueZeal";
                echo " <a href=".$url."> support</a>";
                echo "\n";
                return false;}
            
            if($create_ini == true)
            {
                $b->create_Inifile($this->_pgmod_ver,$this->_pgcat,$this->_pgcat_ver,$this->_pgcms,$this->_pgcms_ver,$this->_pg_lic_key);
            }
            
            if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
                $this->model_setting_setting->editSetting('payment_ccavenuepay', $this->request->post);
                $this->session->data['success'] = $this->language->get('text_success');
                $sucesstxt = $this->language->get('text_success');
                $errortxt = '';
                $success = '';
                
                ######## API Code start #######
                /*if(!empty($this->request->post['ccavenuepayStandard_license_key'])) */
                if(!empty($payment_ccavenuepay_license_key)){
                    $checked      = $b->check_license($payment_ccavenuepay_license_key); // This will call the communication file function check_license
                    $getres     = json_decode($checked,true);
                    $settings     = $this->model_setting_setting->getSetting('payment_ccavenuepay');
                    
                    /**
                     * Check the response from API is success or not
                     */
                    
                    if(!is_array($getres) || array_key_exists('error',$getres)){
                        ##### Code for error response #####
                        $this->request->post['payment_ccavenuepay_status'] = 0;
                        $errortxt = "Not installed!!! Error:".$getres['error'];
                        $settings['payment_ccavenuepay_status'] = 0;
                        $b->send_error_mail($errortxt);
                    }else{
                        
                        ##### Code for success response #####
                        
                        $settings['payment_ccavenuepay_license_key'] = $this->_pg_lic_key;//$license_key;
                        
                        /**
                         * call install function fro inserting the module data into the user database
                         *  and register on the API server
                         *
                         */
                        
                        $this->installbzCc($this->_pg_lic_key);
                        $success = $sucesstxt = 'You need to set configuration!!';
                    }
                    $settings['payment_ccavenuepay_license_key'] = $this->_pg_lic_key;
                    $this->model_setting_setting->editSetting('payment_ccavenuepay',$settings);
                    if(isset($_POST['ajax']) && $_POST['ajax'] == 'true'){
                        echo json_encode(array('error'=>$errortxt,'success'=>$success));
                        exit;
                    }
                    
                    ######## API Code End #######
                    
                    //redirect on editing page at success
                    
                    $this->response->redirect($this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token'], 'SSL'));
                }
                else
                {
                    // Get the license key from databse
                    $license_key = $this->config->get('payment_ccavenuepay_license_key');
                    $license_key = $payment_ccavenuepay_license_key;
                    if(empty($license_key)){
                        $this->request->post['payment_ccavenuepay_status'] = 0;
                        
                        $sucesstxt = 'You need to set license key for complete installation!!';
                    }
                    $settings = $this->model_setting_setting->getSetting('payment_ccavenuepay');
                    
                    // API code for checking the inputed license key is in setting array.
                    $data = $this->request->post;
                    if(!empty($settings['payment_ccavenuepay_license_key'])){
                        $data['payment_ccavenuepay_license_key'] = $settings['payment_ccavenuepay_license_key'];
                    }
                    $data['payment_ccavenuepay_license_key'] =  $payment_ccavenuepay_license_key;
                    $this->model_setting_setting->editSetting('payment_ccavenuepay', $data);
                }
                
                // API Code for stor the result into the Session
                if(empty($errortxt)){
                    
                    $this->session->data['success'] = $sucesstxt;
                }
                $this->response->redirect($this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token']. '&type=payment', 'SSL'));
            }
            
            
            if (isset($this->error['warning'])) {
                $data['error_warning'] = $this->error['warning'];
            } else {
                $data['error_warning'] = '';
            }
            if (isset($this->error['merchant_id'])) {
                $data['error_merchant_id'] = $this->error['merchant_id'];
            } else {
                $data['error_merchant_id'] = '';
            }
            
            if (isset($this->error['access_code'])) {
                $data['error_access_code'] = $this->error['access_code'];
            } else {
                $data['error_access_code'] = '';
            }
            
            if (isset($this->error['working_key'])) {
                $data['error_working_key'] = $this->error['working_key'];
            } else {
                $data['error_working_key'] = '';
            }
            $data['breadcrumbs'] = array();
            $data['breadcrumbs'][] = array(
                                           'text'      => $this->language->get('text_home'),
                                           'href'      => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], 'SSL'),
                                           'separator' => false
                                           );
            $data['breadcrumbs'][] = array(
                                           'text'      => $this->language->get('text_extension'),
                                           'href'      => $this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token']. '&type=payment', 'SSL'),
                                           'separator' => ' :: '
                                           );
            $data['breadcrumbs'][] = array(
                                           'text'      => $this->language->get('heading_title'),
                                           'href'      => $this->url->link('extension/payment/ccavenuepay', 'user_token=' . $this->session->data['user_token'], 'SSL'),
                                           'separator' => ' :: '
                                           );
            $data['action'] = $this->url->link('extension/payment/ccavenuepay', 'user_token=' . $this->session->data['user_token'], 'SSL');
            $data['cancel'] = $this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', 'SSL');
            
            if (isset($this->request->post['payment_ccavenuepay_status']))
            {
                $data['payment_ccavenuepay_status'] = $this->request->post['payment_ccavenuepay_status'];
                
            }
            else
            {
                $data['payment_ccavenuepay_status'] = $this->config->get('payment_ccavenuepay_status');
            }
            
            if (isset($this->request->post['payment_ccavenuepay_testmode'])) {
                $data['payment_ccavenuepay_testmode'] = $this->request->post['payment_ccavenuepay_testmode'];
            } else {
                $data['payment_ccavenuepay_testmode'] = $this->config->get('payment_ccavenuepay_testmode');
            }
            if (isset($this->request->post['payment_ccavenuepay_debug'])) {
                $data['payment_ccavenuepay_debug'] = $this->request->post['payment_ccavenuepay_debug'];
            } else {
                $data['payment_ccavenuepay_debug'] = $this->config->get('payment_ccavenuepay_debug');
            }
            
            if (isset($this->request->post['payment_ccavenuepay_merchant_id']))
            {
                $data['payment_ccavenuepay_merchant_id'] = $this->request->post['payment_ccavenuepay_merchant_id'];
            }
            else
            {
                $data['payment_ccavenuepay_merchant_id'] = $this->config->get('payment_ccavenuepay_merchant_id');
            }
            if (isset($this->request->post['payment_ccavenuepay_access_code']))
            {
                $data['payment_ccavenuepay_access_code'] = $this->request->post['payment_ccavenuepay_access_code'];
            }
            else
            {
                $data['payment_ccavenuepay_access_code'] = $this->config->get('payment_ccavenuepay_access_code');
            }
            if (isset($this->request->post['payment_ccavenuepay_working_key']))
            {
                $data['payment_ccavenuepay_working_key'] = $this->request->post['payment_ccavenuepay_working_key'];
            }
            else
            {
                $data['payment_ccavenuepay_working_key'] = $this->config->get('payment_ccavenuepay_working_key');
            }
            if (isset($this->request->post['payment_ccavenuepay_payment_confirmation_mail']))
            {
                $data['payment_ccavenuepay_payment_confirmation_mail'] = $this->request->post['payment_ccavenuepay_payment_confirmation_mail'];
            }
            else
            {
                $data['payment_ccavenuepay_payment_confirmation_mail'] = $this->config->get('payment_ccavenuepay_payment_confirmation_mail');
            }
            if (isset($this->request->post['payment_ccavenuepay_total']))
            {
                $data['payment_ccavenuepay_total'] = $this->request->post['payment_ccavenuepay_total'];
            }
            else
            {
                $data['payment_ccavenuepay_total'] = $this->config->get('payment_ccavenuepay_total');
            }
            if (isset($this->request->post['payment_ccavenuepay_completed_status_id'])) {
                $data['payment_ccavenuepay_completed_status_id'] = $this->request->post['payment_ccavenuepay_completed_status_id'];
            } else {
                $data['payment_ccavenuepay_completed_status_id'] = $this->config->get('payment_ccavenuepay_completed_status_id');
            }
            if (isset($this->request->post['payment_ccavenuepay_failed_status_id'])) {
                $data['payment_ccavenuepay_failed_status_id'] = $this->request->post['payment_ccavenuepay_failed_status_id'];
            } else {
                $data['payment_ccavenuepay_failed_status_id'] = $this->config->get('payment_ccavenuepay_failed_status_id');
            }
            if (isset($this->request->post['payment_ccavenuepay_pending_status_id'])) {
                $data['payment_ccavenuepay_pending_status_id'] = $this->request->post['payment_ccavenuepay_pending_status_id'];
            } else {
                $data['payment_ccavenuepay_pending_status_id'] = $this->config->get('payment_ccavenuepay_pending_status_id');
            }
            $this->load->model('localisation/order_status');
            $data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();
            if (isset($this->request->post['payment_ccavenuepay_geo_zone_id'])) {
                $data['payment_ccavenuepay_geo_zone_id'] = $this->request->post['payment_ccavenuepay_geo_zone_id'];
            } else {
                $data['payment_ccavenuepay_geo_zone_id'] = $this->config->get('payment_ccavenuepay_geo_zone_id');
            }
            $this->load->model('localisation/geo_zone');
            $data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
            if (isset($this->request->post['payment_ccavenuepay_sort_order'])) {
                $data['payment_ccavenuepay_sort_order'] = $this->request->post['payment_ccavenuepay_sort_order'];
            } else {
                $data['payment_ccavenuepay_sort_order'] = $this->config->get('payment_ccavenuepay_sort_order');
            }
            
            //Store License key into the data arry from Databse
            
            $data['ccavenuepay_license_key'] = $this->_pg_lic_key;//$this->config->get('ccavenuepayStandard_license_key');
            
            $payment_ccavenuepay_pdf_link         = '';
            $payment_ccavenuepay_video_link     = '';
            $payment_ccavenuepay_alert_message     = '';
            
            // check license key after installation success
            
            if(!empty($data['payment_ccavenuepay_license_key'])){
                $checkres  = $b->check_license($data['payment_ccavenuepay_license_key']);
                $getres = json_decode($checkres,true);
                if(!empty($getres['error'])){
                    $data['display'] = $getres['error'];
                }
                if(isset($getres['success'])){
                    
                    $payment_ccavenuepay_pdf_link         = $getres['module_pdf_link'] ;
                    $payment_ccavenuepay_video_link     = $getres['module_video_link'] ;
                    $payment_ccavenuepay_alert_message     = $getres['module_alert_message'] ;
                    
                }
            }
            else{
                
                $checkres  = $b->check_license($data['payment_ccavenuepay_license_key']);
                $getres = json_decode($checkres,true);
            }
            unset($b);
            
            
            $file = DOM_BZ_PATH_PG_201."b.php";
            if(file_exists($file)) {
                $data['payment_ccavenuepay_license_key']     = $this->_pg_lic_key;
                $data['payment_ccavenuepay_pdf_link']         = $payment_ccavenuepay_pdf_link;
                $data['payment_ccavenuepay_video_link']        = $payment_ccavenuepay_video_link;
                $data['payment_ccavenuepay_alert_message']     = $payment_ccavenuepay_alert_message;
            }
            $data['header'] = $this->load->controller('common/header');
            $data['column_left'] = $this->load->controller('common/column_left');
            $data['footer'] = $this->load->controller('common/footer');
            $data['user_token'] = $this->session->data['user_token'];
            $this->response->setOutput($this->load->view('extension/payment/ccavenuepay', $data));
        }
        private function validate() {
            if(!empty($this->request->post['payment_ccavenuepay_license_key'])){
                if($this->request->post['payment_ccavenuepay_license_key']){
                    return true;
                }
            }
            
            if (!$this->user->hasPermission('modify', 'extension/payment/ccavenuepay')) {
                $this->error['warning'] = $this->language->get('error_permission');
            }
            if (!$this->request->post['payment_ccavenuepay_merchant_id']) {
                $this->error['merchant_id'] = $this->language->get('error_merchant_id');
            }
            if (!$this->request->post['payment_ccavenuepay_working_key']) {
                $this->error['working_key'] = $this->language->get('error_working_key');
            }
            if (!$this->request->post['payment_ccavenuepay_access_code']) {
                $this->error['access_code'] = $this->language->get('error_access_code');
            }
            if (!$this->error) {
                return true;
            } else {
                return false;
            }
        }
        public function ccavenue_bz_module_validation()
        {
            $payment_module_validate    = base64_decode('aHR0cHM6Ly9ibHVlemVhbC5pbi9tb2R1bGVfdmFsaWRhdGUvc3VjY2Vzcy5waHA=');
            $poststring    = "server_address=".$_SERVER['SERVER_ADDR']."&domain_url=".$_SERVER['HTTP_HOST']."&module_code=CCAVEN_N_OP";
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL,$payment_module_validate);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
            curl_setopt($ch, CURLOPT_POSTFIELDS,$poststring);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
            $result = curl_exec($ch);
            curl_close($ch);
            return true;
        }
        public function getCcavenueApi($user_token)
        {
            $key_dom="qdfd1i@uj9";
            $b = new Main();
            $dombz= $b->getDomBz($this->_pgmod_ver,$this->_pgcat,$this->_pgcat_ver,$this->_pgcms,$this->_pgcms_ver,$this->_pg_lic_key,$user_token,$key_dom);
            unset($b);
            return $dombz;
        }
        
        /**
         *
         * Update Module Only For Check and Foun New Version of Module.
         * Function is Controller Call to Function in Local Api (ccavenupay)
         */
        function check_module_upload()
        {
            $b = new B();
            $lincese_key = $this->request->get['lincese_key'];
            $module_ver  =  $this->request->get['module_version'];
            $module_name =  $this->request->get['module_name'];
            echo $b->check_module_uploadapi($lincese_key,$module_ver,$module_name);
        }
        public function installbzCc($license_key)
        {
            $b = new B();
            $b->setBZCCLicenceApiTNPrefix(DB_PREFIX);
            $query_array = $b->installMainApi($license_key);
            foreach($query_array as $tmp_query)
            {
                $sql_license_id = $this->db->query($tmp_query);
            }
            if($sql_license_id === false) {
                $count_key = 0;
            }
            else {
                $count_key = $sql_license_id->num_rows;
            }
            $res = $b->setRegisterMainApi($count_key,$license_key);
            if(isset($res['sql_update']))
            {
                $this->db->query($res['sql_update']);
            }
            unset($res['sql_update']);
            return json_encode($res);
        }
        /**
         *
         * Update Module For Found That Update Progress of New Version of Module.
         * This Function Is New Module Version Update now Call to Function in Local Api (ccavenupay)
         */
        public function newmoduleupdate_now()
        {
            $b                 = new B();
            $lincese_key         = $this->request->get['lincese_key'];
            $module_ver         =  $this->request->get['module_version'];
            $module_name         =  $this->request->get['module_name'];
            $newmodule_version     =  $this->request->get['newmodule_version'];
            $new_cms_ver     =  $this->request->get['new_cms_ver'];
            $new_cat_ver     =  $this->request->get['new_cat_ver'];
            echo $b->updatemodule_newversionnow($lincese_key,$module_name,$module_ver,$newmodule_version,$new_cms_ver,$new_cat_ver);
        }
    }
