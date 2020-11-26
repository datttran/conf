-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: docket
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `camera_data`
--

DROP TABLE IF EXISTS `camera_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) DEFAULT NULL,
  `readpoint` varchar(45) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `pallet` varchar(45) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `container` varchar(45) DEFAULT NULL,
  `ordernum` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `tag_type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_type_idx` (`tag_type`),
  CONSTRAINT `tag_type` FOREIGN KEY (`tag_type`) REFERENCES `tag_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9635 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_data`
--

LOCK TABLES `camera_data` WRITE;
/*!40000 ALTER TABLE `camera_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_read_point`
--

DROP TABLE IF EXISTS `channel_read_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel_read_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_read_point`
--

LOCK TABLES `channel_read_point` WRITE;
/*!40000 ALTER TABLE `channel_read_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_read_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_metrics`
--

DROP TABLE IF EXISTS `device_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_metrics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dockdoor` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `facility` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_metrics`
--

LOCK TABLES `device_metrics` WRITE;
/*!40000 ALTER TABLE `device_metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_type`
--

DROP TABLE IF EXISTS `device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_type` (
  `id` bigint(10) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_type`
--

LOCK TABLES `device_type` WRITE;
/*!40000 ALTER TABLE `device_type` DISABLE KEYS */;
INSERT INTO `device_type` VALUES (2,'IMPINJ');
/*!40000 ALTER TABLE `device_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dockdoor` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ip` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `device_name` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `readpoint` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dockdoor_name` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip_UNIQUE` (`ip`),
  KEY `dockdoor_idx` (`dockdoor`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket`
--

DROP TABLE IF EXISTS `docket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docket` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `details` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `docket_UNIQUE` (`docket`),
  KEY `details_docket_idx` (`details`),
  CONSTRAINT `details_docket` FOREIGN KEY (`details`) REFERENCES `docket_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket`
--

LOCK TABLES `docket` WRITE;
/*!40000 ALTER TABLE `docket` DISABLE KEYS */;
/*!40000 ALTER TABLE `docket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket_details`
--

DROP TABLE IF EXISTS `docket_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docket_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_code` varchar(45) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `customer_to` varchar(45) DEFAULT NULL,
  `base_unit` varchar(45) DEFAULT NULL,
  `transfer_comment` varchar(45) DEFAULT NULL,
  `item_status` varchar(45) DEFAULT NULL,
  `consumer_from` varchar(45) DEFAULT NULL,
  `consumer_name` varchar(45) DEFAULT NULL,
  `refno` varchar(45) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `docket` varchar(45) DEFAULT NULL,
  `material_code` varchar(45) DEFAULT NULL,
  `material_desc` varchar(45) DEFAULT NULL,
  `transfer_qty` int(11) DEFAULT NULL,
  `ref_from` varchar(45) DEFAULT NULL,
  `ref_to` varchar(45) DEFAULT NULL,
  `customerto_name` varchar(45) DEFAULT NULL,
  `transferitemno` varchar(45) DEFAULT NULL,
  `palletacct` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket_details`
--

LOCK TABLES `docket_details` WRITE;
/*!40000 ALTER TABLE `docket_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `docket_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erules`
--

DROP TABLE IF EXISTS `erules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `tag_type` bigint(20) DEFAULT NULL,
  `qty` int(20) DEFAULT NULL,
  `cqty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `erule_idx` (`tag_type`),
  CONSTRAINT `erule` FOREIGN KEY (`tag_type`) REFERENCES `tag_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erules`
--

LOCK TABLES `erules` WRITE;
/*!40000 ALTER TABLE `erules` DISABLE KEYS */;
INSERT INTO `erules` VALUES (1,'E1','Exit 1',26,186,210),(2,'E2','Exit 2',26,372,390),(3,'E3','E3',26,558,580),(4,'E4','E4',26,744,780);
/*!40000 ALTER TABLE `erules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` bigint(10) DEFAULT NULL,
  `code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `dt-fk_idx` (`device_type`),
  CONSTRAINT `dt-fk` FOREIGN KEY (`device_type`) REFERENCES `device_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (8,'Derrimut DC','Aldi Derrimut DC',2,'100771');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idle_time`
--

DROP TABLE IF EXISTS `idle_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idle_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `docket` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `btime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `docket_UNIQUE` (`docket`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idle_time`
--

LOCK TABLES `idle_time` WRITE;
/*!40000 ALTER TABLE `idle_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `idle_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_api`
--

DROP TABLE IF EXISTS `image_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_api` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(145) DEFAULT NULL,
  `confidence` varchar(45) DEFAULT NULL,
  `path` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_api`
--

LOCK TABLES `image_api` WRITE;
/*!40000 ALTER TABLE `image_api` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `it_browser`
--

DROP TABLE IF EXISTS `it_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `it_browser` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `docket` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it_browser`
--

LOCK TABLES `it_browser` WRITE;
/*!40000 ALTER TABLE `it_browser` DISABLE KEYS */;
/*!40000 ALTER TABLE `it_browser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keepalive`
--

DROP TABLE IF EXISTS `keepalive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keepalive` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stype` varchar(45) DEFAULT NULL,
  `kadate` datetime DEFAULT NULL,
  `dockdoor` varchar(45) DEFAULT NULL,
  `kainterval` int(11) DEFAULT NULL,
  `kathreshold` int(11) DEFAULT NULL,
  `autorestart` tinyint(4) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `ip` varchar(145) DEFAULT NULL,
  `sendfeed` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keepalive`
--

LOCK TABLES `keepalive` WRITE;
/*!40000 ALTER TABLE `keepalive` DISABLE KEYS */;
/*!40000 ALTER TABLE `keepalive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `facility` varchar(45) DEFAULT NULL,
  `stype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_location` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiple_docket`
--

DROP TABLE IF EXISTS `multiple_docket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multiple_docket` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dockets` text,
  `dockdoor` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `count` int(10) unsigned zerofill DEFAULT NULL,
  `ordernumber` varchar(45) DEFAULT NULL,
  `processed` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dockdoor_UNIQUE` (`dockdoor`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiple_docket`
--

LOCK TABLES `multiple_docket` WRITE;
/*!40000 ALTER TABLE `multiple_docket` DISABLE KEYS */;
/*!40000 ALTER TABLE `multiple_docket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(50) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader_data`
--

DROP TABLE IF EXISTS `reader_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reader_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `docket` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `device` int(11) DEFAULT NULL,
  `pallet` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `deviceFK_idx` (`device`),
  CONSTRAINT `deviceFK` FOREIGN KEY (`device`) REFERENCES `devices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader_data`
--

LOCK TABLES `reader_data` WRITE;
/*!40000 ALTER TABLE `reader_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `reader_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader_status`
--

DROP TABLE IF EXISTS `reader_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reader_status` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `device` int(11) DEFAULT NULL,
  `reading` int(11) DEFAULT '0',
  `count` int(11) DEFAULT NULL,
  `docket` varchar(145) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `idle_time` datetime DEFAULT NULL,
  `idlestop` int(11) DEFAULT NULL,
  `sessionid` text,
  `palletdocket` varchar(245) DEFAULT NULL,
  `palletacc` varchar(145) DEFAULT NULL,
  `cancelled` tinyint(4) DEFAULT '0',
  `acrdock` tinyint(4) DEFAULT NULL,
  `ordernumber` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_UNIQUE` (`device`),
  KEY `dfk_idx` (`device`),
  CONSTRAINT `dfk` FOREIGN KEY (`device`) REFERENCES `devices` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader_status`
--

LOCK TABLES `reader_status` WRITE;
/*!40000 ALTER TABLE `reader_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `reader_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules_count`
--

DROP TABLE IF EXISTS `rules_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rules_count` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` tinytext,
  `tag_type` bigint(20) DEFAULT NULL,
  `pick` varchar(45) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tagTypeRule_idx` (`tag_type`),
  CONSTRAINT `tagTypeRule` FOREIGN KEY (`tag_type`) REFERENCES `tag_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules_count`
--

LOCK TABLES `rules_count` WRITE;
/*!40000 ALTER TABLE `rules_count` DISABLE KEYS */;
INSERT INTO `rules_count` VALUES (1,'Three Column','Three Column Pallet , Camera is Considered',7,'camera',0),(2,'Three Column','Three Column Pallet , Camera is Considered',18,'camera',0),(3,'Three Column','Three Column Pallet , Camera is Considered',13,'camera',72),(4,'Three Column','Three Column Pallet , Camera is Considered',4,'camera',0),(5,'Three Column','Three Column Pallet , Camera is Considered',14,'camera',0),(6,'Three Column','Three Column Pallet , Camera is Considered',15,'camera',0),(7,'Three Column','Three Column Pallet , Camera is Considered',16,'camera',0),(8,'Tall','Tall Pallet, Camera is Considered',17,'camera',0),(9,'Three Column','Three Column Pallet , Camera is Considered',21,'camera',0),(10,'Tall','Tall Pallert, Camera is Considered',22,'camera',0),(11,'72','72 Pallet, camera is comsidered',23,'camera',0),(12,'Three rows','Three row pallet, Camera is considered',24,'camera',0),(13,'72 Covered','Tall Pallet covered, Camera is considered ',25,'camera',0),(16,'E','E',26,'rfid',186);
/*!40000 ALTER TABLE `rules_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_setting`
--

DROP TABLE IF EXISTS `site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `value` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_setting`
--

LOCK TABLES `site_setting` WRITE;
/*!40000 ALTER TABLE `site_setting` DISABLE KEYS */;
INSERT INTO `site_setting` VALUES (5,'Power Level','27'),(7,'Timegap (Sec)','11'),(9,'Timezone','AEDT'),(10,'Sensitivity','-80'),(11,'Tolerance','1'),(12,'Stray','6'),(14,'Singualtion Time (Sec)','60'),(18,'estray','2'),(19,'epower level','55'),(23,'order_check','NO'),(24,'cron','0 0 0 * * ?'),(25,'min_count_to_send','1'),(26,'server','au2.sensitel.com'),(27,'false_positive_camera','false'),(28,'start_range','4982000'),(29,'counter','4982089'),(30,'false_positive_rfid','false'),(31,'vpsurl','https://sensitel-portal-api-mgmt.azure-api.net/transfers/manual/paths/invoke');
/*!40000 ALTER TABLE `site_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` bigint(20) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'IN','InBond'),(2,'OUT','OutBond'),(3,'LOAD','Loading');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary`
--

DROP TABLE IF EXISTS `summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `docket` varchar(45) DEFAULT NULL,
  `palletinfo` text,
  `date` datetime DEFAULT NULL,
  `dockdoor` varchar(45) DEFAULT NULL,
  `processed` tinyint(4) DEFAULT '0',
  `count` int(11) DEFAULT '0',
  `ismulti` tinyint(4) DEFAULT '0',
  `iscancel` tinyint(4) DEFAULT '0',
  `ordernumber` varchar(45) DEFAULT NULL,
  `finalprocess` tinyint(4) DEFAULT '0',
  `rerun` tinyint(4) DEFAULT '0',
  `isstop` tinyint(4) DEFAULT '0',
  `isapproved` tinyint(4) DEFAULT '0',
  `unapproved` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary`
--

LOCK TABLES `summary` WRITE;
/*!40000 ALTER TABLE `summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_data`
--

DROP TABLE IF EXISTS `tag_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `epc` varchar(145) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `pallet` varchar(45) DEFAULT NULL,
  `rssi` varchar(45) DEFAULT NULL,
  `antenna` varchar(45) DEFAULT NULL,
  `docket` varchar(45) DEFAULT NULL,
  `dockdoor` varchar(45) DEFAULT NULL,
  `device` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_data`
--

LOCK TABLES `tag_data` WRITE;
/*!40000 ALTER TABLE `tag_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_type`
--

DROP TABLE IF EXISTS `tag_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_type`
--

LOCK TABLES `tag_type` WRITE;
/*!40000 ALTER TABLE `tag_type` DISABLE KEYS */;
INSERT INTO `tag_type` VALUES (1,'C','Type Crate'),(2,'D','Docket'),(3,'2C','Two Column'),(4,'3C','ThreeColumn'),(6,'2','2 Column'),(7,'3','3 Column'),(8,'2S','Two Column Small'),(9,'2I','Two Column Incrementing'),(10,'2IS','Two Column Small Incrementing'),(11,'2D','Two column Decrementing'),(12,'2DS','Two COlumn Decrementing Small'),(13,'3D','Three Decrementing'),(14,'3I','Three Incrementing'),(15,'3IS','Three Incrementing Small'),(16,'3DS','Three Decrementing Small'),(17,'T','Tall'),(18,'3S','Three Column Small'),(19,'2CS','Two Column Small'),(20,'S ','Small'),(21,'TI','Tall incremental'),(22,'72','72 full'),(23,'TD','Tall Decremental'),(24,'3R','3 Column Horizontal'),(25,'TC','Tall Covered'),(26,'E','Exit');
/*!40000 ALTER TABLE `tag_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `rememberme` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `iduser_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','Grant','Watts','admin@sensitel.com','1234',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role_idx` (`user`),
  CONSTRAINT `user_role` FOREIGN KEY (`user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (123,'ROLE_ADMINISTRATOR',1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `id` bigint(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Derrimut DC','Aldi Derrimut DC','100771'),(2,'Dandenong DC','Aldi Dandenong DC','220197'),(3,'Minchinbury DC','Aldi Minchinbury DC','206757'),(4,'Prestons DC','Aldi Prestons DC','222264'),(5,'Brendale DC','Aldi Brendale DC','222263'),(6,'Stapylton DC','Aldi Stapylton DC','133220'),(7,'Regency Park DC','Aldi Regency Park DC','222326'),(8,'Jandakot DC','Aldi Jandakot DC','222425');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-25 17:19:20
