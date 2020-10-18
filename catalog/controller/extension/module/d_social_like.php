<?php
class ControllerExtensionModuleDSocialLike extends Controller {

    private $codename = 'd_social_like';
    private $codename_pro = 'd_social_like_pro';
    private $route = 'extension/module/d_social_like';

    public function __construct($registry)
    {
        parent::__construct($registry);

        $this->load->model($this->route);
        $this->load->language($this->route);
        $this->load->model('extension/d_opencart_patch/load');
    }

    public function index($setting)
    {
        if ((($setting['language_id'] == (int)$this->config->get('config_language_id')) || ($setting['language_id'] == -1))
        && (($setting['store_id'] == (int)$this->config->get('config_store_id')) || ($setting['store_id'] == -1))) {

            $this->document->addScript('//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4d8b33027d80e2ce');

            $data['heading_like_us'] = $this->language->get('heading_like_us');
            $data['button_aready_liked'] = $this->language->get('button_aready_liked');
            $data['button_like_us'] = $this->language->get('button_like_us');


            if (file_exists(DIR_SYSTEM.'library/d_shopunity/extension/'.$this->codename_pro.'.json')) {

                if (file_exists(DIR_CONFIG . $this->codename_pro . '.php')) {
                    $this->config_file = $this->model_extension_module_d_social_like->getConfigFileName($this->codename_pro);
                }

            } else {

                $this->config_file = $this->model_extension_module_d_social_like->getConfigFileName($this->codename);
            }


            $this->config->load($this->config_file);

            $config_setting = ($this->config->get($this->codename)) ? $this->config->get($this->codename) : array();

            if (!empty($setting)) {
                $setting = array_replace_recursive($config_setting, $setting);
            }

            $data['view'] = $setting['view_id'];
            $data['url'] = $setting['url'];

            $sort_order = array();


            foreach ($setting['social_likes'] as $key => $value) {
                $sort_order[$key] = $value['sort_order'];
            }

            array_multisort($sort_order, SORT_ASC, $setting['social_likes']);

            $data['social_likes'] = array();
            $data['count'] = 0;
            $data['design'] = $setting['design'];

            if (isset($setting['social_likes']['stumbleupon'])) {
                if($setting['social_likes']['stumbleupon']['enabled'] && !empty($_SERVER['HTTP_X_FORWARDED_PROTO']) || $setting['social_likes']['stumbleupon']['enabled'] && !empty($_SERVER['HTTPS'])){
                    unset($setting['social_likes']['stumbleupon']);
                }
            }


            foreach ($setting['social_likes'] as $social_like){
                if($social_like['enabled']){
                    $data['count']++;
                    $id = $social_like['id'];
                    $data['social_likes'][$id] = $social_like;
                    $data['social_likes'][$id]['code'] = $this->$id($social_like);
                }
            }

            if (isset($this->request->get['store_id'])) {
                $store_id = $this->request->get['store_id'];
            } else {
                $store_id = 0;
            }

            if (VERSION >= '3.0.0.0') {
                $this->load->model('setting/setting');
                $theme = $this->model_setting_setting->getSettingValue('config_theme', $store_id);
                $this->document->addStyle('catalog/view/theme/' . $theme . '/stylesheet/' . $this->codename . '/icons/'.$setting['design']['icon_theme'].'/styles.css');
            } else {
                $this->document->addStyle('catalog/view/theme/default/stylesheet/' . $this->codename . '/icons/'.$setting['design']['icon_theme'].'/styles.css');
            }

            return $this->model_extension_d_opencart_patch_load->view($this->route, $data);
        }
    }

    public function facebook($social_like)
    {
        $result = '<a class="addthis_button_facebook_like"></a>';
        return $result;
    }

    public function twitter($social_like)
    {
        $result = '<a class="addthis_button_tweet"></a>';
        return $result;
    }

    public function google($social_like)
    {
        $result = '<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>';
        return $result;
    }
    public function vkontakte($social_like)
    {
        $result = '<script type="text/javascript" src="https://vk.com/js/api/openapi.js?136"></script>
            <script type="text/javascript">
            VK.init({apiId: '.$social_like['api'].', onlyWidgets: true});
            </script>
            <div id="vk_like"></div>
            <script type="text/javascript">
            VK.Widgets.Like("vk_like", {type: "button"});
            </script>';
        return $result;
    }
    public function mailru($social_like){
        $result ='<a target="_blank" class="mrc__plugin_uber_like_button" href="https://connect.mail.ru/share" data-mrc-config="{\'cm\' : \'1\', \'sz\' : \'20\', \'st\' : \'2\', \'tp\' : \'mm\'}" >'.$this->language->get('text_like').'</a>
        <script src="https://connect.mail.ru/js/loader.js" type="text/javascript" charset="UTF-8"></script>';
        return $result;
    }
    public function odnoklassniki($social_like){

        $result = '<a id="ok_shareWidget"></a>
            <script>
            !function (d, id, did, st) {
              var js = d.createElement("script");
              js.src = "https://connect.ok.ru/connect.js";
              js.onload = js.onreadystatechange = function () {
              if (!this.readyState || this.readyState == "loaded" || this.readyState == "complete") {
                if (!this.executed) {
                  this.executed = true;
                  setTimeout(function () {
                    OK.CONNECT.insertShareWidget(id,did,st);
                  }, 0);
                }
              }};
              d.documentElement.appendChild(js);
            }(document,"ok_shareWidget",$(location).attr("href"),"{width:145,height:30,st:\'rounded\',sz:20,ck:1}");
            </script>
            ';
        return $result;
    }

    public function pinterest($social_like){
        $result = '<a class="addthis_button_pinterest_pinit"></a>';
        return $result;
    }
    public function linkedin($social_like){
        $result = '<a class="addthis_button_linkedin_counter"></a>';
        return $result;
    }
    public function stumbleupon($social_like)
    {
        $result = '
            <su:badge layout="1"></su:badge>

            <script type="text/javascript">
              (function() {
                var li = document.createElement(\'script\'); li.type = \'text/javascript\'; li.async = true;
                li.src = (\'https:\' == document.location.protocol ? \'https:\' : \'http:\') + \'//platform.stumbleupon.com/1/widgets.js\';
                var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(li, s);
              })();
            </script>';
        return $result;
    }

    public function foursquare($social_like)
    {
        $result ='<a class="addthis_button_foursquare"></a>';
        return $result;
    }

    public function amazon($social_like)
    {
        $result ='<a class="addthis_button_amazonwishlist"></a>';
        return $result;
    }

    public function addthis($social_like)
    {
        $result ='<a class="addthis_counter addthis_pill_style"></a>';
        return $result;
    }
}
?>
