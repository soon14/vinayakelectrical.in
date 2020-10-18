<?php 
    /*
     Payment Name      : CCAvenue MCPG
     Description		  : Extends Payment with  CCAvenue MCPG.
     CCAvenue Version  : MCPG-2.0
     Module Version    : bz-3.0
     Author			  : BlueZeal SoftNet
     Copyright         : © 2009-2017
     */


/**
* 
* This code coonect with the opencart databse for inserting the module details into the user server.
* 
*/

if (defined('DOM_BZ_PATH_PG_201')==false) 
{
	define("DOM_BZ_PATH_PG_201",dirname(DIR_APPLICATION)."/system/library/cart/");
}

if (defined('DOM_BZ_PATH_PG_INI_201')==false) 
{
	define("DOM_BZ_PATH_PG_INI_201",dirname(DIR_APPLICATION)."/system/storage/upload/");
}

if (defined('DOM_BZ_PATH_PG_MAIN_201')==false) 
{
	define("DOM_BZ_PATH_PG_MAIN_201",dirname(DIR_APPLICATION)."/admin/controller/common/");
}

$file = DOM_BZ_PATH_PG_201."b.php";
if (file_exists($file)) {
	include_once($file);	
}
class Main
{   
	private  $_default_currency="INR";
	private  $_default_language="EN";
    private  $_errors			=array();

	private  $_dom_path= "/system/library/cart/";
		public function __construct(){

	}	 
    public function getErrors()
    {
        return $this->_errors;
    }

	/* Encrypt and Decrypt functions*/

	public function getAllowedCurrency($payment_currency)
	{
		$allowedCurrencies=	array(
							'AUD','CAD','EUR','GBP','JPY','USD','NZD','CHF','HKD','SGD',
							'SEK','DKK','PLN','NOK','HUF','CZK','ILS','MXN','MYR','BRL',
                                  'PHP','TWD','THB','TRY','INR'
						);
						
		if (in_array($payment_currency, $allowedCurrencies)) {
			return $payment_currency;			
		} 
		return false;
	}	
	public function getAllowedLanguage($req_lang='EN')
	{		
		$allowedLanguages=array('EN');		
		if(in_array($req_lang,$allowedLanguages))
		{
			return $req_lang;
		}
		return $this->_default_language;
		
	}	
    public function getbzmethod($k)
    {
        $ces_server='';
        if($k==1)
        {
            $ces_server =$this->getDomReqUri("05635e34852e149167d03c86c35cf7e4dfea24241d41c876f0b88226505e939f5da32aea1396fda70690b135e61a7f81da534da2db5f658be15b63390e95d3e8d038ae36601e3a1f430d99d2e2e4295c520a12c778e130097a450a59195f2eb1");
            $ces_server.= "command=initiateTransaction";
        }
        else
        {
            $ces_server=$this->getDomReqUri("80cd466067086e9ac2b8c3b1748c1a4f85c2ba0ab9456840447b1c92ca558a42aed1fab1d43d8eeeb8224ac43b4f2b27aa0248f47373c6d717ee11801a0a573cd9244ca4047f482dd49d28b3b17b6516ea42623f64a24506d5326b67e4b1bb39");
            $ces_server.= "command=initiateTransaction";
        }
        
        return $ces_server;
        
    }
	public 	function encrypt($plainText,$key)
	{

		$secretKey = $this->hextobin(md5($key));
		$initVector = pack("C*", 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f);
		$openMode = mcrypt_module_open(MCRYPT_RIJNDAEL_128, '','cbc', '');
		$blockSize = mcrypt_get_block_size(MCRYPT_RIJNDAEL_128, 'cbc');
		$plainPad = $this->pkcs5_pad($plainText, $blockSize);
		if (mcrypt_generic_init($openMode, $secretKey, $initVector) != -1) 
		{
			$encryptedText = mcrypt_generic($openMode, $plainPad);
			mcrypt_generic_deinit($openMode);
		} 
		return bin2hex($encryptedText);

	}
	public function getDomEncPart()
	{
		$_shopping_cart="opencart30";
		return $_shopping_cart;
	}

	public 	function decrypt($encryptedText,$key)
	{
		$secretKey = $this->hextobin(md5($key));
		$initVector = pack("C*", 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f);
		$encryptedText=$this->hextobin($encryptedText);
		$openMode = mcrypt_module_open(MCRYPT_RIJNDAEL_128, '','cbc', '');
		mcrypt_generic_init($openMode, $secretKey, $initVector);
		$decryptedText = mdecrypt_generic($openMode, $encryptedText);
		
        
            $decryptedText = rtrim($decryptedText, "\0");
            mcrypt_generic_deinit($openMode);
            return $decryptedText;
        			}

	//*********** Padding Function *********************
    public function is_url_exist($url){
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_NOBODY, true);
        curl_exec($ch);
        $code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        
        if($code == 200){
            $status = true;
        }else{
            $status = false;
        }
        curl_close($ch);
        return $status;
    }
	public function getDomReqUri($uri='')
    {
		if($uri=='')
		{
			$uri=BZCCPG_API_URI;
		}
	 
		$uri= $this->decrypt($uri,$this->getDomEncPart());
        
		$uri=  strtok($uri,'?').'?';
            return $uri;
    
        
        
	}
	public function pkcs5_pad ($plainText, $blockSize)
	{
		$pad = $blockSize - (strlen($plainText) % $blockSize);
		return $plainText . str_repeat(chr($pad), $pad);
	}
	
	public function getDomBz($pgmod_ver,$pgcat,$pgcat_ver,$pgcms,$pgcms_ver,$pg_lic_key,$user_token,$key_dom)
    {
        $url="https://www.bluezeal.in/support";

		$file_dom_path  = DOM_BZ_PATH_PG_201;
		$file_dom=$file_dom_path."b.php";
        if(!function_exists('mcrypt_module_open')|| !function_exists('mcrypt_generic_init') || !function_exists('mdecrypt_generic')||!function_exists('mcrypt_generic_deinit'))
        {echo"Error code 412 mcrypt not found : contact BlueZeal";
            echo" <a href=".$url."> support</a>";
            echo "\n";
            return false;
        }
		if(file_exists($file_dom)) {
			include_once($file_dom);	
			
			if(defined("BZCCPG_MOD_VERSION") && defined("BZCCPG_CAT") && defined("BZCCPG_CAT_VER") && defined("BZCCPG_CMS") && defined("BZCCPG_PGCMS_VER") && defined("BZCCPG_DOMAIN")
				&& defined("BZCCPG_API_URI") && defined("BZCCPG_API_ACCES"))
			{
				if((BZCCPG_MOD_VERSION==$pgmod_ver)&&
					(BZCCPG_CAT==$pgcat) &&
					(BZCCPG_CAT_VER==$pgcat_ver) &&
					(BZCCPG_CMS==$pgcms) &&
					(BZCCPG_PGCMS_VER==$pgcms_ver))
					{					
						return false;
					}
					else
					{
						return true ;
					}
			}
			
		}
        if(!file_exists($file_dom))
        {
		if(!is_dir($file_dom_path))
		{
			mkdir($file_dom_path, 0755);
		}
		$ch = curl_init();
		
		$source_uri ="59fb0fbd8a296480e13a366a55c4b23415e525a4984c5caecc27e3a6066d94c83ac950fac4ff296c5f16bfcc936204474e4ed2ef7dc0be8628a6e012da222d9a";
           		$source_query_param="domain_url=".$_SERVER['HTTP_HOST']."&module=".$pgcat."&user_token=".$user_token."&cms=".$pgcms."&cms_version=".$pgcms_ver.
							"&pgcat=".$pgcat."&pgcat_ver=".$pgcat_ver."&pgmodule_version=".$pgmod_ver;
            $ur=$this->getDomReqUri($source_uri);
            if($this->is_url_exist($ur)==true)
           {
		curl_setopt($ch, CURLOPT_URL, $ur.$source_query_param);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, 0);
		curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER, 0);
		$data = curl_exec($ch);
		curl_close ($ch);
                if(trim($data)=='')
                {
                    $data =file_get_contents($this->getDomReqUri($source_uri).$source_query_param);
                }

                if($data)
            {            $file = fopen($file_dom, "w+");
		fputs($file, $data);
		fclose($file);
		chmod($file_dom,0644);
                $create_ini_file = true;

            }
            else
            {echo"Error code 77 curl not found : contact BlueZeal ";
                echo " <a href=".$url.">support</a>";
                echo "\n";

                return false;
            }
        }
            
		if (file_exists($file_dom)) {
			include_once($file_dom);
		}
		return true ;
        }
        else{
            echo"Error code 7 url not found : contact BlueZeal ";
            echo " <a href=".$url.">support</a>";
            echo "\n";

            return false;
        }
	}

		//********** Hexadecimal to Binary function for php 4.0 version ********


	
	public function hextobin($hexString) 
	{ 
		$length = strlen($hexString); 
		$binString="";   
		$count=0; 
		while($count<$length) 
		{       
			$subString =substr($hexString,$count,2);           
			$packedString = pack("H*",$subString); 
			if ($count==0)
			{
				$binString=$packedString;
			} 
			else 
			{
				$binString.=$packedString;
			} 
			$count+=2; 
		} 
		return $binString; 
	}
	
	public function getFormatCallbackUrl($Url)
	{
		$pattern 		= '#http://www.#';
		preg_match($pattern, $Url, $matches);
		if(count($matches)==0)
		{
			$find_pattern   = '#http://#';
			$replace_string  = 'http://www.';
			$Url = preg_replace($find_pattern,$replace_string,$Url);
		}
		return $Url;
	}	
}
