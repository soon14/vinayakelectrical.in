<?php
class ModelExtensionTfaUser extends Model
{
    public function install()
    {
        $this->db->query(
            "ALTER TABLE `" . DB_PREFIX . "user`
            ADD `shared_secret` VARCHAR(40) NOT NULL AFTER `password`,
            ADD `backup_code` VARCHAR(40) NOT NULL AFTER `shared_secret`,
            ADD `tfa_enable` TINYINT(1) NOT NULL DEFAULT '0' AFTER `backup_code`"
        );
    }

    public function uninstall()
    {
        $this->db->query(
            "ALTER TABLE `" . DB_PREFIX . "user`
            DROP `shared_secret`,
            DROP `backup_code`,
            DROP `tfa_enable`"
        );
    }
}