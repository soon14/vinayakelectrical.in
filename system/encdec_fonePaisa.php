<?php

function encrypt_e($input, $ky) {
	$key = $ky;
	$size = mcrypt_get_block_size(MCRYPT_RIJNDAEL_128, 'cbc');
	$input = pkcs5_pad_e($input, $size);
	$td = mcrypt_module_open(MCRYPT_RIJNDAEL_128, '', 'cbc', '');
	$iv = "@@@@&&&&####$$$$";
	mcrypt_generic_init($td, $key, $iv);
	$data = mcrypt_generic($td, $input);
	mcrypt_generic_deinit($td);
	mcrypt_module_close($td);
	$data = base64_encode($data);
	return $data;
}

function decrypt_e($crypt, $ky) {

	$crypt = base64_decode($crypt);
	$key = $ky;
	$td = mcrypt_module_open(MCRYPT_RIJNDAEL_128, '', 'cbc', '');
	$iv = "@@@@&&&&####$$$$";
	mcrypt_generic_init($td, $key, $iv);
	$decrypted_data = mdecrypt_generic($td, $crypt);
	mcrypt_generic_deinit($td);
	mcrypt_module_close($td);
	$decrypted_data = pkcs5_unpad_e($decrypted_data);
	$decrypted_data = rtrim($decrypted_data);
	return $decrypted_data;
}

function pkcs5_pad_e($text, $blocksize) {
	$pad = $blocksize - (strlen($text) % $blocksize);
	return $text . str_repeat(chr($pad), $pad);
}

function pkcs5_unpad_e($text) {
	$pad = ord($text{strlen($text) - 1});
	if ($pad > strlen($text))
		return false;
	return substr($text, 0, -1 * $pad);
}
// compute signature
function getSign($input, $key){
    $hashinput=$input["api_key"]."#".$input["id"]."#".$input["merchant_id"]."#".$input["invoice"]."#".$input["invoice_amt"]."#";
    $key=str_replace('\n', "\n", $key);
    //var_dump($key);
    $pkeyid = openssl_pkey_get_private($key);
    //var_dump($pkeyid);
    openssl_sign($hashinput, $signature, $pkeyid,"sha512");
    $hexsign=bin2hex ($signature);
    return $hexsign;
}
function fonepaisa_verifymsg($input, $key){
	$hashinput="#".$input["invoice"]."#".$input["payment_reference"]."#";
	$signature=hex2bin($input["sign"]);
	$key=str_replace('\n', "\n", $key);
    $pubkeyid = openssl_pkey_get_public($key);
    // state whether signature is okay or not
	$retval=false;
	$ok = openssl_verify($hashinput, $signature, $pubkeyid,"sha512WithRSAEncryption");
	if ($ok == 1) {
		$retval=true;
	} 
	// free the key from memory
	//openssl_free_key($pubkeyid);
	return $retval;
}
function fonepaisa_inquirepay($input){
	$hashinput=$input["api_key"]."#".$input["id"]."#".$input["merchant_id"]."#".$input["invoice"]."#";
	$pkeyid = openssl_pkey_get_private($input["private_key"]);
	
	// compute signature
	openssl_sign($hashinput, $signature, $pkeyid,"sha512");

	// free the key from memory
	openssl_free_key($pkeyid);
	$hexsign=bin2hex ($signature);
	$postData = array(
		"id"=>$input["id"], 
        	"merchant_id"=>$input["merchant_id"], 
		"sign"=>$hexsign, 
        	"invoice"=>$input["invoice"]
	);

	// Setup cURL
	$ch = curl_init('https://test.fonepaisa.com/portal/payment/inquire');
		curl_setopt_array($ch, array(
    		CURLOPT_POST => TRUE,
    		CURLOPT_RETURNTRANSFER => TRUE,
    		CURLOPT_HTTPHEADER => array(
       		'Content-Type: application/json'
    	),
    	CURLOPT_POSTFIELDS => json_encode($postData)
	));

	// Send the request
	$response = curl_exec($ch);
	// Check for errors
	echo $response;
	if($response === FALSE){
   		 die(curl_error($ch));
		return $response;
	}

	// Decode the response
	$responseData = json_decode($response, TRUE);

	// Print the date from the response
	return $responseData;
		
}
function fonepaisa_cancelpay($input){
	$hashinput=$input["api_key"]."#".$input["id"]."#".$input["merchant_id"]."#".$input["invoice"]."#";
	$pkeyid = openssl_pkey_get_private($input["private_key"]);
	
	// compute signature
	openssl_sign($hashinput, $signature, $pkeyid,"sha512");

	// free the key from memory
	openssl_free_key($pkeyid);
	$hexsign=bin2hex ($signature);
	$postData = array(
		"id"=>$input["id"], 
        	"merchant_id"=>$input["merchant_id"], 
		"sign"=>$hexsign, 
        	"invoice"=>$input["invoice"]
	);

	// Setup cURL
	$ch = curl_init('https://test.fonepaisa.com/portal/payment/cancel');
		curl_setopt_array($ch, array(
    		CURLOPT_POST => TRUE,
    		CURLOPT_RETURNTRANSFER => TRUE,
    		CURLOPT_HTTPHEADER => array(
       		'Content-Type: application/json'
    	),
    	CURLOPT_POSTFIELDS => json_encode($postData)
	));

	// Send the request
	$response = curl_exec($ch);
	// Check for errors
	echo $response;
	if($response === FALSE){
   		 die(curl_error($ch));
		return $response;
	}

	// Decode the response
	$responseData = json_decode($response, TRUE);

	// Print the date from the response
	return $responseData;
		
}