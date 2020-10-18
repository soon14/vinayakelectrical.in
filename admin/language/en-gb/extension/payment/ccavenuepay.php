<?php
    /*
     Payment Name      : CCAvenue MCPG
     Description		  : Extends Payment with  CCAvenue MCPG.
     CCAvenue Version  : MCPG-2.0
     Module Version    : bz-3.0
     Author			  : BlueZeal SoftNet
     Copyright         : © 2009-2017
     */


// Heading
$_['heading_title']							= 'CCAvenue MCPG';

// Text
$_['text_extension']							= 'Extensions';
$_['text_success']							= 'Success: You have modified CCAvenue MCPG account details!';
$_['text_ccavenuepay']						= '<a onclick="window.open(\'https://www.ccavenue.com\');"><img src="https://www.bluezeal.in/images/bz_fev.png" alt="ccavenuepay" title="ccavenuepay" style="border: 1px solid #EEEEEE;" /></a>';

// Entry
$_['entry_status']							= 'Status:';
    $_['entry_testmode']					 = 'Test Mode:';
    $_['entry_debug']					 = 'Debug Mode:';
$_['entry_merchant_id']	                   	= 'Merchant ID:';
$_['entry_access_code']	                   	= 'Access Code:';
$_['entry_working_key']	                	= 'working Key:';
$_['entry_license_key']	                   	= 'License Key:';
$_['entry_payment_confirmation_mail']       = 'Payment Confirmation E-Mail';
$_['entry_total']                           = 'Total:';
$_['entry_geo_zone']						= 'Geo Zone:';
$_['entry_sort_order']						= 'Sort Order:';

$_['entry_completed_status']				= 'Order Status Completed:';
$_['entry_pending_status']			        = 'Order Status Pending:';
$_['entry_failed_status']				    = 'Order Status Failed:';

//Help
$_['help_completed_status']					= 'This is the status set when the payment has been completed successfully.';
$_['help_pending_status']					= 'The payment is pending; see the pending_reason variable for more information. Please note, you will receive another Instant Payment Notification when the status of the payment changes to Completed, Failed, or Denied.';
$_['help_failed_status']					= 'The payment has failed. This will only happen if the payment was attempted from your customers bank account.';
$_['help_total']							= 'The checkout total the order must reach before this payment method becomes active.';
    $_['help_testmode']						 = 'Use the live or testing gateway server to process transactions?';
    $_['help_debug']			    	 = 'Logs additional information to the system log';
    $_['help_merchant_id']='Merchant Id given by ccavenue';
    $_['help_access_code']='Access Code given by ccavenue';
    $_['help_working_key'] ='Working Key given by ccavenue';
    $_['help_payment_confirmation_mail'] = 'Use confirmation mail after successful payment';
    $_['help_geo_zone'] = 'The zone which want to set';
    $_['help_sort_order'] = 'The sorting order of payment system';
// Error
$_['error_permission']						= 'Warning: You do not have permission to modify payment Ccavenue Pay!';
$_['error_merchant_id']						= 'Merchant ID required!';
$_['error_working_key']						= 'working Key required!';
$_['error_access_code']						= 'Access Code required!';
$_['error_license_key']						= 'License Key required!';
?>
