<?php

class ControllerExtensionModuleAccubackup extends Controller
{
    private $_error = array();
    private $_extension = 'accubackup';
    private $_extensionModel = 'model_extension_accubackup_accubackup';

    /**
     * Index Action
     * 
     * @return resource 
     */
    public function index()
    {   
        // Language
        $this->load->language('extension/module/' . $this->_extension);

        // Model
        $this->load->model('setting/setting');

        // Title
        $this->document->setTitle($this->language->get('heading_title'));

        // Styles & scripts
        $this->document->addStyle('view/stylesheet/' . $this->_extension . '.css');
        $this->document->addStyle('view/stylesheet/' . $this->_extension . '/bootstrap-select.min.css');
        $this->document->addScript('view/javascript/' . $this->_extension . '/bootstrap-select.min.js');

        // Save extension settings
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $postData = $this->request->post[$this->_extension];
            
            switch ($postData['ScheduleTime']) {
            case "test_now":
                $nextSchedule = date("Y-m-d H:i:00", strtotime("+2 minutes", time()));
                break;
            case "daily":
                $nextSchedule = date("Y-m-d H:i:00", strtotime("+1 day", time()));
                break;
            case "every_other_day":
                $nextSchedule = date("Y-m-d H:i:00", strtotime("+2 day", time()));
                break;
            case 'weekly':
                $nextSchedule = date("Y-m-d H:i:00", strtotime("+1 week", time()));
                break;
            case 'fortnightly':
                $nextSchedule = date("Y-m-d H:i:00", strtotime("+2 weeks", time()));
                break;
            case 'monthly':
                $nextSchedule = date("Y-m-d H:i:00", strtotime("+1 month", time()));
                break;
            default:
                $nextSchedule = "0000-00-00 00:00:00";
                break;
            }

            $this->request->post[$this->_extension]['nextSchedule'] = $nextSchedule;

            $cronAction = ($postData['Enabled'] == 'yes' && $postData['ScheduleType'] == 'auto') ? 'add' : 'remove';
            $this->cronSetting($cronAction);

            $this->model_setting_setting->editSetting($this->_extension, $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');
            $this->response->redirect($this->url->link('extension/module/' . $this->_extension, 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
        }

        // Language-variables
        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_enable'] = $this->language->get('text_enable');
        $data['text_disable'] = $this->language->get('text_disable');
        $data['text_confirm'] = $this->language->get('text_confirm');
        $data['text_date'] = $this->language->get('text_date');
        $data['text_download'] = $this->language->get('text_download');
        $data['text_size'] = $this->language->get('text_size');
        $data['help_save_limit'] = $this->language->get('help_save_limit');
        $data['text_schedule'] = $this->language->get('text_schedule');
        $data['text_message_general_tab'] = $this->language->get('text_message_general_tab');
        $data['text_next_schedule'] = $this->language->get('text_next_schedule');
        $data['text_last_schedule'] = $this->language->get('text_last_schedule');
        $data['text_timezone'] = $this->language->get('text_timezone');
        $data['text_manual'] = $this->language->get('text_manual');
        $data['text_auto'] = $this->language->get('text_auto');
        $data['text_term'] = $this->language->get('text_term');

        $data['entry_backup_type'] = $this->language->get('entry_backup_type');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_interval'] = $this->language->get('entry_interval');
        $data['entry_how_many'] = $this->language->get('entry_how_many');
        $data['entry_backup_method'] = $this->language->get('entry_backup_method');
        $data['entry_cron_url'] = $this->language->get('entry_cron_url');

        $data['tab_settings'] = $this->language->get('tab_settings');
        $data['tab_backup'] = $this->language->get('tab_backup');
        $data['tab_term'] = $this->language->get('tab_term');

        $data['help_interval'] = $this->language->get('help_interval');
        $data['help_timezone'] = $this->language->get('help_timezone');
        $data['help_backup_cron'] = $this->language->get('help_backup_cron');
        $data['help_manual_cron'] = sprintf($this->language->get('help_manual_cron'), DIR_CONFIG);
        $data['help_type'] = $this->language->get('help_type');
        $data['help_backup_status'] = $this->language->get('help_backup_status');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');


        // Sucess and Error messages
        if (isset($this->session->data['success'])) {
            $data['success'] = $this->session->data['success'];
            unset($this->session->data['success']);
        } else {
            $data['success'] = '';
        }

        if (isset($this->_error['warning'])) {
            $data['error_warning'] = $this->_error['warning'];
        } elseif (isset($this->session->data['error'])) {
            $data['error_warning'] = $this->session->data['error'];
            unset($this->session->data['error']);
        } else {
            $data['error_warning'] = '';
        }

        // Breadcrumbs
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
        );

        $data['breadcrumbs'][] = array(
        'text' => $this->language->get('text_extension'),
        'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/module/accubackup', 'user_token=' . $this->session->data['user_token'], true)
        );

        // Variables
        $data['extension'] = $this->_extension;
        $data['action'] = $this->url->link('extension/module/accubackup', 'user_token=' . $this->session->data['user_token'], true);
        $data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);
        $settings = $this->model_setting_setting->getSetting($this->_extension);
        $data['metaData'] = (isset($settings[$this->_extension])) ? $settings[$this->_extension] : array();
        $data['timezone'] = isset($data['metaData']['Timezone']) ? $data['metaData']['Timezone'] : 'UTC';
        $data['userToken'] = $this->session->data['user_token'];
        $data['option_timezones'] = \DateTimeZone::listIdentifiers(DateTimeZone::ALL);
        $data['option_store_limits'] = 10;
        $data['option_schedules'] = array(
            array('text' => $this->language->get('text_daily'), 'value' => 'daily'),
            array('text' => $this->language->get('text_every_other_day'), 'value' => 'every_other_day'),
            array('text' => $this->language->get('text_weekly'), 'value' => 'weekly'),
            array('text' => $this->language->get('text_fortnightly'), 'value' => 'fortnightly'),
            array('text' => $this->language->get('text_monthly'), 'value' => 'monthly')
        );
        
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        
        
        $this->response->setOutput($this->load->view('extension/module/accubackup', $data));
    }

    /**
     * Install extension
     * 
     * @return null 
     */
    public function install()
    {
        $this->load->model('extension/accubackup/' . $this->_extension);
        $this->{$this->_extensionModel}->install();
        
    }

    /**
     * Un-install extension
     * 
     * @return null 
     */
    public function uninstall()
    {
        $this->cronSetting('remove');
        $this->load->model('setting/setting');
        $this->model_setting_setting->deleteSetting($this->_extension, 0);
        $this->load->model('extension/accubackup/' . $this->_extension);
        $this->{$this->_extensionModel}->uninstall();
    }

     /**
      * Get the current database backups
      * 
      * @return resource 
      */
    public function getDatabaseBackups()
    {
        $this->load->model('setting/setting');
        $this->load->model('extension/accubackup/' . $this->_extension);

        if (!empty($this->request->get['page'])) {
            $page = (int)$this->request->get['page'];
        } else {
            $page = 1;
        }
        
        $data['userToken'] = $this->session->data['user_token'];
        $data['limit'] = 10;
        $data['total'] = $this->{$this->_extensionModel}->getTotalDatabaseBackup();

        $pagination = new Pagination();
        $pagination->total = $data['total'];
        $pagination->page = $page;
        $pagination->limit = $data['limit'];
        $pagination->url = $this->url->link('extension/module/' . $this->_extension . '/getDatabaseBackups', 'user_token=' . $this->session->data['user_token'] . '&page={page}', 'SSL');
        $data['pagination'] = $pagination->render();

        $settings = $this->model_setting_setting->getSetting($this->_extension);
        $metaData = isset($settings[$this->_extension]) ? $settings[$this->_extension] : array();
        $data['timeZone'] = isset($metaData['Timezone']) ? $metaData['Timezone'] : 'UTC';

        $data['backups'] = array();
        $backups = $this->{$this->_extensionModel}->getDatabaseBackups($page, $data['limit']);

        if ($backups) {
            foreach ($backups as $backup) {
                $data['backups'][] = array(
                    'backup_id' => $backup['backup_id'],
                    'filename' => $backup['filename'],
                    'size' => $backup['size'],
                    'date_created' => $backup['date_created'],
                    'href' => $this->url->link('extension/module/' . $this->_extension . '/download', 'user_token=' . $this->session->data['user_token'] . '&code=' . $backup['code'], true)
                );
            }
        }

        $data['results'] = sprintf($this->language->get('text_pagination'), ($data['total']) ? (($page - 1) * $data['limit']) + 1 : 0, ((($page - 1) * $data['limit']) > ($data['total'] - $data['limit'])) ? $data['total'] : ((($page - 1) * $data['limit']) + $data['limit']), $data['total'], ceil($data['total'] / $data['limit']));
        $this->response->setOutput($this->load->view('extension/module/' . $this->_extension . '/view_databasebackup', $data));
    }

     /**
      * Download backup file
      * 
      * @return null 
      */
    public function download()
    {
        $this->load->language('extension/module/' . $this->_extension);
        $this->load->model('extension/accubackup/' . $this->_extension);

        if (isset($this->request->get['code'])) {
            $code = $this->request->get['code'];
        } else {
            $code = '0';
        }

        $result = $this->{$this->_extensionModel}->getBackupByCode($code);

        if ($result) {
            $file = DIR_DOWNLOAD . $result['filename'];
            $mask = basename($file) ? basename($file) : 'Download';
            if (!headers_sent()) {
                if (is_file($file)) {
                    header('Content-type: application/zip');
                    header('Content-Disposition: attachment; filename="' . $mask . '"');
                    header("Content-length: " . filesize($file));
                    header('Content-Transfer-Encoding: binary');
                    header('Pragma: no-cache');
                    header('Expires: 0');
                    ob_end_flush();
                    @readfile($file);
                } else {
                    $this->session->data['error'] = sprintf($this->language->get('error_not_found'), basename($file));
                    $this->response->redirect($this->url->link('extension/module/' . $this->_extension, 'user_token=' . $this->session->data['user_token'], true));
                }
            } else {
                $this->session->data['error'] = $this->language->get('error_header');
                $this->response->redirect($this->url->link('extension/module/' . $this->_extension, 'user_token=' . $this->session->data['user_token'], true));
            }
        }
    }

     /**
      * Remove backup records
      * 
      * @return null 
      */
    public function removeBackup()
    {
        $this->load->language('extension/module/' . $this->_extension);
        $this->load->model('extension/accubackup/' . $this->_extension);

        if (isset($this->request->post['backup_id'])) {
            $result = $this->{$this->_extensionModel}->getBackupById($this->request->post['backup_id']);
            if ($result) {
                $file = DIR_DOWNLOAD . $result['filename'];
                if (file_exists($file)) {
                    @unlink($file);
                    $this->db->query("DELETE FROM " . DB_PREFIX . "accubackup WHERE backup_id = '" . (int)$result['backup_id'] . "'");
                    $this->session->data['success'] = $this->language->get('text_delete_success');
                } else {
                    $this->session->data['error'] = sprintf($this->language->get('error_not_found'), $result['filename']);
                }
            }
        }
    }

    /**
     * Edit the cron jobs
     * 
     * @param string $action 
     * 
     * @return null 
     */
    protected function cronSetting($action = 'add')
    {
        $accuDir = DIR_CONFIG . $this->_extension . '/';
        $command = '* * * * * php ' . $accuDir . 'accubackup.php > /dev/null 2>&1';

        $jobs = explode(PHP_EOL, shell_exec('crontab -l'));
        foreach ($jobs as $key => $job) {
            if (($job == $command) || empty($job)) {
                unset($jobs[$key]);
            }
        }

        $jobs = implode(PHP_EOL, $jobs);
        $command = ($action == 'add') ? $command . PHP_EOL : '';
        file_put_contents($accuDir . 'cron.txt', $jobs . PHP_EOL . $command);
        exec('crontab -r');
        exec('crontab ' . $accuDir . 'cron.txt');
    }

    /**
     * Validation against users with no permissions and shell_exec function status
     * 
     * @return DateTime 
     */
    protected function validate()
    {
        if (!$this->user->hasPermission('modify', 'extension/module/accubackup')) {
            $this->_error['warning'] = $this->language->get('error_permission');
        }

        if ($this->request->post[$this->_extension]['Enabled'] == 'yes' && $this->request->post[$this->_extension]['ScheduleType'] == 'auto') {
            if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
                $this->_error['warning'] = $this->language->get('error_window');
            }

            if (!function_exists('shell_exec') && !trim(shell_exec('echo EXEC')) == 'EXEC') {
                $this->_error['warning'] = $this->language->get('error_cron');
            }
        }

        return !$this->_error;
    }
}
