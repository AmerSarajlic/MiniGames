CREATE DATABASE  IF NOT EXISTS `minigames` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `minigames`;
-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: minigames
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `addition`
--

DROP TABLE IF EXISTS `addition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addition` (
  `idaddition` int(11) NOT NULL AUTO_INCREMENT,
  `number1` int(10) DEFAULT NULL,
  `number2` int(10) DEFAULT NULL,
  `correct` int(10) DEFAULT NULL,
  `mode` varchar(10) DEFAULT 'null',
  PRIMARY KEY (`idaddition`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addition`
--

LOCK TABLES `addition` WRITE;
/*!40000 ALTER TABLE `addition` DISABLE KEYS */;
INSERT INTO `addition` VALUES (1,5,4,9,'beginner'),(2,1,2,3,'beginner'),(3,4,1,5,'beginner'),(4,6,4,10,'beginner'),(5,3,3,6,'beginner'),(6,4,3,7,'beginner'),(7,1,7,8,'beginner'),(8,313,124,437,'expert'),(9,313,124,437,'expert'),(10,194,806,1000,'expert'),(11,641,213,854,'expert'),(12,875,111,986,'expert'),(13,671,261,932,'expert'),(14,399,579,978,'expert'),(15,503,431,934,'expert'),(16,719,216,935,'expert'),(17,899,101,1000,'expert'),(18,3,7,8,'beginner'),(19,6,1,7,'beginner'),(20,5,3,8,'beginner');
/*!40000 ALTER TABLE `addition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `iddivision` int(11) NOT NULL AUTO_INCREMENT,
  `number1` int(10) DEFAULT NULL,
  `number2` int(10) DEFAULT NULL,
  `correct` int(10) DEFAULT NULL,
  `mode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddivision`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,84,7,12,'expert'),(2,171,9,19,'expert'),(3,70,14,5,'expert'),(4,108,6,18,'expert'),(5,39,13,3,'expert'),(6,68,4,17,'expert'),(7,120,8,15,'expert'),(8,112,16,7,'expert'),(9,65,13,5,'expert'),(10,32,16,2,'expert'),(11,13,1,13,'beginner'),(12,40,8,5,'beginner'),(13,21,7,3,'beginner'),(14,35,7,5,'beginner'),(15,24,4,6,'beginner'),(16,16,2,8,'beginner'),(17,27,9,3,'beginner'),(18,18,3,6,'beginner'),(19,9,9,1,'beginner'),(20,81,9,9,'beginner');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiplication`
--

DROP TABLE IF EXISTS `multiplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multiplication` (
  `idmultiplication` int(11) NOT NULL AUTO_INCREMENT,
  `number1` int(10) DEFAULT NULL,
  `number2` int(10) DEFAULT NULL,
  `correct` int(10) DEFAULT NULL,
  `mode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmultiplication`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiplication`
--

LOCK TABLES `multiplication` WRITE;
/*!40000 ALTER TABLE `multiplication` DISABLE KEYS */;
INSERT INTO `multiplication` VALUES (1,7,12,84,'expert'),(2,16,2,32,'expert'),(3,5,13,65,'expert'),(4,19,9,171,'expert'),(5,5,14,70,'expert'),(6,18,6,108,'expert'),(7,3,13,39,'expert'),(8,17,4,68,'expert'),(9,15,8,120,'expert'),(10,7,16,112,'expert'),(11,1,13,13,'beginner'),(12,5,8,40,'beginner'),(13,3,7,21,'beginner'),(14,7,5,35,'beginner'),(15,4,6,24,'beginner'),(16,8,2,16,'beginner'),(17,2,1,2,'beginner'),(18,6,3,18,'beginner'),(19,9,9,81,'beginner'),(20,4,9,36,'beginner');
/*!40000 ALTER TABLE `multiplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtraction`
--

DROP TABLE IF EXISTS `subtraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subtraction` (
  `idsubtraction` int(11) NOT NULL AUTO_INCREMENT,
  `number1` int(10) DEFAULT NULL,
  `number2` int(10) DEFAULT NULL,
  `correct` int(10) DEFAULT NULL,
  `mode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idsubtraction`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtraction`
--

LOCK TABLES `subtraction` WRITE;
/*!40000 ALTER TABLE `subtraction` DISABLE KEYS */;
INSERT INTO `subtraction` VALUES (1,313,124,189,'expert'),(2,999,823,176,'expert'),(3,624,432,192,'expert'),(4,742,612,130,'expert'),(5,925,153,772,'expert'),(6,853,621,232,'expert'),(7,983,357,626,'expert'),(8,584,356,228,'expert'),(9,753,613,140,'expert'),(10,668,279,389,'expert'),(11,43,13,30,'beginner'),(12,82,53,29,'beginner'),(13,11,7,4,'beginner'),(14,43,5,38,'beginner'),(15,54,41,13,'beginner'),(16,41,33,8,'beginner'),(17,71,62,9,'beginner'),(18,26,11,15,'beginner'),(19,99,73,26,'beginner'),(20,18,9,9,'beginner');
/*!40000 ALTER TABLE `subtraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'minigames'
--

--
-- Dumping routines for database 'minigames'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-17 13:34:50
