<?php

// Heading
$_['heading_title']      	= 'PzOpencart'; 

// Text 
$_['text_payment']       	= 'Extensions';

//$_['text_pumcp']      		= '<a onclick="window.open(\'https://www.payumoney.com\');"><img src="view/image/payment/payulogo.png" alt="PayUmoney" title="PayUmoney" style="border: 1px solid #EEEEEE;" height="25" /></a><a onclick="window.open(\'http://www.citruspay.com/\');"><img src="view/image/payment/citrus.png" alt="Citrus Website" title="Citrus Website" style="border: 1px solid #EEEEEE;" height="30" /></a>';

$_['text_edit'] 			= 'Edit Module Parameters';

//General Settings
//$_['entry_route']    		= 'Route Traffic (%):';
//$_['entry_route_pz']  	    = 'PzOpencart';
//$_['entry_route_cs'] 	= 'PzOpencart Pay';
//$_['help_route'] 			= '% of total transactions to route to each gateway. This option will come into effect only if both PzOpencart and Cs are configured.';

$_['entry_module']   		= 'Gateway Mode:';  
$_['entry_module_id'] 		='Test|Live';
//$_['entry_geo_zone']     	= 'Geo Zone:';
//$_['entry_currency']		= 'Currency';
//$_['entry_total']        	= 'Total';
$_['entry_order_status'] 	= 'Success Order Status:';
$_['entry_order_fail_status'] = 'Cancel/Fail Order Status:';
$_['text_disabled']  		= 'Disabled';
$_['text_enabled']  		= 'Enabled';
$_['entry_status']       	= 'Status:';
//$_['entry_sort_order']   	= 'Sort Order:';
$_['text_success']       	= 'Success: You have successfully modified Payment settings';
//$_['help_total']       		= 'Order total on which this payment option to be available for checkout.';
//$_['help_currency']			= 'Three-letter ISO 4217 currency code required. e.g. USD,INR,etc.';
// Entry Pz
$_['entry_merchant']     	= 'Merchant Key:';
$_['entry_workingkey']     	= 'Working Key:';
$_['entry_partner_name']    = 'Partner Name:';
$_['entry_partner_id']      = 'Partner ID:';
$_['entry_testurl']         = 'Test Url:';
$_['entry_liveurl']         = 'Live Url:';
//$_['entry_salt']         	= 'Salt:';
//$_['help_salt']		     	= 'Enter the Salt value provided by PzOpencart.';
$_['help_merchant']		    = 'Enter the Merchant Key provided by PzOpencart.';
$_['help_workingkey']	    = 'Enter the Working Key provided by PzOpencart.';
$_['help_partner_name']	    = 'Enter the Partner Name provided by PzOpencart.';
$_['help_partner_id']	    = 'Enter the Partner ID provided by PzOpencart.';
$_['help_testurl']	        = 'Enter the Test Url provided by PzOpencart.';
$_['help_liveurl']	        = 'Enter the Live Url provided by PzOpencart.';


//Entry Cs
$_['entry_vturl']  		    = 'Payment or Vt Url:';
$_['entry_access_key']  	= 'Access Key:';
$_['entry_secret_key']  	= 'Secret Key:';
$_['help_vturl']		    = 'Payment or Vt URL as provided by Cs Pay.';
$_['help_accesskey']		= 'Access Key as provided by Cs Pay.';
$_['help_secretkey']		= 'Secret Key as provided by Cs Pay.';

// Error
$_['error_permission']   	= 'Warning: You do not have permission to modify payment details!';
//$_['error_route']     	    = 'Total %-ge value must be equal to 100!';
//Error Pz
$_['error_merchant']     	= 'Merchant Key Required!';
$_['error_workingkey']     	= 'Working Key Required!';
$_['error_partner_name']    = 'Partner Name Required!';
$_['error_partner_id']      = 'Partner ID Required!';
$_['error_testurl']         = 'Test Url Required!';
$_['error_liveurl']         = 'Live Url Required!';
//$_['error_salt']         	= 'Salt Required!';
//Error Cs
$_['error_module']   		= 'Invalid Mode';
$_['error_vtrul']   	    = 'Invalid payment or vt url';
$_['error_accesskey']   	= 'Invalid access key';
$_['error_secretkey']   	= 'Invalid secret key';
//$_['error_currency']		= 'Currency code required.';
$_['error_status'] 			= 'Either PzOpencart or Cs Pay parameters must be configured to enable this module.';



?>