<?php
// Heading
$_['heading_title']    = 'Accu Auto Backup';

// Text
$_['text_success']              = 'Success: You have modified Accu Auto Backup settings!';
$_['text_extension']            = 'Extensions';
$_['text_delete_success']       = 'Success: Backup has been deleted successfully!';
$_['text_enable']               = 'Enable';
$_['text_disable']              = 'Disable';
$_['text_hourly']               = 'Hourly';
$_['text_daily']                = 'Daily';
$_['text_every_other_day']      = 'Every Other Day';
$_['text_fortnightly']          = 'Fortnightly';
$_['text_weekly']               = 'Weekly';
$_['text_monthly']              = 'Monthly';
$_['text_date']                 = 'Date';
$_['text_download']             = 'Download';
$_['text_timezone']             = 'Time Zone';
$_['text_size']                 = 'Size';
$_['text_not_available']        = 'No backups are currently available.';
$_['text_message_general_tab']  = '<i><b>Please remember that you must to enable below modules before using this tool.</b>
                                   <br/>+ Accu Auto backup allow you to take backup as per schedule like (Daily, Weekly, Fortnightly and Monthly).
                                   <br>+ All taken backup is stored in zip format, you can download them from Database Backup Tab.</i>';
$_['text_term']                 = 'We as author/developer don’t give guarantee and don’t promise that the Accu Auto Backup extension will work well on all technical environment though we tried our best and taken care for its best availability and its workability. The Accu Schedule Backup extension from Dhanashree Inc provided "as is" without any warranties, obvious or implied. We will not be responsible for any direct, indirect or any other damage or loss by usage of Accu Auto Backup plug-in. User understands and confirm own responsibility up on agreement of usage of Accu Schedule Backup extension.';
$_['text_schedule']             = 'Backup Schedule';
$_['text_next_schedule']        = 'Next scheduled backup:';
$_['text_last_schedule']        = 'Last backup job run:';
$_['text_manual']               = 'Manual';
$_['text_auto']                 = 'Auto';



// Entry
$_['entry_status']              = 'Schedule Backup Status:';
$_['entry_interval']            = 'Schedule Backup Interval:';
$_['entry_how_many']            = 'No of Backup Copies in Vault:';
$_['entry_cron_url']            = 'Cron URL:';
$_['entry_backup_type']         = 'Backup Type:';

// Help
$_['help_backup_status']        = '<i>Enable or disable the module Accu Auto Backup.</i>';
$_['help_interval']             = '<i>Select schedule time for automatic backup of your database.</i>';
$_['help_timezone']             = '<i>Display date formate based on selected timezone.</i>';
$_['help_backup_cron']          = '<i>Scheduled backups can either be triggered by a Cron Job (recommended) or by visitors to your store (customers).</i>';
$_['help_save_limit']           = '<i>Caution ! It will remove your older back-ups on next backup schedule if current number of backups are more you select.</i>';
$_['help_type']                 = '<i>Select type for the schedule backup.</i>';
$_['help_manual_cron']          = '<strong><i>Note: You can set a cron job with the following path.</i></strong> 
                                   <br/><strong>Cron Path:</strong> %saccubackup/accubackup.php';


// Tabs
$_['tab_settings']              = 'General Settings';
$_['tab_backup']                = 'Database Backups';
$_['tab_term']                  = 'Terms & Condition';

// Error
$_['error_permission']          = 'Warning: You do not have permission to modify Accu Auto Backup module!';
$_['error_window']              = 'Warning: You need to setup cron manually!';
$_['error_cron']                = 'Warning: You are not able to run shell commands. please contact for hosting provider to enable!';
$_['error_header']              = 'Error: Header already sent out!';
$_['error_not_found']           = 'Error: Could not find file %s';