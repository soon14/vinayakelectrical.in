<?php
class ControllerExtensionModuleDigitCartBuyerReview extends Controller {
	private $error = array();
	private $moduleName = 'digitcart_buyer_review';
	private $moduleFilePath = 'extension/module/digitcart_buyer_review';
	private $moduleVersion = '1.0';

	public function index() {
		$lang = $this->load->language($this->moduleFilePath);

		$data['heading_title'] = $this->language->get('heading_title');

		$this->document->setTitle(STRIP_TAGS($this->language->get('heading_title')));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('module_' . $this->moduleName, $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));

		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/' . $this->moduleName, 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['action'] = $this->url->link('extension/module/' . $this->moduleName, 'user_token=' . $this->session->data['user_token'], true);
		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);
		
		$vars = array(
			'status' => 0,
			'messages' => array()
		);
		
		foreach($vars as $var => $default){
			if (isset($this->request->post['module_' . $this->moduleName . '_' . $var])) {
				$data['module_' . $this->moduleName . '_' . $var] = $this->request->post['module_' . $this->moduleName . '_' . $var];
			} elseif($this->config->get('module_' . $this->moduleName . '_' . $var)) {
				$data['module_' . $this->moduleName . '_' . $var] = $this->config->get('module_' . $this->moduleName . '_' . $var);
			} else {
				$data['module_' . $this->moduleName . '_' . $var] = $default;
			}
		}
		
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view($this->moduleFilePath, $data));
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/' . $this->moduleName)) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}