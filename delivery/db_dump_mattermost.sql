-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mattermost
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
-- Table structure for table `Audits`
--

DROP TABLE IF EXISTS `Audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Audits` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Action` text DEFAULT NULL,
  `ExtraInfo` text DEFAULT NULL,
  `IpAddress` varchar(64) DEFAULT NULL,
  `SessionId` varchar(26) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_audits_user_id` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Audits`
--

LOCK TABLES `Audits` WRITE;
/*!40000 ALTER TABLE `Audits` DISABLE KEYS */;
INSERT INTO `Audits` VALUES ('1fmu77g5z7fyxbbriyhddr6uio',1612053678383,'iyd7hd9jb7btmn11u1ksm69cha','/api/v4/users/login','failure - login_id=','10.10.14.108',''),('1n6wih8dsiywbmk6humi7ct4oh',1608997364289,'','/api/v4/users/login','attempt - login_id=root@delivery.htb','172.16.10.141',''),('3a4x5gpgsbyaxfngp41m5b9yzc',1608997393140,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/config','updateConfig','172.16.10.141','k3zsxzj5tf8c5p5kj9g78js5tr'),('3hb3yi3gmffc7xnatpb8tkwxir',1608997958118,'','/api/v4/users/login','failure - login_id=root@delivery.htb','172.16.10.141',''),('53uh4a51kfyxmkymf8y75c5tte',1612054476307,'yzf11h45sfr5fxf3pzp14dpgwy','/api/v4/users/me/patch','','10.10.15.142','zjuso941q3yqjxkjfx9cs1d9bc'),('5ctos1w633dr8fi54idx54f6ih',1608997387985,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/config','updateConfig','172.16.10.141','k3zsxzj5tf8c5p5kj9g78js5tr'),('5p37izkjjjfgidkidhari8sr1e',1608997978333,'','/api/v4/users/login','attempt - login_id=root@delivery.htb','172.16.10.141',''),('5xc91cn7sigsmxi87hq3euuz7y',1612054431564,'yzf11h45sfr5fxf3pzp14dpgwy','/api/v4/users/login','failure - login_id=','10.10.15.142',''),('64acxgf167yuidndxdgpypeejh',1612054474810,'yzf11h45sfr5fxf3pzp14dpgwy','/api/v4/users/login','authenticated','10.10.15.142',''),('6ecdzjwsgtdqmdrnzethz7xkjh',1612053765293,'','/api/v4/users/login','attempt - login_id=5776744@delivery.htb','10.10.14.108',''),('6x6s6qgofff9iyio9itze6wpiy',1612054474720,'','/api/v4/users/login','attempt - login_id=7921318@delivery.htb','10.10.15.142',''),('7wpz5gcbzbbn8jszgkgiuzza6r',1612054431477,'yzf11h45sfr5fxf3pzp14dpgwy','/api/v4/users/login','attempt - login_id=','10.10.15.142',''),('84xtob7sf7nijqd9dapi73axrh',1608998186447,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','authenticated','172.16.10.141',''),('8i8u8e4y3jr1pb366dx7ncbd5w',1608998186230,'','/api/v4/users/login','attempt - login_id=root@delivery.htb','172.16.10.141',''),('8rbdyie8ci89jfatjgdspzqnkw',1608992692731,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','authenticated','172.16.10.141',''),('9nttneeut3b6bduyyarbwtrj1c',1608996353428,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/teams/h86mz1b743bpjx8qh41eji1seh/patch','','172.16.10.141','54mqntkhttyjdkoy8qzpo9jwew'),('9qx8zw836pb6p8c4cfct5frnma',1608992692523,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','attempt - login_id=','172.16.10.141',''),('a3sie8ch9tfatbjgnzwyaweyke',1609844800822,'','/api/v4/users/email/verify','Email Verified','10.10.14.2',''),('aga7gwqz5fy9pjb5matk8h4jra',1612054460324,'','/api/v4/users/email/verify','Email Verified','10.10.15.142',''),('azsyy9uhufbcmxqef86ts39kwr',1608997957901,'','/api/v4/users/login','attempt - login_id=root@delivery.htb','172.16.10.141',''),('b1kj17rihff7j8kkmo5f1u8ath',1609157893371,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/dijg7mcf4tf3xrgxi5ntqdefma/password','completed','10.10.14.4','g8g69hmmtpdrdg4uze4mmpscfo'),('bd7udow1ftdnimd4asfi1bj4ky',1608996340258,'','/api/v4/users/login','attempt - login_id=root@delivery.htb','172.16.10.141',''),('duaxydqo7frdugt6xct4yjqrkr',1608992780988,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/channels','name=registration','172.16.10.141','okstqwmmk7y38y6zgx9ji3cbcy'),('e8rtqmcd8bdr3bn4awam1ch8ga',1608996350357,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/teams/h86mz1b743bpjx8qh41eji1seh/patch','','172.16.10.141','54mqntkhttyjdkoy8qzpo9jwew'),('gbqduqzq7j8cjjg1pwrek6cdbh',1612053765381,'','/api/v4/users/login','failure - login_id=5776744@delivery.htb','10.10.14.108',''),('gi35i47zcirttpfwd8eyw6ukuw',1608992692738,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','success session_user=dijg7mcf4tf3xrgxi5ntqdefma','172.16.10.141','okstqwmmk7y38y6zgx9ji3cbcy'),('he1qk655nfrqfe7jmwnpo8dtpo',1608992908493,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/channels/8ob4mxssnbnz9geck8w57cbgpa/convert','name=registration','172.16.10.141','okstqwmmk7y38y6zgx9ji3cbcy'),('hh744fj7gjbddx1xyz5yy6nqhe',1608992914973,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/channels/j8fakn9s4ff8zxntprn896364h/convert','name=status','172.16.10.141','okstqwmmk7y38y6zgx9ji3cbcy'),('i8ok3ycckbbddg9y6gai5jowfo',1612055115956,'','/api/v4/users/login','attempt - login_id=root','10.10.14.19',''),('izdtm6h1qt8i7gt1wpx31jscsc',1608996340490,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','success session_user=dijg7mcf4tf3xrgxi5ntqdefma','172.16.10.141','54mqntkhttyjdkoy8qzpo9jwew'),('k5kkoffejbns5ei19ub1u4o4ye',1608996340475,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','authenticated','172.16.10.141',''),('k7wctqjspjgcd8ki9at4b9icde',1608992818877,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/channels','name=status','172.16.10.141','okstqwmmk7y38y6zgx9ji3cbcy'),('kckfjxfhkbnjdfux5z9ittmp9y',1609157822638,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/me/patch','','10.10.14.4','g8g69hmmtpdrdg4uze4mmpscfo'),('kz3og9hx1tf3ic4h5yxsnig69y',1612055116050,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','authenticated','10.10.14.19',''),('nak4dtrj97rodgjfyjg1rsz31w',1609157821681,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','success session_user=dijg7mcf4tf3xrgxi5ntqdefma','10.10.14.4','g8g69hmmtpdrdg4uze4mmpscfo'),('nc5kmxq93jfy98hgy5aii76iaa',1608992894048,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/channels/harjaajgcibjmet16whpqiyxew/patch','','172.16.10.141','okstqwmmk7y38y6zgx9ji3cbcy'),('nynxes1zoiyo9gyayt8zdg5n8r',1612054474812,'yzf11h45sfr5fxf3pzp14dpgwy','/api/v4/users/login','success session_user=yzf11h45sfr5fxf3pzp14dpgwy','10.10.15.142','zjuso941q3yqjxkjfx9cs1d9bc'),('odmgc45kgtf57boifeuri4dtoh',1608992904564,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/channels/xsyd179cgtnpj88sxqi75453yc/convert','name=off-topic','172.16.10.141','okstqwmmk7y38y6zgx9ji3cbcy'),('ph8ea7bqjb8jx8bjg8ucsxifyo',1608997364549,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','success session_user=dijg7mcf4tf3xrgxi5ntqdefma','172.16.10.141','k3zsxzj5tf8c5p5kj9g78js5tr'),('qn4zxhbbxpywdb81ixik3m9ahh',1608996386968,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/config','updateConfig','172.16.10.141','54mqntkhttyjdkoy8qzpo9jwew'),('reaj4krfyfgriki6h3x98bxkba',1608998186454,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','success session_user=dijg7mcf4tf3xrgxi5ntqdefma','172.16.10.141','fzo79a91ejr7j8pjt9qfa3x46r'),('tbracg5chi83irjudpacciddfe',1609157821678,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','authenticated','10.10.14.4',''),('w13gmoiq97ntxd5jykhgxktpue',1612053460264,'wq7f71k54ib1fdzdr3y3s3r84r','/api/v4/users/login','attempt - login_id=','10.10.14.108',''),('w59xjchht3gbpgrbyb56o7sepo',1612053460352,'wq7f71k54ib1fdzdr3y3s3r84r','/api/v4/users/login','failure - login_id=','10.10.14.108',''),('w7ux1q8bjprd3koq6n1rjig4ba',1608997978440,'','/api/v4/users/login','failure - login_id=root@delivery.htb','172.16.10.141',''),('wi3bzp6fq3yxijnh6wsuhmt1er',1612055116056,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','success session_user=dijg7mcf4tf3xrgxi5ntqdefma','10.10.14.19','ozc3toyb4b8i9bxemgwxt5knhe'),('xfff1pypwfri7f9auksu3s7ate',1609157821583,'','/api/v4/users/login','attempt - login_id=root@delivery.htb','10.10.14.4',''),('xgz4g7b59inzun6bz7dajbon6y',1612053678291,'iyd7hd9jb7btmn11u1ksm69cha','/api/v4/users/login','attempt - login_id=','10.10.14.108',''),('y7ssjts8i7bd8j65o76fxg3ina',1609157893207,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/dijg7mcf4tf3xrgxi5ntqdefma/password','attempted','10.10.14.4','g8g69hmmtpdrdg4uze4mmpscfo'),('ygoyb6zukpgj7kpcbyx71mtq1w',1608992693053,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/me/patch','','172.16.10.141','okstqwmmk7y38y6zgx9ji3cbcy'),('yzutswkpsiynbq1f8twpxqnrge',1608996390662,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/config','updateConfig','172.16.10.141','54mqntkhttyjdkoy8qzpo9jwew'),('z1rggzswatykznd9s6pc5pd1tr',1608998346041,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/config','updateConfig','172.16.10.141','fzo79a91ejr7j8pjt9qfa3x46r'),('zg6rjwhzxt87mqphcnrnipkpfh',1608997364528,'dijg7mcf4tf3xrgxi5ntqdefma','/api/v4/users/login','authenticated','172.16.10.141','');
/*!40000 ALTER TABLE `Audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bots`
--

DROP TABLE IF EXISTS `Bots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bots` (
  `UserId` varchar(26) NOT NULL,
  `Description` text DEFAULT NULL,
  `OwnerId` varchar(190) DEFAULT NULL,
  `LastIconUpdate` bigint(20) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bots`
--

LOCK TABLES `Bots` WRITE;
/*!40000 ALTER TABLE `Bots` DISABLE KEYS */;
INSERT INTO `Bots` VALUES ('64nq8nue7pyhpgwm99a949mwya','Surveybot collects user feedback to improve Mattermost. [Learn more](https://mattermost.com/pl/default-nps).','com.mattermost.nps',0,1608992663717,1608992663717,0),('jing8rk6mjdbudcidw6wz94rdy','A bot account created by the channel export plugin.','com.mattermost.plugin-channel-export',0,1608992663694,1608992663694,0);
/*!40000 ALTER TABLE `Bots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChannelMemberHistory`
--

DROP TABLE IF EXISTS `ChannelMemberHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChannelMemberHistory` (
  `ChannelId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `JoinTime` bigint(20) NOT NULL,
  `LeaveTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ChannelId`,`UserId`,`JoinTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChannelMemberHistory`
--

LOCK TABLES `ChannelMemberHistory` WRITE;
/*!40000 ALTER TABLE `ChannelMemberHistory` DISABLE KEYS */;
INSERT INTO `ChannelMemberHistory` VALUES ('4mtk1sqwebn35d7ojnin1zd84a','64nq8nue7pyhpgwm99a949mwya',1612055116077,NULL),('4mtk1sqwebn35d7ojnin1zd84a','dijg7mcf4tf3xrgxi5ntqdefma',1612055116076,NULL),('8ob4mxssnbnz9geck8w57cbgpa','dijg7mcf4tf3xrgxi5ntqdefma',1608992780971,NULL),('harjaajgcibjmet16whpqiyxew','dijg7mcf4tf3xrgxi5ntqdefma',1608992747717,NULL),('harjaajgcibjmet16whpqiyxew','yzf11h45sfr5fxf3pzp14dpgwy',1612054481839,NULL),('j8fakn9s4ff8zxntprn896364h','dijg7mcf4tf3xrgxi5ntqdefma',1608992818852,NULL),('xsyd179cgtnpj88sxqi75453yc','dijg7mcf4tf3xrgxi5ntqdefma',1608992747756,NULL);
/*!40000 ALTER TABLE `ChannelMemberHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChannelMembers`
--

DROP TABLE IF EXISTS `ChannelMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChannelMembers` (
  `ChannelId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `Roles` varchar(64) DEFAULT NULL,
  `LastViewedAt` bigint(20) DEFAULT NULL,
  `MsgCount` bigint(20) DEFAULT NULL,
  `MentionCount` bigint(20) DEFAULT NULL,
  `NotifyProps` text DEFAULT NULL,
  `LastUpdateAt` bigint(20) DEFAULT NULL,
  `SchemeUser` tinyint(4) DEFAULT NULL,
  `SchemeAdmin` tinyint(4) DEFAULT NULL,
  `SchemeGuest` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ChannelId`,`UserId`),
  KEY `idx_channelmembers_channel_id` (`ChannelId`),
  KEY `idx_channelmembers_user_id` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChannelMembers`
--

LOCK TABLES `ChannelMembers` WRITE;
/*!40000 ALTER TABLE `ChannelMembers` DISABLE KEYS */;
INSERT INTO `ChannelMembers` VALUES ('4mtk1sqwebn35d7ojnin1zd84a','64nq8nue7pyhpgwm99a949mwya','',0,0,0,'{\"desktop\":\"default\",\"email\":\"default\",\"ignore_channel_mentions\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1612055116068,1,0,0),('4mtk1sqwebn35d7ojnin1zd84a','dijg7mcf4tf3xrgxi5ntqdefma','',1612055116085,1,0,'{\"desktop\":\"default\",\"email\":\"default\",\"ignore_channel_mentions\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1612055116085,1,0,0),('8ob4mxssnbnz9geck8w57cbgpa','dijg7mcf4tf3xrgxi5ntqdefma','',1608992908485,1,0,'{\"desktop\":\"default\",\"email\":\"default\",\"ignore_channel_mentions\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1608992908485,1,1,0),('harjaajgcibjmet16whpqiyxew','dijg7mcf4tf3xrgxi5ntqdefma','',1612054481841,4,0,'{\"desktop\":\"default\",\"email\":\"default\",\"ignore_channel_mentions\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1612054481841,1,1,0),('harjaajgcibjmet16whpqiyxew','yzf11h45sfr5fxf3pzp14dpgwy','',1612054481841,4,0,'{\"desktop\":\"default\",\"email\":\"default\",\"ignore_channel_mentions\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1612054481841,1,0,0),('j8fakn9s4ff8zxntprn896364h','dijg7mcf4tf3xrgxi5ntqdefma','',1608992914962,1,0,'{\"desktop\":\"default\",\"email\":\"default\",\"ignore_channel_mentions\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1608992914962,1,1,0),('xsyd179cgtnpj88sxqi75453yc','dijg7mcf4tf3xrgxi5ntqdefma','',1608992904543,1,0,'{\"desktop\":\"default\",\"email\":\"default\",\"ignore_channel_mentions\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1608992904543,1,1,0);
/*!40000 ALTER TABLE `ChannelMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Channels`
--

DROP TABLE IF EXISTS `Channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Channels` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `Type` varchar(1) DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Header` text DEFAULT NULL,
  `Purpose` varchar(250) DEFAULT NULL,
  `LastPostAt` bigint(20) DEFAULT NULL,
  `TotalMsgCount` bigint(20) DEFAULT NULL,
  `ExtraUpdateAt` bigint(20) DEFAULT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `SchemeId` varchar(26) DEFAULT NULL,
  `GroupConstrained` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`,`TeamId`),
  KEY `idx_channels_team_id` (`TeamId`),
  KEY `idx_channels_name` (`Name`),
  KEY `idx_channels_update_at` (`UpdateAt`),
  KEY `idx_channels_create_at` (`CreateAt`),
  KEY `idx_channels_delete_at` (`DeleteAt`),
  KEY `idx_channels_scheme_id` (`SchemeId`),
  FULLTEXT KEY `idx_channel_search_txt` (`Name`,`DisplayName`,`Purpose`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Channels`
--

LOCK TABLES `Channels` WRITE;
/*!40000 ALTER TABLE `Channels` DISABLE KEYS */;
INSERT INTO `Channels` VALUES ('4mtk1sqwebn35d7ojnin1zd84a',1612055116066,1612055116082,0,'','D','','64nq8nue7pyhpgwm99a949mwya__dijg7mcf4tf3xrgxi5ntqdefma','Surveybot collects user feedback to improve Mattermost. [Learn more](https://mattermost.com/pl/default-nps).','',1612055116085,1,0,'',NULL,NULL),('8ob4mxssnbnz9geck8w57cbgpa',1608992780952,1608992908481,0,'h86mz1b743bpjx8qh41eji1seh','P','Registration','registration','','',1608992908485,1,0,'dijg7mcf4tf3xrgxi5ntqdefma','',0),('harjaajgcibjmet16whpqiyxew',1608992747668,1608992894029,0,'h86mz1b743bpjx8qh41eji1seh','O','Internal','town-square','','',1612054481841,4,0,'',NULL,NULL),('j8fakn9s4ff8zxntprn896364h',1608992818839,1608992914955,0,'h86mz1b743bpjx8qh41eji1seh','P','Status','status','','',1608992914962,1,0,'dijg7mcf4tf3xrgxi5ntqdefma','',0),('xsyd179cgtnpj88sxqi75453yc',1608992747674,1608992904507,0,'h86mz1b743bpjx8qh41eji1seh','P','Off-Topic','off-topic','','',1608992904543,1,0,'',NULL,NULL);
/*!40000 ALTER TABLE `Channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterDiscovery`
--

DROP TABLE IF EXISTS `ClusterDiscovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterDiscovery` (
  `Id` varchar(26) NOT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `ClusterName` varchar(64) DEFAULT NULL,
  `Hostname` text DEFAULT NULL,
  `GossipPort` int(11) DEFAULT NULL,
  `Port` int(11) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `LastPingAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterDiscovery`
--

LOCK TABLES `ClusterDiscovery` WRITE;
/*!40000 ALTER TABLE `ClusterDiscovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterDiscovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CommandWebhooks`
--

DROP TABLE IF EXISTS `CommandWebhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CommandWebhooks` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `CommandId` varchar(26) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `RootId` varchar(26) DEFAULT NULL,
  `ParentId` varchar(26) DEFAULT NULL,
  `UseCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_command_webhook_create_at` (`CreateAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CommandWebhooks`
--

LOCK TABLES `CommandWebhooks` WRITE;
/*!40000 ALTER TABLE `CommandWebhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `CommandWebhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Commands`
--

DROP TABLE IF EXISTS `Commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Commands` (
  `Id` varchar(26) NOT NULL,
  `Token` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `Trigger` varchar(128) DEFAULT NULL,
  `Method` varchar(1) DEFAULT NULL,
  `Username` varchar(64) DEFAULT NULL,
  `IconURL` text DEFAULT NULL,
  `AutoComplete` tinyint(1) DEFAULT NULL,
  `AutoCompleteDesc` text DEFAULT NULL,
  `AutoCompleteHint` text DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `URL` text DEFAULT NULL,
  `PluginId` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_command_team_id` (`TeamId`),
  KEY `idx_command_update_at` (`UpdateAt`),
  KEY `idx_command_create_at` (`CreateAt`),
  KEY `idx_command_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commands`
--

LOCK TABLES `Commands` WRITE;
/*!40000 ALTER TABLE `Commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `Commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Compliances`
--

DROP TABLE IF EXISTS `Compliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Compliances` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Status` varchar(64) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `Desc` text DEFAULT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `StartAt` bigint(20) DEFAULT NULL,
  `EndAt` bigint(20) DEFAULT NULL,
  `Keywords` text DEFAULT NULL,
  `Emails` text DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compliances`
--

LOCK TABLES `Compliances` WRITE;
/*!40000 ALTER TABLE `Compliances` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Emoji`
--

DROP TABLE IF EXISTS `Emoji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Emoji` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`,`DeleteAt`),
  KEY `idx_emoji_update_at` (`UpdateAt`),
  KEY `idx_emoji_create_at` (`CreateAt`),
  KEY `idx_emoji_delete_at` (`DeleteAt`),
  KEY `idx_emoji_name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Emoji`
--

LOCK TABLES `Emoji` WRITE;
/*!40000 ALTER TABLE `Emoji` DISABLE KEYS */;
/*!40000 ALTER TABLE `Emoji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileInfo`
--

DROP TABLE IF EXISTS `FileInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileInfo` (
  `Id` varchar(26) NOT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `PostId` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `Path` text DEFAULT NULL,
  `ThumbnailPath` text DEFAULT NULL,
  `PreviewPath` text DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Extension` varchar(64) DEFAULT NULL,
  `Size` bigint(20) DEFAULT NULL,
  `MimeType` text DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `HasPreviewImage` tinyint(1) DEFAULT NULL,
  `MiniPreview` mediumblob DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_fileinfo_update_at` (`UpdateAt`),
  KEY `idx_fileinfo_create_at` (`CreateAt`),
  KEY `idx_fileinfo_delete_at` (`DeleteAt`),
  KEY `idx_fileinfo_postid_at` (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileInfo`
--

LOCK TABLES `FileInfo` WRITE;
/*!40000 ALTER TABLE `FileInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupChannels`
--

DROP TABLE IF EXISTS `GroupChannels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupChannels` (
  `GroupId` varchar(26) NOT NULL,
  `AutoAdd` tinyint(1) DEFAULT NULL,
  `SchemeAdmin` tinyint(1) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `ChannelId` varchar(26) NOT NULL,
  PRIMARY KEY (`GroupId`,`ChannelId`),
  KEY `idx_groupchannels_channelid` (`ChannelId`),
  KEY `idx_groupchannels_schemeadmin` (`SchemeAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupChannels`
--

LOCK TABLES `GroupChannels` WRITE;
/*!40000 ALTER TABLE `GroupChannels` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupChannels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupMembers`
--

DROP TABLE IF EXISTS `GroupMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupMembers` (
  `GroupId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`GroupId`,`UserId`),
  KEY `idx_groupmembers_create_at` (`CreateAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupMembers`
--

LOCK TABLES `GroupMembers` WRITE;
/*!40000 ALTER TABLE `GroupMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupTeams`
--

DROP TABLE IF EXISTS `GroupTeams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupTeams` (
  `GroupId` varchar(26) NOT NULL,
  `AutoAdd` tinyint(1) DEFAULT NULL,
  `SchemeAdmin` tinyint(1) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `TeamId` varchar(26) NOT NULL,
  PRIMARY KEY (`GroupId`,`TeamId`),
  KEY `idx_groupteams_teamid` (`TeamId`),
  KEY `idx_groupteams_schemeadmin` (`SchemeAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupTeams`
--

LOCK TABLES `GroupTeams` WRITE;
/*!40000 ALTER TABLE `GroupTeams` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupTeams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IncomingWebhooks`
--

DROP TABLE IF EXISTS `IncomingWebhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IncomingWebhooks` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `IconURL` text DEFAULT NULL,
  `ChannelLocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_incoming_webhook_user_id` (`UserId`),
  KEY `idx_incoming_webhook_team_id` (`TeamId`),
  KEY `idx_incoming_webhook_update_at` (`UpdateAt`),
  KEY `idx_incoming_webhook_create_at` (`CreateAt`),
  KEY `idx_incoming_webhook_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IncomingWebhooks`
--

LOCK TABLES `IncomingWebhooks` WRITE;
/*!40000 ALTER TABLE `IncomingWebhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `IncomingWebhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `Id` varchar(26) NOT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `Priority` bigint(20) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `StartAt` bigint(20) DEFAULT NULL,
  `LastActivityAt` bigint(20) DEFAULT NULL,
  `Status` varchar(32) DEFAULT NULL,
  `Progress` bigint(20) DEFAULT NULL,
  `Data` text DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_jobs_type` (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES ('4umr6mqqkt8pmj854moeymx9ba','expiry_notify',0,1609000269384,1609000282816,1609000282825,'success',0,'{}'),('9npd43ac4t8a5jii87nidspw8w','expiry_notify',0,1609845284230,1609845287523,1609845287527,'success',0,'{}'),('9o4h3y9857fx7xhyqs73d6xh9e','expiry_notify',0,1612054620088,1612054629337,1612054629340,'success',0,'{}'),('cjwwbmttit8burixbkbh131p5o','expiry_notify',0,1612054020078,1612054029306,1612054029310,'success',0,'{}'),('mguc97a4yjgib8xf41db8exfnr','migrations',0,1608992724081,1608992726182,1608992726392,'success',0,'{\"last_done\":\"{\\\"current_table\\\":\\\"ChannelMembers\\\",\\\"last_team_id\\\":\\\"00000000000000000000000000\\\",\\\"last_channel_id\\\":\\\"00000000000000000000000000\\\",\\\"last_user\\\":\\\"00000000000000000000000000\\\"}\",\"migration_key\":\"migration_advanced_permissions_phase_2\"}'),('rzdodupurtr57dcbp6f4pfweoo','expiry_notify',0,1612053420073,1612053429158,1612053429160,'success',0,'{}'),('ud5j3obtdf87pgp8f5rsfqxodw','expiry_notify',0,1608999669369,1608999682595,1608999682603,'success',0,'{}'),('z555t7f6pinndq5of8fjfupxjy','expiry_notify',0,1609844684222,1609844687472,1609844687474,'success',0,'{}');
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Licenses`
--

DROP TABLE IF EXISTS `Licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Licenses` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `Bytes` text DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Licenses`
--

LOCK TABLES `Licenses` WRITE;
/*!40000 ALTER TABLE `Licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LinkMetadata`
--

DROP TABLE IF EXISTS `LinkMetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LinkMetadata` (
  `Hash` bigint(20) NOT NULL,
  `URL` text DEFAULT NULL,
  `Timestamp` bigint(20) DEFAULT NULL,
  `Type` varchar(16) DEFAULT NULL,
  `Data` text DEFAULT NULL,
  PRIMARY KEY (`Hash`),
  KEY `idx_link_metadata_url_timestamp` (`URL`(512),`Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LinkMetadata`
--

LOCK TABLES `LinkMetadata` WRITE;
/*!40000 ALTER TABLE `LinkMetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `LinkMetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OAuthAccessData`
--

DROP TABLE IF EXISTS `OAuthAccessData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuthAccessData` (
  `ClientId` varchar(26) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Token` varchar(26) NOT NULL,
  `RefreshToken` varchar(26) DEFAULT NULL,
  `RedirectUri` text DEFAULT NULL,
  `ExpiresAt` bigint(20) DEFAULT NULL,
  `Scope` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Token`),
  UNIQUE KEY `ClientId` (`ClientId`,`UserId`),
  KEY `idx_oauthaccessdata_client_id` (`ClientId`),
  KEY `idx_oauthaccessdata_user_id` (`UserId`),
  KEY `idx_oauthaccessdata_refresh_token` (`RefreshToken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OAuthAccessData`
--

LOCK TABLES `OAuthAccessData` WRITE;
/*!40000 ALTER TABLE `OAuthAccessData` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAuthAccessData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OAuthApps`
--

DROP TABLE IF EXISTS `OAuthApps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuthApps` (
  `Id` varchar(26) NOT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `ClientSecret` varchar(128) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `IconURL` text DEFAULT NULL,
  `CallbackUrls` text DEFAULT NULL,
  `Homepage` text DEFAULT NULL,
  `IsTrusted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_oauthapps_creator_id` (`CreatorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OAuthApps`
--

LOCK TABLES `OAuthApps` WRITE;
/*!40000 ALTER TABLE `OAuthApps` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAuthApps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OAuthAuthData`
--

DROP TABLE IF EXISTS `OAuthAuthData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuthAuthData` (
  `ClientId` varchar(26) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Code` varchar(128) NOT NULL,
  `ExpiresIn` int(11) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `RedirectUri` text DEFAULT NULL,
  `State` text DEFAULT NULL,
  `Scope` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Code`),
  KEY `idx_oauthauthdata_client_id` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OAuthAuthData`
--

LOCK TABLES `OAuthAuthData` WRITE;
/*!40000 ALTER TABLE `OAuthAuthData` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAuthAuthData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OutgoingWebhooks`
--

DROP TABLE IF EXISTS `OutgoingWebhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OutgoingWebhooks` (
  `Id` varchar(26) NOT NULL,
  `Token` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `TriggerWords` text DEFAULT NULL,
  `TriggerWhen` int(11) DEFAULT NULL,
  `CallbackURLs` text DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `ContentType` varchar(128) DEFAULT NULL,
  `Username` varchar(64) DEFAULT NULL,
  `IconURL` text DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_outgoing_webhook_team_id` (`TeamId`),
  KEY `idx_outgoing_webhook_update_at` (`UpdateAt`),
  KEY `idx_outgoing_webhook_create_at` (`CreateAt`),
  KEY `idx_outgoing_webhook_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OutgoingWebhooks`
--

LOCK TABLES `OutgoingWebhooks` WRITE;
/*!40000 ALTER TABLE `OutgoingWebhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `OutgoingWebhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PluginKeyValueStore`
--

DROP TABLE IF EXISTS `PluginKeyValueStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PluginKeyValueStore` (
  `PluginId` varchar(190) NOT NULL,
  `PKey` varchar(50) NOT NULL,
  `PValue` mediumblob DEFAULT NULL,
  `ExpireAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PluginId`,`PKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PluginKeyValueStore`
--

LOCK TABLES `PluginKeyValueStore` WRITE;
/*!40000 ALTER TABLE `PluginKeyValueStore` DISABLE KEYS */;
INSERT INTO `PluginKeyValueStore` VALUES ('com.mattermost.nps','ServerUpgrade-5.30.0','{\"server_version\":\"5.30.0\",\"upgrade_at\":\"2020-12-26T14:24:23.754676158Z\"}',0),('com.mattermost.nps','Survey-5.30.0','{\"server_version\":\"5.30.0\",\"create_at\":\"2020-12-26T14:24:23.754676158Z\",\"start_at\":\"2021-01-16T14:24:23.754676158Z\"}',0),('com.mattermost.nps','UserSurvey-dijg7mcf4tf3xrgxi5ntqdefma','{\"server_version\":\"5.30.0\",\"sent_at\":\"2021-01-31T01:05:16.058181593Z\",\"answered_at\":\"0001-01-01T00:00:00Z\",\"score_post_id\":\"muw4b4xwuigp5xpthjezxm94dc\",\"disabled\":false}',0),('com.mattermost.plugin-channel-export','mmi_botid','jing8rk6mjdbudcidw6wz94rdy',0);
/*!40000 ALTER TABLE `PluginKeyValueStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posts` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `EditAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `IsPinned` tinyint(1) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `RootId` varchar(26) DEFAULT NULL,
  `ParentId` varchar(26) DEFAULT NULL,
  `OriginalId` varchar(26) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `Type` varchar(26) DEFAULT NULL,
  `Props` text DEFAULT NULL,
  `Hashtags` text DEFAULT NULL,
  `Filenames` text DEFAULT NULL,
  `FileIds` varchar(150) DEFAULT NULL,
  `HasReactions` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_posts_update_at` (`UpdateAt`),
  KEY `idx_posts_create_at` (`CreateAt`),
  KEY `idx_posts_delete_at` (`DeleteAt`),
  KEY `idx_posts_channel_id` (`ChannelId`),
  KEY `idx_posts_root_id` (`RootId`),
  KEY `idx_posts_user_id` (`UserId`),
  KEY `idx_posts_is_pinned` (`IsPinned`),
  KEY `idx_posts_channel_id_update_at` (`ChannelId`,`UpdateAt`),
  KEY `idx_posts_channel_id_delete_at_create_at` (`ChannelId`,`DeleteAt`,`CreateAt`),
  FULLTEXT KEY `idx_posts_message_txt` (`Message`),
  FULLTEXT KEY `idx_posts_hashtags_txt` (`Hashtags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES ('13i5mosqhpymjxkmjgunqcyg8c',1608993008002,1608998219507,0,1608998219507,0,'dijg7mcf4tf3xrgxi5ntqdefma','harjaajgcibjmet16whpqiyxew','','','9ndxdfds138a7dj8hxjsxkoz8a','Also please create a program to help us stop re-using the same passwords everywhere.','','{\"disable_group_highlight\":true}','','[]','[]',0),('5zztpoqae3fudfyhn89nkunohy',1608992908485,1608992908485,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','8ob4mxssnbnz9geck8w57cbgpa','','','','This channel has been converted to a Private Channel.','system_change_chan_privacy','{\"username\":\"root\"}','','[]','[]',0),('9ndxdfds138a7dj8hxjsxkoz8a',1608993008002,1609157941192,1609157941192,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','harjaajgcibjmet16whpqiyxew','','','','Also please create a program to help us stop re-using the same passwords everywhere.... Especially those that are a variant of \"PleaseSubscribe!\"','','{\"disable_group_highlight\":true}','','[]','[]',0),('bdonuuqb5jyqpnry5hdyutbpya',1608992985586,1608992985586,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','harjaajgcibjmet16whpqiyxew','','','','@developers Please update theme to the OSTicket before we go live.  Credentials to the server are maildeliverer:Youve_G0t_Mail! ','','{\"disable_group_highlight\":true}','','[]','[]',0),('dyx5xeo54idzzpewscoxu6u71a',1608992904543,1608992904543,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','xsyd179cgtnpj88sxqi75453yc','','','','This channel has been converted to a Private Channel.','system_change_chan_privacy','{\"username\":\"root\"}','','[]','[]',0),('dzyxu481zbbb3dr5n8zbr5g4fr',1608992780973,1608992780973,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','8ob4mxssnbnz9geck8w57cbgpa','','','','root joined the channel.','system_join_channel','{\"username\":\"root\"}','','[]','[]',0),('f8yswuw7b3n1mmwmnpw93h5uxe',1608992747763,1608992747763,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','xsyd179cgtnpj88sxqi75453yc','','','','root joined the channel.','system_join_channel','{\"username\":\"root\"}','','[]','[]',0),('fdkw1mqq3pypmftin7juwfhfyo',1608992747720,1608992747720,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','harjaajgcibjmet16whpqiyxew','','','','root joined the team.','system_join_team','{\"username\":\"root\"}','','[]','[]',0),('hghrpg8eubryjpdncoyjwc58da',1608992818862,1608992818862,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','j8fakn9s4ff8zxntprn896364h','','','','root joined the channel.','system_join_channel','{\"username\":\"root\"}','','[]','[]',0),('hz5xd1c3ofyhtmee67z8op4ppy',1608998298945,1609157962314,0,1609157962314,0,'dijg7mcf4tf3xrgxi5ntqdefma','harjaajgcibjmet16whpqiyxew','','','yifeh4h8rtnxdb7ei6gsq9e66o','PleaseSubscribe may not be in RockYou but if any hacker manages to get our hashes, they can use hashcat rules to easily crack all variations of common words.','','{\"disable_group_highlight\":true}','','[]','[]',0),('j9r3ph11n3y3femedzgem9nr7r',1608993008002,1609157941192,1608998219507,1609157941192,0,'dijg7mcf4tf3xrgxi5ntqdefma','harjaajgcibjmet16whpqiyxew','','','9ndxdfds138a7dj8hxjsxkoz8a','Also please create a program to help us stop re-using the same passwords everywhere.... Especially those that are a variant of PleaseSubscribe!','','{\"disable_group_highlight\":true}','','[]','[]',0),('muw4b4xwuigp5xpthjezxm94dc',1612055116085,1612055116085,0,0,0,'64nq8nue7pyhpgwm99a949mwya','4mtk1sqwebn35d7ojnin1zd84a','','','',':wave: Hey @root! Please take a few moments to help us improve your experience with Mattermost.','custom_nps_survey','{\"attachments\":[{\"id\":0,\"fallback\":\"\",\"color\":\"\",\"pretext\":\"\",\"author_name\":\"\",\"author_link\":\"\",\"author_icon\":\"\",\"title\":\"How likely are you to recommend Mattermost?\",\"title_link\":\"\",\"text\":\"\",\"fields\":null,\"image_url\":\"\",\"thumb_url\":\"\",\"footer\":\"\",\"footer_icon\":\"\",\"ts\":null,\"actions\":[{\"id\":\"sh4n8mqmcpbct8d8ws76nxdmjc\",\"type\":\"select\",\"name\":\"Select an option...\",\"options\":[{\"text\":\"10 (Very Likely)\",\"value\":\"10\"},{\"text\":\"9\",\"value\":\"9\"},{\"text\":\"8\",\"value\":\"8\"},{\"text\":\"7\",\"value\":\"7\"},{\"text\":\"6\",\"value\":\"6\"},{\"text\":\"5\",\"value\":\"5\"},{\"text\":\"4\",\"value\":\"4\"},{\"text\":\"3\",\"value\":\"3\"},{\"text\":\"2\",\"value\":\"2\"},{\"text\":\"1\",\"value\":\"1\"},{\"text\":\"0 (Not Likely)\",\"value\":\"0\"}],\"integration\":{\"url\":\"/plugins/com.mattermost.nps/api/v1/score\"}},{\"id\":\"5x7bzdj1sidwfktfxn3dhorepa\",\"type\":\"button\",\"name\":\"Disable\",\"integration\":{\"url\":\"/plugins/com.mattermost.nps/api/v1/disable_for_user\"}}]}],\"from_bot\":\"true\"}','','[]','[]',0),('toyq8zq8wprnuf1ft89hbrhauy',1612054481841,1612054481841,0,0,0,'yzf11h45sfr5fxf3pzp14dpgwy','harjaajgcibjmet16whpqiyxew','','','','okokok joined the team.','system_join_team','{\"username\":\"okokok\"}','','[]','[]',0),('tu3cquhiajgxtj36pt4x1bcrsa',1608992914962,1608992914962,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','j8fakn9s4ff8zxntprn896364h','','','','This channel has been converted to a Private Channel.','system_change_chan_privacy','{\"username\":\"root\"}','','[]','[]',0),('y8ia3b7g4ffu9ksdme5suysiew',1608992894038,1608992894038,0,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','harjaajgcibjmet16whpqiyxew','','','','root updated the channel display name from: Town Square to: Internal','system_displayname_change','{\"new_displayname\":\"Internal\",\"old_displayname\":\"Town Square\",\"username\":\"root\"}','','[]','[]',0),('yifeh4h8rtnxdb7ei6gsq9e66o',1608998298945,1609157962314,1609157962314,0,0,'dijg7mcf4tf3xrgxi5ntqdefma','harjaajgcibjmet16whpqiyxew','','','','PleaseSubscribe! may not be in RockYou but if any hacker manages to get our hashes, they can use hashcat rules to easily crack all variations of common words or phrases.','','{\"disable_group_highlight\":true}','','[]','[]',0);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Preferences`
--

DROP TABLE IF EXISTS `Preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Preferences` (
  `UserId` varchar(26) NOT NULL,
  `Category` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Value` text DEFAULT NULL,
  PRIMARY KEY (`UserId`,`Category`,`Name`),
  KEY `idx_preferences_user_id` (`UserId`),
  KEY `idx_preferences_category` (`Category`),
  KEY `idx_preferences_name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Preferences`
--

LOCK TABLES `Preferences` WRITE;
/*!40000 ALTER TABLE `Preferences` DISABLE KEYS */;
INSERT INTO `Preferences` VALUES ('6akd5cxuhfgrbny81nj55au4za','tutorial_step','6akd5cxuhfgrbny81nj55au4za','0'),('6wkx1ggn63r7f8q1hpzp7t4iiy','tutorial_step','6wkx1ggn63r7f8q1hpzp7t4iiy','0'),('dijg7mcf4tf3xrgxi5ntqdefma','channel_approximate_view_time','','1612054610300'),('dijg7mcf4tf3xrgxi5ntqdefma','channel_approximate_view_time','harjaajgcibjmet16whpqiyxew','1609157940000'),('dijg7mcf4tf3xrgxi5ntqdefma','channel_open_time','4mtk1sqwebn35d7ojnin1zd84a','1612054597300'),('dijg7mcf4tf3xrgxi5ntqdefma','direct_channel_show','64nq8nue7pyhpgwm99a949mwya','true'),('dijg7mcf4tf3xrgxi5ntqdefma','tutorial_step','dijg7mcf4tf3xrgxi5ntqdefma','999'),('hatotzdacb8mbe95hm4ei8i7ny','tutorial_step','hatotzdacb8mbe95hm4ei8i7ny','0'),('iyd7hd9jb7btmn11u1ksm69cha','tutorial_step','iyd7hd9jb7btmn11u1ksm69cha','0'),('n9magehhzincig4mm97xyft9sc','tutorial_step','n9magehhzincig4mm97xyft9sc','0'),('wq7f71k54ib1fdzdr3y3s3r84r','tutorial_step','wq7f71k54ib1fdzdr3y3s3r84r','0'),('yzf11h45sfr5fxf3pzp14dpgwy','channel_approximate_view_time','','1612053947900'),('yzf11h45sfr5fxf3pzp14dpgwy','tutorial_step','yzf11h45sfr5fxf3pzp14dpgwy','999');
/*!40000 ALTER TABLE `Preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductNoticeViewState`
--

DROP TABLE IF EXISTS `ProductNoticeViewState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductNoticeViewState` (
  `UserId` varchar(26) NOT NULL,
  `NoticeId` varchar(26) NOT NULL,
  `Viewed` int(11) DEFAULT NULL,
  `Timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UserId`,`NoticeId`),
  KEY `idx_notice_views_timestamp` (`Timestamp`),
  KEY `idx_notice_views_user_id` (`UserId`),
  KEY `idx_notice_views_notice_id` (`NoticeId`),
  KEY `idx_notice_views_user_notice` (`UserId`,`NoticeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductNoticeViewState`
--

LOCK TABLES `ProductNoticeViewState` WRITE;
/*!40000 ALTER TABLE `ProductNoticeViewState` DISABLE KEYS */;
INSERT INTO `ProductNoticeViewState` VALUES ('6akd5cxuhfgrbny81nj55au4za','2',1,1609844799),('6akd5cxuhfgrbny81nj55au4za','server_upgrade_v5.30',1,1609844799),('6wkx1ggn63r7f8q1hpzp7t4iiy','2',1,1609844806),('6wkx1ggn63r7f8q1hpzp7t4iiy','server_upgrade_v5.30',1,1609844806),('dijg7mcf4tf3xrgxi5ntqdefma','2',1,1608992692),('hatotzdacb8mbe95hm4ei8i7ny','2',1,1609844805),('hatotzdacb8mbe95hm4ei8i7ny','server_upgrade_v5.30',1,1609844805),('n9magehhzincig4mm97xyft9sc','2',1,1609844789),('n9magehhzincig4mm97xyft9sc','server_upgrade_v5.30',1,1609844789);
/*!40000 ALTER TABLE `ProductNoticeViewState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublicChannels`
--

DROP TABLE IF EXISTS `PublicChannels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublicChannels` (
  `Id` varchar(26) NOT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Header` text DEFAULT NULL,
  `Purpose` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`,`TeamId`),
  KEY `idx_publicchannels_team_id` (`TeamId`),
  KEY `idx_publicchannels_name` (`Name`),
  KEY `idx_publicchannels_delete_at` (`DeleteAt`),
  FULLTEXT KEY `idx_publicchannels_search_txt` (`Name`,`DisplayName`,`Purpose`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublicChannels`
--

LOCK TABLES `PublicChannels` WRITE;
/*!40000 ALTER TABLE `PublicChannels` DISABLE KEYS */;
INSERT INTO `PublicChannels` VALUES ('harjaajgcibjmet16whpqiyxew',0,'h86mz1b743bpjx8qh41eji1seh','Internal','town-square','','');
/*!40000 ALTER TABLE `PublicChannels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reactions`
--

DROP TABLE IF EXISTS `Reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reactions` (
  `UserId` varchar(26) NOT NULL,
  `PostId` varchar(26) NOT NULL,
  `EmojiName` varchar(64) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PostId`,`UserId`,`EmojiName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reactions`
--

LOCK TABLES `Reactions` WRITE;
/*!40000 ALTER TABLE `Reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Roles` (
  `Id` varchar(26) NOT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `DisplayName` varchar(128) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `Permissions` text DEFAULT NULL,
  `SchemeManaged` tinyint(1) DEFAULT NULL,
  `BuiltIn` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES ('4bcmuemwmprnukpg38siojhebr','team_post_all_public','authentication.roles.team_post_all_public.name','authentication.roles.team_post_all_public.description',1608992659113,1608992659633,0,' use_group_mentions create_post_public use_channel_mentions',0,1),('59pa67o773fk5gob779qtni3rh','system_user','authentication.roles.global_user.name','authentication.roles.global_user.description',1608992659114,1608992659634,0,' delete_emojis list_public_teams join_public_teams create_direct_channel create_group_channel view_members create_team create_emojis',1,1),('7ypii387d7dujpfh3g59wkak4o','team_admin','authentication.roles.team_admin.name','authentication.roles.team_admin.description',1608992659099,1608992659636,0,' manage_others_slash_commands manage_incoming_webhooks create_post manage_public_channel_members convert_public_channel_to_private read_public_channel_groups manage_others_incoming_webhooks add_reaction delete_others_posts read_private_channel_groups import_team manage_team manage_private_channel_members use_group_mentions manage_team_roles manage_outgoing_webhooks manage_others_outgoing_webhooks convert_private_channel_to_public remove_reaction delete_post manage_slash_commands remove_user_from_team manage_channel_roles use_channel_mentions',1,1),('9s8dudfy7fb75c17uo93y44jty','system_admin','authentication.roles.global_admin.name','authentication.roles.global_admin.description',1608992659105,1608992659637,0,' delete_public_channel read_others_bots get_public_link manage_system_wide_oauth delete_others_emojis delete_private_channel convert_public_channel_to_private manage_slash_commands create_user_access_token manage_incoming_webhooks create_private_channel create_public_channel manage_team_roles sysconsole_write_integrations sysconsole_write_reporting remove_others_reactions manage_system read_other_users_teams manage_private_channel_members read_public_channel_groups manage_private_channel_properties list_public_teams sysconsole_write_compliance list_private_teams manage_bots manage_others_bots create_emojis join_public_teams read_jobs demote_to_guest create_bot sysconsole_read_plugins sysconsole_read_user_management_teams sysconsole_read_user_management_system_roles list_team_channels view_members remove_reaction sysconsole_read_integrations invite_guest upload_file sysconsole_write_authentication sysconsole_write_user_management_permissions manage_shared_channels read_user_access_token sysconsole_read_authentication sysconsole_read_experimental create_group_channel sysconsole_read_about manage_outgoing_webhooks sysconsole_read_environment read_bots edit_post manage_team edit_other_users sysconsole_write_user_management_users sysconsole_write_plugins manage_oauth manage_public_channel_members edit_others_posts read_private_channel_groups sysconsole_read_user_management_channels create_direct_channel sysconsole_write_user_management_system_roles delete_post read_channel manage_jobs create_post add_reaction remove_user_from_team sysconsole_write_user_management_channels add_user_to_team delete_others_posts create_post_public manage_channel_roles use_slash_commands promote_guest use_channel_mentions sysconsole_read_user_management_users sysconsole_read_reporting view_team convert_private_channel_to_public revoke_user_access_token invite_user join_public_channels manage_roles create_team sysconsole_read_user_management_groups assign_system_admin_role manage_others_incoming_webhooks sysconsole_write_site list_users_without_team sysconsole_write_user_management_teams sysconsole_write_about join_private_teams create_post_ephemeral read_public_channel sysconsole_read_compliance use_group_mentions delete_emojis import_team manage_others_slash_commands assign_bot sysconsole_write_experimental sysconsole_read_site manage_others_outgoing_webhooks sysconsole_write_environment sysconsole_read_user_management_permissions manage_public_channel_properties sysconsole_write_user_management_groups edit_brand',1,1),('dghnsdf5kbnumdfm8m1j5md4ah','team_user','authentication.roles.team_user.name','authentication.roles.team_user.description',1608992659124,1608992659639,0,' view_team create_public_channel create_private_channel invite_user add_user_to_team list_team_channels join_public_channels read_public_channel',1,1),('dzmd3zycu7yjbrioogxdc43gdy','system_read_only_admin','authentication.roles.system_read_only_admin.name','authentication.roles.system_read_only_admin.description',1608992659120,1608992659641,0,' sysconsole_read_user_management_teams sysconsole_read_reporting read_private_channel_groups read_other_users_teams sysconsole_read_experimental read_public_channel sysconsole_read_user_management_permissions sysconsole_read_user_management_groups view_team sysconsole_read_site sysconsole_read_plugins sysconsole_read_authentication list_private_teams read_channel read_jobs sysconsole_read_user_management_users sysconsole_read_user_management_channels sysconsole_read_compliance sysconsole_read_about list_public_teams read_public_channel_groups sysconsole_read_environment sysconsole_read_integrations',0,1),('et86w9n7qpr7idfya3ykwuczaa','team_guest','authentication.roles.team_guest.name','authentication.roles.team_guest.description',1608992659096,1608992659642,0,' view_team',1,1),('gugj48utgpnpbq437j6raajepr','system_post_all','authentication.roles.system_post_all.name','authentication.roles.system_post_all.description',1608992659109,1608992659643,0,' use_channel_mentions create_post use_group_mentions',0,1),('h6grie68ajfnzpea73rhukbbbo','channel_guest','authentication.roles.channel_guest.name','authentication.roles.channel_guest.description',1608992659121,1608992659645,0,' remove_reaction upload_file edit_post create_post use_channel_mentions use_slash_commands read_channel add_reaction',1,1),('hky1zmrtipfptrxsnwbfzshrbw','team_post_all','authentication.roles.team_post_all.name','authentication.roles.team_post_all.description',1608992659127,1608992659646,0,' create_post use_group_mentions use_channel_mentions',0,1),('hogbsd7xhigf3pqt7ir1firm1c','system_user_manager','authentication.roles.system_user_manager.name','authentication.roles.system_user_manager.description',1608992659111,1608992659648,0,' read_channel manage_public_channel_members sysconsole_read_user_management_channels sysconsole_read_user_management_permissions convert_public_channel_to_private manage_private_channel_properties view_team manage_team_roles read_private_channel_groups sysconsole_write_user_management_teams manage_team sysconsole_write_user_management_groups manage_public_channel_properties list_private_teams join_private_teams manage_channel_roles read_public_channel_groups delete_private_channel delete_public_channel convert_private_channel_to_public remove_user_from_team sysconsole_read_user_management_teams sysconsole_write_user_management_channels read_jobs sysconsole_read_authentication list_public_teams sysconsole_read_user_management_groups join_public_teams manage_private_channel_members add_user_to_team read_public_channel',0,1),('jjduc9jzr3y3pjnjbj8j5rqt8h','channel_user','authentication.roles.channel_user.name','authentication.roles.channel_user.description',1608992659123,1608992659649,0,' delete_private_channel manage_public_channel_properties manage_private_channel_properties edit_post use_group_mentions use_channel_mentions manage_public_channel_members manage_private_channel_members remove_reaction create_post add_reaction read_channel get_public_link upload_file read_private_channel_groups delete_public_channel delete_post use_slash_commands read_public_channel_groups',1,1),('nrxmfgqbki8kpbu489dx855x4h','system_guest','authentication.roles.global_guest.name','authentication.roles.global_guest.description',1608992659103,1608992659650,0,' create_group_channel create_direct_channel',1,1),('rim1i5bjrirp7pomnomynphhjw','system_manager','authentication.roles.system_manager.name','authentication.roles.system_manager.description',1608992659118,1608992659652,0,' read_public_channel_groups view_team sysconsole_read_site sysconsole_read_user_management_teams convert_private_channel_to_public manage_jobs read_private_channel_groups sysconsole_write_user_management_permissions sysconsole_write_user_management_teams sysconsole_write_integrations sysconsole_read_about sysconsole_read_plugins sysconsole_read_user_management_permissions sysconsole_read_user_management_groups edit_brand manage_team_roles manage_public_channel_members sysconsole_write_environment delete_public_channel sysconsole_read_user_management_channels manage_team manage_private_channel_properties list_private_teams sysconsole_read_reporting read_jobs read_channel delete_private_channel sysconsole_write_user_management_groups join_public_teams sysconsole_write_user_management_channels join_private_teams convert_public_channel_to_private sysconsole_read_environment manage_private_channel_members add_user_to_team sysconsole_read_authentication list_public_teams manage_channel_roles sysconsole_read_integrations manage_public_channel_properties sysconsole_write_site read_public_channel remove_user_from_team',0,1),('uu7seq74hiygpfd1oter94h87a','channel_admin','authentication.roles.channel_admin.name','authentication.roles.channel_admin.description',1608992659107,1608992659654,0,' read_public_channel_groups manage_public_channel_members add_reaction use_channel_mentions create_post use_group_mentions read_private_channel_groups manage_private_channel_members manage_channel_roles remove_reaction',1,1),('ygkq5fjf83bupg1skrrwegifsa','system_user_access_token','authentication.roles.system_user_access_token.name','authentication.roles.system_user_access_token.description',1608992659116,1608992659655,0,' create_user_access_token read_user_access_token revoke_user_access_token',0,1),('ywwxg1oneink886s3mudkhxw9e','system_post_all_public','authentication.roles.system_post_all_public.name','authentication.roles.system_post_all_public.description',1608992659129,1608992659656,0,' use_channel_mentions use_group_mentions create_post_public',0,1);
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schemes`
--

DROP TABLE IF EXISTS `Schemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Schemes` (
  `Id` varchar(26) NOT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `DisplayName` varchar(128) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `Scope` varchar(32) DEFAULT NULL,
  `DefaultTeamAdminRole` varchar(64) DEFAULT NULL,
  `DefaultTeamUserRole` varchar(64) DEFAULT NULL,
  `DefaultChannelAdminRole` varchar(64) DEFAULT NULL,
  `DefaultChannelUserRole` varchar(64) DEFAULT NULL,
  `DefaultTeamGuestRole` varchar(64) DEFAULT NULL,
  `DefaultChannelGuestRole` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`),
  KEY `idx_schemes_channel_guest_role` (`DefaultChannelGuestRole`),
  KEY `idx_schemes_channel_user_role` (`DefaultChannelUserRole`),
  KEY `idx_schemes_channel_admin_role` (`DefaultChannelAdminRole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schemes`
--

LOCK TABLES `Schemes` WRITE;
/*!40000 ALTER TABLE `Schemes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Schemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `Id` varchar(26) NOT NULL,
  `Token` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `ExpiresAt` bigint(20) DEFAULT NULL,
  `LastActivityAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `DeviceId` text DEFAULT NULL,
  `Roles` varchar(64) DEFAULT NULL,
  `IsOAuth` tinyint(1) DEFAULT NULL,
  `ExpiredNotify` tinyint(1) DEFAULT NULL,
  `Props` text DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_sessions_user_id` (`UserId`),
  KEY `idx_sessions_token` (`Token`),
  KEY `idx_sessions_expires_at` (`ExpiresAt`),
  KEY `idx_sessions_create_at` (`CreateAt`),
  KEY `idx_sessions_last_activity_at` (`LastActivityAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
INSERT INTO `Sessions` VALUES ('ozc3toyb4b8i9bxemgwxt5knhe','k8j815t173g5myfjafotwsbeah',1612055116052,1614647116052,1612055116052,'dijg7mcf4tf3xrgxi5ntqdefma','','system_admin system_user',0,0,'{\"browser\":\"Firefox/78.0\",\"csrf\":\"bmskkbixdprm5n1jxszafwcndh\",\"isMobile\":\"false\",\"isOAuthUser\":\"false\",\"isSaml\":\"false\",\"is_guest\":\"false\",\"os\":\"Windows 10\",\"platform\":\"Windows\"}'),('zjuso941q3yqjxkjfx9cs1d9bc','x8uecese6jf1tjk4hfdf9rhkqe',1612054474811,1614646474811,1612054474811,'yzf11h45sfr5fxf3pzp14dpgwy','','system_user',0,0,'{\"browser\":\"Firefox/78.0\",\"csrf\":\"cu44q16dzfdf9fnhub5kbytkgo\",\"isMobile\":\"false\",\"isOAuthUser\":\"false\",\"isSaml\":\"false\",\"is_guest\":\"false\",\"os\":\"Windows 10\",\"platform\":\"Windows\"}');
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SidebarCategories`
--

DROP TABLE IF EXISTS `SidebarCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SidebarCategories` (
  `Id` varchar(128) NOT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `SortOrder` bigint(20) DEFAULT NULL,
  `Sorting` varchar(64) DEFAULT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Muted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SidebarCategories`
--

LOCK TABLES `SidebarCategories` WRITE;
/*!40000 ALTER TABLE `SidebarCategories` DISABLE KEYS */;
INSERT INTO `SidebarCategories` VALUES ('channels_dijg7mcf4tf3xrgxi5ntqdefma_h86mz1b743bpjx8qh41eji1seh','dijg7mcf4tf3xrgxi5ntqdefma','h86mz1b743bpjx8qh41eji1seh',10,'','channels','Channels',0),('channels_yzf11h45sfr5fxf3pzp14dpgwy_h86mz1b743bpjx8qh41eji1seh','yzf11h45sfr5fxf3pzp14dpgwy','h86mz1b743bpjx8qh41eji1seh',10,'','channels','Channels',0),('direct_messages_dijg7mcf4tf3xrgxi5ntqdefma_h86mz1b743bpjx8qh41eji1seh','dijg7mcf4tf3xrgxi5ntqdefma','h86mz1b743bpjx8qh41eji1seh',20,'recent','direct_messages','Direct Messages',0),('direct_messages_yzf11h45sfr5fxf3pzp14dpgwy_h86mz1b743bpjx8qh41eji1seh','yzf11h45sfr5fxf3pzp14dpgwy','h86mz1b743bpjx8qh41eji1seh',20,'recent','direct_messages','Direct Messages',0),('favorites_dijg7mcf4tf3xrgxi5ntqdefma_h86mz1b743bpjx8qh41eji1seh','dijg7mcf4tf3xrgxi5ntqdefma','h86mz1b743bpjx8qh41eji1seh',0,'','favorites','Favorites',0),('favorites_yzf11h45sfr5fxf3pzp14dpgwy_h86mz1b743bpjx8qh41eji1seh','yzf11h45sfr5fxf3pzp14dpgwy','h86mz1b743bpjx8qh41eji1seh',0,'','favorites','Favorites',0);
/*!40000 ALTER TABLE `SidebarCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SidebarChannels`
--

DROP TABLE IF EXISTS `SidebarChannels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SidebarChannels` (
  `ChannelId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `CategoryId` varchar(128) NOT NULL,
  `SortOrder` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ChannelId`,`UserId`,`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SidebarChannels`
--

LOCK TABLES `SidebarChannels` WRITE;
/*!40000 ALTER TABLE `SidebarChannels` DISABLE KEYS */;
/*!40000 ALTER TABLE `SidebarChannels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Status` (
  `UserId` varchar(26) NOT NULL,
  `Status` varchar(32) DEFAULT NULL,
  `Manual` tinyint(1) DEFAULT NULL,
  `LastActivityAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  KEY `idx_status_user_id` (`UserId`),
  KEY `idx_status_status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Status`
--

LOCK TABLES `Status` WRITE;
/*!40000 ALTER TABLE `Status` DISABLE KEYS */;
INSERT INTO `Status` VALUES ('dijg7mcf4tf3xrgxi5ntqdefma','online',0,1612055117071),('yzf11h45sfr5fxf3pzp14dpgwy','away',0,1612054744046);
/*!40000 ALTER TABLE `Status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Systems`
--

DROP TABLE IF EXISTS `Systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Systems` (
  `Name` varchar(64) NOT NULL,
  `Value` text DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Systems`
--

LOCK TABLES `Systems` WRITE;
/*!40000 ALTER TABLE `Systems` DISABLE KEYS */;
INSERT INTO `Systems` VALUES ('add_bot_permissions','true'),('add_convert_channel_permissions','true'),('add_manage_guests_permissions','true'),('add_system_console_permissions','true'),('add_system_roles_permissions','true'),('add_use_group_mentions_permission','true'),('AdvancedPermissionsMigrationComplete','true'),('apply_channel_manage_delete_to_channel_user','true'),('AsymmetricSigningKey','{\"ecdsa_key\":{\"curve\":\"P-256\",\"x\":28563435302372778692483829002679149229452432226872312610722957086718217133794,\"y\":41653405597406000475887836668846598679741114884729010676342038233823072453453,\"d\":44471997619655435669989976185547304165819599480304704517138796690337852238216}}'),('channel_moderations_permissions','true'),('DiagnosticId','kmoj1wy7a3ya5e9tanngn893ph'),('EmojisPermissionsMigrationComplete','true'),('emoji_permissions_split','true'),('FirstServerRunTimestamp','1608992639142'),('GuestRolesCreationMigrationComplete','true'),('InstallationDate','1608992639139'),('LastSecurityTime','1612052820059'),('list_join_public_private_teams','true'),('manage_shared_channel_permissions','true'),('migration_advanced_permissions_phase_2','true'),('PostActionCookieSecret','{\"key\":\"WNqsqaESxXYh1Gt+/Gevg18fpyzch+13o/kKpDgH6/s=\"}'),('remove_channel_manage_delete_from_team_user','true'),('remove_permanent_delete_user','true'),('SystemConsoleRolesCreationMigrationComplete','true'),('Version','5.30.0'),('view_members_new_permission','true'),('webhook_permissions_split','true');
/*!40000 ALTER TABLE `Systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamMembers`
--

DROP TABLE IF EXISTS `TeamMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamMembers` (
  `TeamId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `Roles` varchar(64) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `SchemeUser` tinyint(4) DEFAULT NULL,
  `SchemeAdmin` tinyint(4) DEFAULT NULL,
  `SchemeGuest` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`TeamId`,`UserId`),
  KEY `idx_teammembers_team_id` (`TeamId`),
  KEY `idx_teammembers_user_id` (`UserId`),
  KEY `idx_teammembers_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamMembers`
--

LOCK TABLES `TeamMembers` WRITE;
/*!40000 ALTER TABLE `TeamMembers` DISABLE KEYS */;
INSERT INTO `TeamMembers` VALUES ('h86mz1b743bpjx8qh41eji1seh','dijg7mcf4tf3xrgxi5ntqdefma','',0,1,1,0),('h86mz1b743bpjx8qh41eji1seh','yzf11h45sfr5fxf3pzp14dpgwy','',0,1,0,0);
/*!40000 ALTER TABLE `TeamMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teams` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `CompanyName` varchar(64) DEFAULT NULL,
  `AllowedDomains` text DEFAULT NULL,
  `InviteId` varchar(32) DEFAULT NULL,
  `AllowOpenInvite` tinyint(1) DEFAULT NULL,
  `LastTeamIconUpdate` bigint(20) DEFAULT NULL,
  `SchemeId` varchar(26) DEFAULT NULL,
  `GroupConstrained` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`),
  KEY `idx_teams_name` (`Name`),
  KEY `idx_teams_invite_id` (`InviteId`),
  KEY `idx_teams_update_at` (`UpdateAt`),
  KEY `idx_teams_create_at` (`CreateAt`),
  KEY `idx_teams_delete_at` (`DeleteAt`),
  KEY `idx_teams_scheme_id` (`SchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES ('h86mz1b743bpjx8qh41eji1seh',1608992747664,1608996353423,0,'Internal','internal','','root@delivery.htb','O','','delivery.htb','pgexr1ys4pfdum3enso4osjwby',1,0,NULL,NULL);
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TermsOfService`
--

DROP TABLE IF EXISTS `TermsOfService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TermsOfService` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Text` text DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TermsOfService`
--

LOCK TABLES `TermsOfService` WRITE;
/*!40000 ALTER TABLE `TermsOfService` DISABLE KEYS */;
/*!40000 ALTER TABLE `TermsOfService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ThreadMemberships`
--

DROP TABLE IF EXISTS `ThreadMemberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ThreadMemberships` (
  `PostId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `Following` tinyint(1) DEFAULT NULL,
  `LastViewed` bigint(20) DEFAULT NULL,
  `LastUpdated` bigint(20) DEFAULT NULL,
  `UnreadMentions` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PostId`,`UserId`),
  KEY `idx_thread_memberships_last_update_at` (`LastUpdated`),
  KEY `idx_thread_memberships_last_view_at` (`LastViewed`),
  KEY `idx_thread_memberships_user_id` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ThreadMemberships`
--

LOCK TABLES `ThreadMemberships` WRITE;
/*!40000 ALTER TABLE `ThreadMemberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `ThreadMemberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Threads`
--

DROP TABLE IF EXISTS `Threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Threads` (
  `PostId` varchar(26) NOT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `ReplyCount` bigint(20) DEFAULT NULL,
  `LastReplyAt` bigint(20) DEFAULT NULL,
  `Participants` longtext DEFAULT NULL,
  PRIMARY KEY (`PostId`),
  KEY `idx_threads_channel_id` (`ChannelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Threads`
--

LOCK TABLES `Threads` WRITE;
/*!40000 ALTER TABLE `Threads` DISABLE KEYS */;
/*!40000 ALTER TABLE `Threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tokens`
--

DROP TABLE IF EXISTS `Tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tokens` (
  `Token` varchar(64) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `Extra` text DEFAULT NULL,
  PRIMARY KEY (`Token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tokens`
--

LOCK TABLES `Tokens` WRITE;
/*!40000 ALTER TABLE `Tokens` DISABLE KEYS */;
INSERT INTO `Tokens` VALUES ('cgnit576k9xjir81bju7tquiukkpx96nw3nihnpmge3yztgox3c3dh6itwt8e4td',1612053679771,'verify_email','{\"UserId\":\"iyd7hd9jb7btmn11u1ksm69cha\",\"Email\":\"5776744@delivery.htb\"}'),('itqku39g9upn8h3jp5krhooh9rmyz6wnkbqofauzsbrqk9j874bztydw33gipjrm',1612053460023,'verify_email','{\"UserId\":\"wq7f71k54ib1fdzdr3y3s3r84r\",\"Email\":\"1702379@delivery.htb\"}'),('ktf1z379fyjtbwyykkjfp4yfpwrb9be6qwm4zf6mjwfkxfg66p9bfpbr9bc3creq',1612053542244,'verify_email','{\"UserId\":\"wq7f71k54ib1fdzdr3y3s3r84r\",\"Email\":\"1702379@delivery.htb\"}'),('rrme65ynm18bnfmjsj1ygx99yzzucb6s9joskfheyh4z8djwx7zynjutocbkcddy',1612053677645,'verify_email','{\"UserId\":\"iyd7hd9jb7btmn11u1ksm69cha\",\"Email\":\"5776744@delivery.htb\"}');
/*!40000 ALTER TABLE `Tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UploadSessions`
--

DROP TABLE IF EXISTS `UploadSessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UploadSessions` (
  `Id` varchar(26) NOT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `Filename` text DEFAULT NULL,
  `Path` text DEFAULT NULL,
  `FileSize` bigint(20) DEFAULT NULL,
  `FileOffset` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_uploadsessions_user_id` (`Type`),
  KEY `idx_uploadsessions_create_at` (`CreateAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UploadSessions`
--

LOCK TABLES `UploadSessions` WRITE;
/*!40000 ALTER TABLE `UploadSessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `UploadSessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAccessTokens`
--

DROP TABLE IF EXISTS `UserAccessTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAccessTokens` (
  `Id` varchar(26) NOT NULL,
  `Token` varchar(26) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Token` (`Token`),
  KEY `idx_user_access_tokens_token` (`Token`),
  KEY `idx_user_access_tokens_user_id` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAccessTokens`
--

LOCK TABLES `UserAccessTokens` WRITE;
/*!40000 ALTER TABLE `UserAccessTokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAccessTokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `Id` varchar(26) NOT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `DisplayName` varchar(128) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Source` varchar(64) DEFAULT NULL,
  `RemoteId` varchar(48) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `AllowReference` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`),
  UNIQUE KEY `Source` (`Source`,`RemoteId`),
  KEY `idx_usergroups_remote_id` (`RemoteId`),
  KEY `idx_usergroups_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTermsOfService`
--

DROP TABLE IF EXISTS `UserTermsOfService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTermsOfService` (
  `UserId` varchar(26) NOT NULL,
  `TermsOfServiceId` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  KEY `idx_user_terms_of_service_user_id` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTermsOfService`
--

LOCK TABLES `UserTermsOfService` WRITE;
/*!40000 ALTER TABLE `UserTermsOfService` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTermsOfService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `Username` varchar(64) DEFAULT NULL,
  `Password` varchar(128) DEFAULT NULL,
  `AuthData` varchar(128) DEFAULT NULL,
  `AuthService` varchar(32) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `EmailVerified` tinyint(1) DEFAULT NULL,
  `Nickname` varchar(64) DEFAULT NULL,
  `FirstName` varchar(64) DEFAULT NULL,
  `LastName` varchar(64) DEFAULT NULL,
  `Position` varchar(128) DEFAULT NULL,
  `Roles` text DEFAULT NULL,
  `AllowMarketing` tinyint(1) DEFAULT NULL,
  `Props` text DEFAULT NULL,
  `NotifyProps` text DEFAULT NULL,
  `LastPasswordUpdate` bigint(20) DEFAULT NULL,
  `LastPictureUpdate` bigint(20) DEFAULT NULL,
  `FailedAttempts` int(11) DEFAULT NULL,
  `Locale` varchar(5) DEFAULT NULL,
  `Timezone` text DEFAULT NULL,
  `MfaActive` tinyint(1) DEFAULT NULL,
  `MfaSecret` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `AuthData` (`AuthData`),
  UNIQUE KEY `Email` (`Email`),
  KEY `idx_users_email` (`Email`),
  KEY `idx_users_update_at` (`UpdateAt`),
  KEY `idx_users_create_at` (`CreateAt`),
  KEY `idx_users_delete_at` (`DeleteAt`),
  FULLTEXT KEY `idx_users_all_txt` (`Username`,`FirstName`,`LastName`,`Nickname`,`Email`),
  FULLTEXT KEY `idx_users_all_no_full_name_txt` (`Username`,`Nickname`,`Email`),
  FULLTEXT KEY `idx_users_names_txt` (`Username`,`FirstName`,`LastName`,`Nickname`),
  FULLTEXT KEY `idx_users_names_no_full_name_txt` (`Username`,`Nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('64nq8nue7pyhpgwm99a949mwya',1608992663714,1608992663731,0,'surveybot','',NULL,'','surveybot@localhost',0,'','Surveybot','','','system_user',0,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1608992663714,1608992663731,0,'en','{\"automaticTimezone\":\"\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('6akd5cxuhfgrbny81nj55au4za',1609844799823,1609844799823,0,'c3ecacacc7b94f909d04dbfd308a9b93','$2a$10$u5815SIBe2Fq1FZlv9S8I.VjU3zeSPBrIEg9wvpiLaS7ImuiItEiK',NULL,'','4120849@delivery.htb',0,'','','','','system_user',0,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1609844799823,0,0,'en','{\"automaticTimezone\":\"\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('6wkx1ggn63r7f8q1hpzp7t4iiy',1609844806814,1609844806814,0,'5b785171bfb34762a933e127630c4860','$2a$10$3m0quqyvCE8Z/R1gFcCOWO6tEj6FtqtBn8fRAXQXmaKmg.HDGpS/G',NULL,'','7466068@delivery.htb',0,'','','','','system_user',0,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1609844806814,0,0,'en','{\"automaticTimezone\":\"\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('dijg7mcf4tf3xrgxi5ntqdefma',1608992692294,1609157893370,0,'root','$2a$10$VM6EeymRxJ29r8Wjkr8Dtev0O.1STWb4.4ScG.anuu7v0EFJwgjjO',NULL,'','root@delivery.htb',1,'','','','','system_admin system_user',1,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1609157893370,0,0,'en','{\"automaticTimezone\":\"Africa/Abidjan\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('hatotzdacb8mbe95hm4ei8i7ny',1609844805777,1609844805777,0,'ff0a21fc6fc2488195e16ea854c963ee','$2a$10$RnJsISTLc9W3iUcUggl1KOG9vqADED24CQcQ8zvUm1Ir9pxS.Pduq',NULL,'','9122359@delivery.htb',0,'','','','','system_user',0,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1609844805777,0,0,'en','{\"automaticTimezone\":\"\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('iyd7hd9jb7btmn11u1ksm69cha',1612053677548,1612053677548,0,'nytesniper1','$2a$10$JEY2xBYWmaMmPiE.CCLv2eUIZaAkeM2Ky5x73fAUH1OmKGQ1wWZ7a',NULL,'','5776744@delivery.htb',0,'','','','','system_user',1,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1612053677548,0,0,'en','{\"automaticTimezone\":\"\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('jing8rk6mjdbudcidw6wz94rdy',1608992663664,1608992663664,0,'channelexport','',NULL,'','channelexport@localhost',0,'','Channel Export Bot','','','system_user',0,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1608992663664,0,0,'en','{\"automaticTimezone\":\"\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('n9magehhzincig4mm97xyft9sc',1609844789048,1609844800818,0,'9ecfb4be145d47fda0724f697f35ffaf','$2a$10$s.cLPSjAVgawGOJwB7vrqenPg2lrDtOECRtjwWahOzHfq1CoFyFqm',NULL,'','5056505@delivery.htb',1,'','','','','system_user',0,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1609844789048,0,0,'en','{\"automaticTimezone\":\"\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('wq7f71k54ib1fdzdr3y3s3r84r',1612053459933,1612053459933,0,'nytesniper','$2a$10$9US4Zyah.k4VXqz/3LqmoOXxvTwaoMOHOahj1slYweDX032i9TrQ6',NULL,'','1702379@delivery.htb',0,'','','','','system_user',1,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1612053459933,0,0,'en','{\"automaticTimezone\":\"\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,''),('yzf11h45sfr5fxf3pzp14dpgwy',1612054431183,1612054481825,0,'okokok','$2a$10$NmohYjRiBckZLXze8VYiUeW/SOfWAvpDIKiI0cV27.G2KNQbt9TTa',NULL,'','7921318@delivery.htb',1,'','','','','system_user',1,'{}','{\"channel\":\"true\",\"comments\":\"never\",\"desktop\":\"mention\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"\",\"push\":\"mention\",\"push_status\":\"away\"}',1612054431183,0,0,'en','{\"automaticTimezone\":\"Africa/Abidjan\",\"manualTimezone\":\"\",\"useAutomaticTimezone\":\"true\"}',0,'');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-30 20:06:52
