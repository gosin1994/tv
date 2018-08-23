-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: fastfood_qzg
-- ------------------------------------------------------
-- Server version	5.6.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `contact_mobile` varchar(50) DEFAULT NULL,
  `salesman` varchar(50) DEFAULT NULL,
  `salesman_mobile` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `remark` varchar(80) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `create_time` datetime NOT NULL,
  `last_update_time` datetime NOT NULL,
  `appId` varchar(50) DEFAULT NULL,
  `is_takeaway_enable` varchar(1) DEFAULT '0',
  `is_weixinMember_enable` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_no` (`brand_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(60) DEFAULT NULL,
  `pNo` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dish`
--

DROP TABLE IF EXISTS `dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish` (
  `dish_id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_no` varchar(50) NOT NULL,
  `name` varchar(400) NOT NULL,
  `store_no` varchar(50) NOT NULL,
  `order_no` int(11) NOT NULL,
  `dishType_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit_name` varchar(10) NOT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `is_clear` varchar(1) NOT NULL,
  `status` varchar(1) NOT NULL,
  `create_time` datetime NOT NULL,
  `is_deleted` varchar(1) NOT NULL DEFAULT '0',
  `printer_id` varchar(100) DEFAULT NULL,
  `a_price` decimal(10,2) DEFAULT NULL,
  `benifit_start_time` varchar(50) DEFAULT NULL,
  `benifit_end_time` varchar(50) DEFAULT NULL,
  `benifit_price` decimal(10,2) DEFAULT NULL,
  `is_offline` varchar(5) DEFAULT NULL,
  `limit_num` int(11) DEFAULT NULL,
  `cur_limit_num` int(11) DEFAULT NULL,
  `no_discount` varchar(5) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`dish_id`),
  KEY `fk_dish_dishType` (`dishType_id`),
  KEY `fk_dish_store` (`store_no`),
  CONSTRAINT `fk_dish_dishType` FOREIGN KEY (`dishType_id`) REFERENCES `dish_type` (`dishType_id`),
  CONSTRAINT `fk_dish_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dish_facture`
--

DROP TABLE IF EXISTS `dish_facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish_facture` (
  `dish_facture_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `facture_type_id` int(11) NOT NULL,
  `facture_id` int(11) NOT NULL,
  PRIMARY KEY (`dish_facture_id`),
  KEY `store_no` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dish_type`
--

DROP TABLE IF EXISTS `dish_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish_type` (
  `dishType_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `store_no` varchar(50) NOT NULL,
  `type_no` varchar(50) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `open_time` varchar(50) DEFAULT NULL,
  `close_time` varchar(50) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `create_time` datetime NOT NULL,
  `is_deleted` varchar(1) NOT NULL DEFAULT '0',
  `printer_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dishType_id`),
  KEY `fk_dishType_store` (`store_no`),
  CONSTRAINT `fk_dishType_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dishset`
--

DROP TABLE IF EXISTS `dishset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishset` (
  `dishset_id` int(11) NOT NULL AUTO_INCREMENT,
  `dishset_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `store_no` varchar(50) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `dishset_type_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `a_price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `is_clear` varchar(1) NOT NULL,
  `is_deleted` varchar(1) NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `benifit_start_time` varchar(50) DEFAULT NULL,
  `benifit_end_time` varchar(50) DEFAULT NULL,
  `benifit_price` decimal(10,2) DEFAULT NULL,
  `is_offline` varchar(5) DEFAULT NULL,
  `limit_num` int(11) DEFAULT NULL,
  `cur_limit_num` int(11) DEFAULT NULL,
  `no_discount` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`dishset_id`),
  KEY `store_no` (`store_no`),
  KEY `dishset_type_id` (`dishset_type_id`),
  CONSTRAINT `dishset_ibfk_1` FOREIGN KEY (`dishset_type_id`) REFERENCES `dishset_type` (`dishset_type_id`),
  CONSTRAINT `dishset_ibfk_2` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dishset_detail`
--

DROP TABLE IF EXISTS `dishset_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishset_detail` (
  `dishset_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_name` varchar(50) NOT NULL,
  `dishset_id` int(11) NOT NULL,
  `options` varchar(10) NOT NULL,
  PRIMARY KEY (`dishset_detail_id`),
  KEY `dishset_id` (`dishset_id`),
  CONSTRAINT `dishset_detail_ibfk_1` FOREIGN KEY (`dishset_id`) REFERENCES `dishset` (`dishset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dishset_dish`
--

DROP TABLE IF EXISTS `dishset_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishset_dish` (
  `dishset_dish_id` int(11) NOT NULL AUTO_INCREMENT,
  `dishset_id` int(11) NOT NULL,
  `dishset_detail_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `dish_name` varchar(400) DEFAULT NULL,
  `add_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`dishset_dish_id`),
  KEY `dishset_detail_id` (`dishset_detail_id`),
  CONSTRAINT `dishset_dish_ibfk_1` FOREIGN KEY (`dishset_detail_id`) REFERENCES `dishset_detail` (`dishset_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dishset_type`
--

DROP TABLE IF EXISTS `dishset_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishset_type` (
  `dishset_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type_no` varchar(50) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `status` varchar(1) NOT NULL,
  `is_deleted` varchar(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dishset_type_id`),
  KEY `store_no` (`store_no`),
  CONSTRAINT `dishset_type_ibfk_1` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(60) DEFAULT NULL,
  `pNo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doc`
--

DROP TABLE IF EXISTS `doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(50) NOT NULL,
  `brand_no` varchar(50) DEFAULT NULL,
  `store_no` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_time` datetime NOT NULL,
  `staff_no` varchar(50) NOT NULL,
  `doc_type` varchar(1) NOT NULL,
  `pay_type` varchar(5) DEFAULT NULL,
  `is_deleted` varchar(5) NOT NULL DEFAULT '0',
  `wechat_account` varchar(50) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `predoc_no` varchar(50) DEFAULT NULL,
  `received_amount` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `ought_amount` decimal(10,2) NOT NULL,
  `refund_id` int(11) DEFAULT NULL,
  `discount_rate` decimal(10,2) NOT NULL,
  `round_amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_test` varchar(10) DEFAULT '0',
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `doc_no` (`store_no`,`doc_no`,`order_time`),
  CONSTRAINT `fk_doc_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doc_detail`
--

DROP TABLE IF EXISTS `doc_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_detail` (
  `docdetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `dish_id` int(11) DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `received_amount` decimal(10,2) NOT NULL,
  `is_deleted` varchar(5) NOT NULL DEFAULT '0',
  `dishset_id` int(11) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `brand_no` varchar(50) DEFAULT NULL,
  `store_no` varchar(50) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `doc_is_deleted` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`docdetail_id`),
  KEY `fk_docdetail_doc` (`doc_id`),
  KEY `fk_docdetail_dish` (`dish_id`),
  CONSTRAINT `fk_docdetail_dish` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doc_dishset_detail`
--

DROP TABLE IF EXISTS `doc_dishset_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_dishset_detail` (
  `doc_dishset_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `docdetail_id` int(11) NOT NULL,
  `dishset_id` int(11) NOT NULL,
  `dishset_detail_id` int(11) NOT NULL,
  `dishset_dish_id` int(11) NOT NULL,
  `detail_name` varchar(50) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `dish_name` varchar(400) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `received_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`doc_dishset_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doc_facture`
--

DROP TABLE IF EXISTS `doc_facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_facture` (
  `doc_facture_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `docdetail_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `facture_type_id` int(11) NOT NULL,
  `facture_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `doc_dishset_detail_id` int(11) DEFAULT NULL,
  `facture_type_name` varchar(50) DEFAULT NULL,
  `facture_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`doc_facture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doc_pay`
--

DROP TABLE IF EXISTS `doc_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_pay` (
  `doc_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `pay_id` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`doc_pay_id`),
  KEY `doc_id` (`doc_id`),
  KEY `pay_id` (`pay_id`),
  CONSTRAINT `doc_pay_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`doc_id`),
  CONSTRAINT `doc_pay_ibfk_2` FOREIGN KEY (`pay_id`) REFERENCES `pay` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equip_monitor`
--

DROP TABLE IF EXISTS `equip_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_monitor` (
  `equipMonitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_no` varchar(50) DEFAULT NULL,
  `store_no` varchar(50) NOT NULL,
  `serial_no` varchar(50) NOT NULL,
  `version_no` varchar(50) NOT NULL,
  `last_login_time` datetime NOT NULL,
  `last_transfer_time` datetime DEFAULT NULL,
  `last_staff` varchar(50) NOT NULL,
  `is_data_upload` varchar(1) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`equipMonitor_id`),
  KEY `fk_equip_store` (`store_no`),
  CONSTRAINT `fk_equip_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facture` (
  `facture_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `facture_type_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`facture_id`),
  KEY `store_no` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facture_type`
--

DROP TABLE IF EXISTS `facture_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facture_type` (
  `facture_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `status` varchar(1) NOT NULL,
  `limit_num` varchar(10) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`facture_type_id`),
  KEY `store_no` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `pay_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pay_id`),
  KEY `store_no` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `predoc`
--

DROP TABLE IF EXISTS `predoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predoc` (
  `predoc_id` int(11) NOT NULL AUTO_INCREMENT,
  `predoc_no` varchar(50) NOT NULL,
  `brand_no` varchar(50) NOT NULL,
  `store_no` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `order_time` datetime NOT NULL,
  `is_pay` varchar(1) DEFAULT '0',
  `wechat_account` varchar(50) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `doc_type` varchar(1) DEFAULT NULL,
  `is_consumed` varchar(1) DEFAULT '0',
  `takeaway_status` varchar(5) DEFAULT '0',
  `received_amount` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `doc_no` varchar(50) DEFAULT NULL,
  `is_deleted` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`predoc_id`),
  UNIQUE KEY `predoc_no` (`predoc_no`,`order_time`),
  KEY `store_no` (`store_no`),
  CONSTRAINT `fk_predoc_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `predoc_detail`
--

DROP TABLE IF EXISTS `predoc_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predoc_detail` (
  `predoc_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `predoc_id` int(11) NOT NULL,
  `dish_id` int(11) DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `dishset_id` int(11) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `received_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`predoc_detail_id`),
  KEY `fk_predoc_detail_doc` (`predoc_id`),
  KEY `fk_predoc_detail_dish` (`dish_id`),
  CONSTRAINT `fk_predoc_detail_dish` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`),
  CONSTRAINT `fk_predoc_detail_doc` FOREIGN KEY (`predoc_id`) REFERENCES `predoc` (`predoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `predoc_facture`
--

DROP TABLE IF EXISTS `predoc_facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predoc_facture` (
  `predoc_facture_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(50) DEFAULT NULL,
  `predoc_detail_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `facture_type_id` int(11) NOT NULL,
  `facture_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `facture_type_name` varchar(50) DEFAULT NULL,
  `facture_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`predoc_facture_id`),
  KEY `transaction_id` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `predoc_pay`
--

DROP TABLE IF EXISTS `predoc_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predoc_pay` (
  `predoc_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `predoc_id` int(11) NOT NULL,
  `pay_id` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`predoc_pay_id`),
  KEY `predoc_id` (`predoc_id`),
  KEY `pay_id` (`pay_id`),
  CONSTRAINT `predoc_pay_ibfk_1` FOREIGN KEY (`predoc_id`) REFERENCES `predoc` (`predoc_id`),
  CONSTRAINT `predoc_pay_ibfk_2` FOREIGN KEY (`pay_id`) REFERENCES `pay` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `printer`
--

DROP TABLE IF EXISTS `printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printer` (
  `printer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `isLabel` varchar(5) DEFAULT '0',
  PRIMARY KEY (`printer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `refund`
--

DROP TABLE IF EXISTS `refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund` (
  `refund_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`refund_id`),
  KEY `store_no` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_no` varchar(50) NOT NULL,
  `store_no` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `fk_staff_store` (`store_no`),
  CONSTRAINT `fk_staff_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `workshop_in` int(11) NOT NULL DEFAULT '0',
  `store_in` int(11) NOT NULL DEFAULT '0',
  `store_out` int(11) NOT NULL DEFAULT '0',
  `loss` int(11) NOT NULL DEFAULT '0',
  `dish_sales` int(11) NOT NULL DEFAULT '0',
  `dishset_sales` int(11) NOT NULL DEFAULT '0',
  `sales` int(11) NOT NULL DEFAULT '0',
  `last_day_stock_num` int(11) NOT NULL DEFAULT '0',
  `stock_num` int(11) NOT NULL DEFAULT '0',
  `stock_date` date NOT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `store_no` (`store_no`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `province_id` varchar(50) NOT NULL,
  `city_id` varchar(50) NOT NULL,
  `district_id` varchar(50) DEFAULT NULL,
  `detail_address` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `open_time` varchar(50) DEFAULT NULL,
  `close_time` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `contact_mobile` varchar(50) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `introduction` varchar(200) DEFAULT NULL,
  `remark` varchar(80) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `create_time` datetime NOT NULL,
  `last_update_time` datetime NOT NULL,
  `is_aprice_enable` varchar(1) DEFAULT '0',
  `discount_rates` varchar(50) DEFAULT NULL,
  `is_day_push_enable` varchar(1) DEFAULT '0',
  `print_msg` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `store_no` (`store_no`),
  KEY `fk_store_brand` (`brand_id`),
  CONSTRAINT `fk_store_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `store_table`
--

DROP TABLE IF EXISTS `store_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_table` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `create_time` datetime NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`table_id`),
  KEY `fk_table_store` (`store_no`),
  CONSTRAINT `fk_table_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `store_takeaway`
--

DROP TABLE IF EXISTS `store_takeaway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_takeaway` (
  `store_takeaway_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `diliver_time` varchar(300) NOT NULL,
  `least_price` decimal(10,2) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`store_takeaway_id`),
  KEY `store_no` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `takeaway_doc`
--

DROP TABLE IF EXISTS `takeaway_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takeaway_doc` (
  `takeaway_doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `predoc_no` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `diliver_time` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`takeaway_doc_id`),
  KEY `predoc_no` (`predoc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_no` varchar(50) DEFAULT NULL,
  `store_no` varchar(50) NOT NULL,
  `staff_no` varchar(50) NOT NULL,
  `transfer_time` datetime DEFAULT NULL,
  `total_orders` smallint(6) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `consume_amount` decimal(10,2) NOT NULL,
  `receive_amount` decimal(10,2) NOT NULL,
  `cash_orders` smallint(6) NOT NULL,
  `cash_amount` decimal(10,2) NOT NULL,
  `wechat_orders` smallint(6) NOT NULL,
  `wechat_amount` decimal(10,2) NOT NULL,
  `cash_delete_orders` smallint(6) NOT NULL,
  `cash_delete_amount` decimal(10,2) NOT NULL,
  `wechat_delete_orders` smallint(6) NOT NULL,
  `wechat_delete_amount` decimal(10,2) NOT NULL,
  `create_time` datetime NOT NULL,
  `serial_no` varchar(50) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`transfer_id`),
  KEY `fk_transfer_store` (`store_no`),
  CONSTRAINT `fk_transfer_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  `status` varchar(1) DEFAULT '1',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_account`
--

DROP TABLE IF EXISTS `weixin_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `weixin_accountid` varchar(100) NOT NULL COMMENT '原始ID',
  `accountname` varchar(200) NOT NULL COMMENT '公众帐号名称',
  `accounttoken` varchar(200) NOT NULL COMMENT '公众帐号token',
  `accountnumber` varchar(200) NOT NULL COMMENT '公众微信号',
  `accounttype` varchar(50) NOT NULL COMMENT '公众号类型',
  `accountemail` varchar(200) NOT NULL COMMENT '登录邮箱',
  `accountdesc` varchar(500) NOT NULL COMMENT '公众帐号描述',
  `accountaccesstoken` varchar(1000) DEFAULT NULL COMMENT 'access_token',
  `accountappid` varchar(200) NOT NULL COMMENT '公众帐号appid',
  `accountappsecret` varchar(500) NOT NULL COMMENT '公众帐号appsecret',
  `addtoekntime` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `mchId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `weixin_accountid_2` (`weixin_accountid`),
  KEY `weixin_accountid` (`weixin_accountid`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_card`
--

DROP TABLE IF EXISTS `weixin_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `brand_no` varchar(50) DEFAULT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `card_id` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `brand_name` varchar(50) DEFAULT NULL,
  `qrcode_url` varchar(255) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `sub_title` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `code_type` varchar(50) DEFAULT NULL,
  `notice` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `get_limit` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `use_custom_code` varchar(5) DEFAULT NULL,
  `bind_openid` varchar(5) DEFAULT NULL,
  `can_give_friend` varchar(5) DEFAULT NULL,
  `can_share` varchar(5) DEFAULT NULL,
  `service_phone` varchar(50) DEFAULT NULL,
  `gift` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_card_code`
--

DROP TABLE IF EXISTS `weixin_card_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_card_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_no` varchar(50) DEFAULT NULL,
  `card_id` varchar(50) DEFAULT NULL,
  `user_card_code` varchar(50) DEFAULT NULL,
  `is_consumed` varchar(5) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `get_time` datetime DEFAULT NULL,
  `consume_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_id` (`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_member`
--

DROP TABLE IF EXISTS `weixin_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountid` int(11) NOT NULL,
  `brand_no` varchar(50) NOT NULL,
  `openid` varchar(150) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `is_subscribe` varchar(5) DEFAULT NULL,
  `subscribe_time` datetime DEFAULT NULL,
  `last_consume_time` datetime DEFAULT NULL,
  `last_consume_store_no` varchar(50) DEFAULT NULL,
  `consume_times` int(11) DEFAULT '0',
  `consume_amount` decimal(10,2) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `coupon` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_member_detail`
--

DROP TABLE IF EXISTS `weixin_member_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_member_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountid` int(11) NOT NULL,
  `brand_no` varchar(50) NOT NULL,
  `openid` varchar(150) NOT NULL,
  `consume_time` datetime DEFAULT NULL,
  `consume_store_no` varchar(50) DEFAULT NULL,
  `consume_amount` decimal(10,2) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `coupon` decimal(10,2) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`),
  KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_menu`
--

DROP TABLE IF EXISTS `weixin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menukey` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `orders` varchar(11) NOT NULL,
  `templateid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `fatherid` int(11) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fatherid` (`fatherid`),
  CONSTRAINT `weixin_menu_ibfk_1` FOREIGN KEY (`fatherid`) REFERENCES `weixin_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_newsitem`
--

DROP TABLE IF EXISTS `weixin_newsitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_newsitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new_type` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `content` text,
  `description` varchar(255) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `orders` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `templateid` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '外部url',
  `create_time` datetime DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `templateid` (`templateid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_newstemplate`
--

DROP TABLE IF EXISTS `weixin_newstemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_newstemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tempatename` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_pay`
--

DROP TABLE IF EXISTS `weixin_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '微信支付订单号',
  `accountid` int(11) NOT NULL,
  `appid` varchar(50) NOT NULL,
  `mch_id` varchar(50) NOT NULL,
  `sub_mch_id` varchar(50) DEFAULT NULL COMMENT '子商户号',
  `device_info` varchar(50) DEFAULT NULL,
  `spbill_create_ip` varchar(50) DEFAULT NULL,
  `body` varchar(50) NOT NULL,
  `attach` varchar(150) DEFAULT NULL,
  `goods_tag` varchar(50) DEFAULT NULL,
  `out_trade_no` varchar(50) NOT NULL COMMENT '商户订单号',
  `total_fee` int(11) NOT NULL COMMENT '总金额',
  `cash_fee` int(11) DEFAULT NULL,
  `coupon_fee` int(11) DEFAULT NULL,
  `trade_type` varchar(50) DEFAULT NULL,
  `bank_type` varchar(50) DEFAULT NULL,
  `return_code` varchar(50) DEFAULT NULL,
  `return_msg` varchar(150) DEFAULT NULL,
  `result_code` varchar(50) DEFAULT NULL,
  `err_code` varchar(50) DEFAULT NULL,
  `err_code_des` varchar(150) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `is_subscribe` varchar(5) DEFAULT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `result` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`),
  KEY `transaction_id` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_qrcode`
--

DROP TABLE IF EXISTS `weixin_qrcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_qrcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predoc_no` varchar(50) NOT NULL,
  `ticket` varchar(255) NOT NULL,
  `is_scaned` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket` (`ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_subscribe`
--

DROP TABLE IF EXISTS `weixin_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(50) DEFAULT NULL,
  `templatename` varchar(50) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_texttemplate`
--

DROP TABLE IF EXISTS `weixin_texttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_texttemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weixin_user`
--

DROP TABLE IF EXISTS `weixin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `subscribe_time` datetime DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `subscribe` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-15 14:03:41
