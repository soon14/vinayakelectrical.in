<?php

class ModelExtensionAccubackupAccubackup extends Model
{
     /**
      * Create database while installing
      * 
      * @return null 
      */
    public function install()
    {
        $this->db->query(
            "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "accubackup` (
		`backup_id` INT(11) NOT NULL AUTO_INCREMENT,
		`filename` varchar(160) NULL DEFAULT NULL,
                `code` varchar(128) NULL DEFAULT NULL,
                `size` varchar(128) NULL DEFAULT NULL,
                `date_created` DATETIME NULL DEFAULT NULL,
		PRIMARY KEY (`backup_id`))"
        );
        
        $this->db->query("UPDATE `" . DB_PREFIX . "modification` SET status = 1 WHERE `name` LIKE'%Accu Auto Backup%'");
        
        $data['redirect'] = 'extension/extension/module';
        $this->load->controller('marketplace/modification/refresh', $data);
       
    }

    /**
     * Remove database while un-installing
     * 
     * @return null 
     */
    public function uninstall()
    {
        $this->db->query("DROP TABLE IF EXISTS `" . DB_PREFIX . "accubackup`");
        $this->db->query("UPDATE `" . DB_PREFIX . "modification` SET status = 0 WHERE `name` LIKE'%Accu Auto Backup%'");
       
        $data['redirect'] = 'extension/extension/module';
        $this->load->controller('marketplace/modification/refresh', $data);
        
    }

    /**
     * Get count of stored backup
     * 
     * @return string 
     */
    public function getTotalDatabaseBackup()
    {
        $query = "SELECT COUNT(*) as `count`  FROM `" . DB_PREFIX . "accubackup`";
        $query = $this->db->query($query);
        return $query->row['count'];
    }

    /**
     * Get stored backup
     * 
     * @param int $page 
     * @param int $limit 
     * 
     * @return array() 
     */
    public function getDatabaseBackups($page = 1, $limit = 8)
    {
        if ($page) {
            $start = ($page - 1) * $limit;
        }

        $query = "SELECT * FROM `" . DB_PREFIX . "accubackup` ORDER BY `backup_id` DESC LIMIT " . $start . "," . $limit . "";
        $query = $this->db->query($query);
        return $query->rows;
    }
    
    /**
     * Get backup by code
     * 
     * @param string $code 
     * 
     * @return array() 
     */
    public function getBackupByCode($code)
    {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "accubackup WHERE code = '" . $this->db->escape($code) . "'");
        return $query->row;
    }

    /**
     * Get backup by code
     * 
     * @param int $id 
     * 
     * @return array() 
     */
    public function getBackupById($id)
    {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "accubackup WHERE backup_id = " . (int) $id . "");
        return $query->row;
    }
}
