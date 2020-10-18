<?php

class ModelExtensionPaymentPartially extends Model {

  public function getOffers($apiKey) {
    if (empty($apiKey)) return array();

    $endpoint = 'https://partial.ly/api/v1/offer';

		$headers = array();
		$headers[] = 'Content-Type: application/json';
		$headers[] = 'Authorization: Bearer ' . $apiKey;

    $opts = array(
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_URL => $endpoint,
      CURLOPT_HTTPHEADER => $headers
		);

    $ch = curl_init();

    curl_setopt_array($ch, $opts);

		$raw_response = curl_exec($ch);

    if (curl_errno($ch)) {
        //error message
        $err = curl_error($ch);
        $this->log('get '.$endpoint.' curl_error: '.$err);
    }

		curl_close($ch);

    try {
      return json_decode($raw_response);
    }
    catch (Exception $ex) {
      return false;
    }
	}

  public function log($msg) {
		$this->log->write('Partial.ly debug ->  ' . $msg);
	}

}
