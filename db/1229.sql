-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: zx
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `t_apply`
--

DROP TABLE IF EXISTS `t_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `insure_year` int(11) DEFAULT NULL,
  `education_level` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `is_member` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_apply`
--

LOCK TABLES `t_apply` WRITE;
/*!40000 ALTER TABLE `t_apply` DISABLE KEYS */;
INSERT INTO `t_apply` VALUES (7,'c1','18811111111',3,2,2,11,0,19,'test1',1,'2017-12-28 20:38:12','2017-12-28 20:27:12'),(8,'c2','18822222222',4,5,1,12,1,19,'test1',0,'2017-12-28 20:34:25','2017-12-28 20:29:16'),(9,'c3','18833333333',6,6,4,13,0,20,'c2',1,'2017-12-28 20:57:29','2017-12-28 20:44:30');
/*!40000 ALTER TABLE `t_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_commission`
--

DROP TABLE IF EXISTS `t_commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_account_name` varchar(50) DEFAULT NULL,
  `bank_account_no` varchar(50) DEFAULT NULL,
  `alipay_no` varchar(50) DEFAULT '',
  `state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_commission`
--

LOCK TABLES `t_commission` WRITE;
/*!40000 ALTER TABLE `t_commission` DISABLE KEYS */;
INSERT INTO `t_commission` VALUES (3,3,11,'c1',19,'test1',200,'bank','tt','123','ali',0,'2017-12-28 20:38:12','2017-12-28 20:38:12'),(5,5,13,'c3',20,'c2',200,'bank2','b2','234','ali2',0,'2017-12-28 20:57:29','2017-12-28 20:57:29'),(6,5,13,'c3',19,'test1',100,'bank','tt','123','ali',0,'2017-12-28 20:57:29','2017-12-28 20:57:29');
/*!40000 ALTER TABLE `t_commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_commission_rule`
--

DROP TABLE IF EXISTS `t_commission_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_commission_rule` (
  `level` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_commission_rule`
--

LOCK TABLES `t_commission_rule` WRITE;
/*!40000 ALTER TABLE `t_commission_rule` DISABLE KEYS */;
INSERT INTO `t_commission_rule` VALUES (1,220),(2,300),(3,500),(4,700),(5,900),(6,1100),(7,1300);
/*!40000 ALTER TABLE `t_commission_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer`
--

DROP TABLE IF EXISTS `t_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `insure_year` int(11) DEFAULT NULL,
  `education_level` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_member` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer`
--

LOCK TABLES `t_customer` WRITE;
/*!40000 ALTER TABLE `t_customer` DISABLE KEYS */;
INSERT INTO `t_customer` VALUES (11,'c1','18811111111',3,2,2,19,0,'2017-12-28 20:27:12','2017-12-28 20:27:12'),(12,'c2','18822222222',4,5,1,19,1,'2017-12-28 20:29:16','2017-12-28 20:29:16'),(13,'c3','18833333333',6,6,4,20,0,'2017-12-28 20:44:30','2017-12-28 20:44:30');
/*!40000 ALTER TABLE `t_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_member`
--

DROP TABLE IF EXISTS `t_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `order_count` int(11) NOT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_account_name` varchar(50) DEFAULT NULL,
  `bank_account_no` varchar(50) DEFAULT NULL,
  `alipay_no` varchar(50) DEFAULT '',
  `qrcode_url` varchar(200) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_member`
--

LOCK TABLES `t_member` WRITE;
/*!40000 ALTER TABLE `t_member` DISABLE KEYS */;
INSERT INTO `t_member` VALUES (19,'test1','18812345678',0,3,2,'bank','tt','123','ali','/zx/img/qrcode/18812345678.png',0,'2017-12-28 21:00:03','2017-12-28 16:53:55'),(20,'c2','18822222222',19,2,1,'bank2','b2','234','ali2','/zx/img/qrcode/18822222222.png',12,'2017-12-28 20:59:33','2017-12-28 20:34:06');
/*!40000 ALTER TABLE `t_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apply_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `commission_amount` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES (3,7,11,'c1','18811111111',19,'test1',2800,200,NULL,NULL,'2017-12-28 20:38:12','2017-12-28 20:38:12'),(5,9,13,'c3','18833333333',20,'c2',2800,300,NULL,NULL,'2017-12-28 20:57:29','2017-12-28 20:57:29');
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','f8508070cd6bc68e998ab488ab920987','管理员','18888888888',1,'2017-12-27 11:10:47','2017-12-27 11:10:47');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-29 20:56:50
