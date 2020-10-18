<?php

class ControllerExtensionModuleAccubackup extends Controller
{
    private $_extension = 'accubackup';
    private $_extensionModel = 'model_extension_module_accubackup';

    /**
     * Main Function
     * 
     * @return null 
     */
    public function index()
    {
        
        $cronRunTime = date('Y-m-d H:i:00', time());

        // Load model
        $this->load->model('setting/setting');
        $this->load->model('extension/module/' . $this->_extension);

        // Get extension settings
        $settings = $this->model_setting_setting->getSetting($this->_extension);
        $metaData = isset($settings[$this->_extension]) ? $settings[$this->_extension] : array();

        
        
        if ($this->{$this->_extensionModel}->validateScheduled($metaData) === true) {
            $this->{$this->_extensionModel}->optimizeConfiguration();
            $sqlStatements = $this->{$this->_extensionModel}->getTables();

            if (!empty($sqlStatements)) {
                // Create backup Zip
                $filename = "backup-" . date("Y-m-d-H-i", time()) . ".sql";
                
                $this->{$this->_extensionModel}->createSql(DIR_DOWNLOAD, $filename, $sqlStatements);
                $zipData = $this->{$this->_extensionModel}->createBackupZip(DIR_DOWNLOAD, $filename);

                if ($zipData) {
                    $zipData['date_created'] = $cronRunTime;
                    $this->{$this->_extensionModel}->insertBackup($zipData);

                    // Update Settings
                    $nextschedule = $this->{$this->_extensionModel}->getNextBackupSchedule($metaData['ScheduleTime'], $cronRunTime);
                    $settings[$this->_extension]['nextSchedule'] = $nextschedule;
                    $this->model_setting_setting->editSetting($this->_extension, $settings);
                }

                // Remove backup above limits
                $files = $this->{$this->_extensionModel}->getBackup();
                if ($files) {
                    foreach ($files as $key => $file) {
                        if (++$key > (int) $metaData['SaveLimit']) {
                            $filename = DIR_DOWNLOAD . $file['filename'];
                            $this->{$this->_extensionModel}->deleteBackup($filename, $file['backup_id']);
                        }
                    }
                }
            }
        }
    }
}
