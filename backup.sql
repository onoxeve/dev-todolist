-- MySQL dump 10.16  Distrib 10.1.24-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: tasklist_development
-- ------------------------------------------------------
-- Server version	10.1.24-MariaDB-1~jessie

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-07-15 04:45:42','2017-07-15 04:45:42');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childtasks`
--

DROP TABLE IF EXISTS `childtasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `childtasks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `parenttask_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_childtasks_on_parenttask_id` (`parenttask_id`),
  CONSTRAINT `fk_rails_3b1a7a44a3` FOREIGN KEY (`parenttask_id`) REFERENCES `parenttasks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childtasks`
--

LOCK TABLES `childtasks` WRITE;
/*!40000 ALTER TABLE `childtasks` DISABLE KEYS */;
INSERT INTO `childtasks` VALUES (1,'sss','2017-07-15',1,7,'2017-07-15 11:15:16','2017-07-16 07:46:42'),(2,'ssa','2017-07-15',1,7,'2017-07-15 11:17:01','2017-07-16 07:46:42'),(3,'sasa','2017-07-15',1,7,'2017-07-15 11:17:21','2017-07-16 07:46:42'),(4,'fafasa','2017-07-15',1,7,'2017-07-15 11:19:16','2017-07-16 07:46:42'),(5,'tesasasa','2017-07-15',1,7,'2017-07-15 11:19:22','2017-07-16 07:46:43'),(6,'ssasa','2017-07-15',1,7,'2017-07-15 12:10:43','2017-07-16 07:46:43'),(7,'a','2017-07-15',1,7,'2017-07-15 12:10:50','2017-07-16 07:46:43'),(8,'sas','2017-07-15',1,6,'2017-07-15 12:11:19','2017-07-16 07:46:43'),(9,'test','2017-07-15',1,6,'2017-07-15 12:13:34','2017-07-16 07:46:43'),(10,'testaaaa','2017-07-15',1,7,'2017-07-15 12:26:19','2017-07-16 07:46:43'),(11,'aa','2017-07-15',1,6,'2017-07-15 12:26:44','2017-07-16 07:46:43'),(12,'gggg','2017-07-15',1,6,'2017-07-15 12:37:10','2017-07-16 07:46:43'),(13,'anchobi','2017-07-15',1,7,'2017-07-15 12:41:04','2017-07-16 07:46:43'),(14,'anan','2017-07-15',1,7,'2017-07-15 12:42:11','2017-07-16 07:46:43'),(15,'西友に行く','2017-07-15',1,8,'2017-07-15 12:43:39','2017-07-16 07:46:43'),(16,'西友に行くa','2017-07-15',1,8,'2017-07-15 13:03:00','2017-07-16 07:46:43'),(17,'西友に行かない','2017-07-15',1,8,'2017-07-15 14:21:22','2017-07-16 07:46:43'),(18,'西友に行こうかな','2017-07-15',1,8,'2017-07-15 14:23:39','2017-07-16 07:46:43'),(19,'西友に行くかも','2017-07-15',1,8,'2017-07-15 14:43:48','2017-07-16 07:46:43'),(20,'西友に行くかも2','2017-07-15',1,8,'2017-07-15 14:44:05','2017-07-16 08:41:33'),(21,'こじか','2017-07-15',1,9,'2017-07-15 15:06:44','2017-07-16 07:46:44'),(22,'こじかちゃん','2017-07-15',1,9,'2017-07-15 15:07:25','2017-07-16 07:46:44'),(23,'こじかちゃん3','2017-07-15',1,9,'2017-07-15 15:08:08','2017-07-16 07:46:44'),(24,'こじかちゃん4','2017-07-15',1,9,'2017-07-15 15:09:31','2017-07-16 07:46:44'),(25,'こじかちゃん5','2017-07-15',1,9,'2017-07-15 15:10:02','2017-07-16 07:46:44'),(26,'こじかちゃん6','2017-07-15',1,9,'2017-07-15 15:10:11','2017-07-16 08:01:40'),(27,'こじかちゃん7','2017-07-15',1,9,'2017-07-15 15:19:34','2017-07-16 09:02:32'),(28,'へび','2017-07-21',1,9,'2017-07-16 04:36:57','2017-07-17 08:15:09'),(29,'testman2','2017-07-17',0,13,'2017-07-17 08:16:43','2017-07-17 08:35:00'),(30,'pink','2017-07-17',0,1,'2017-07-17 08:44:40','2017-07-17 08:44:47');
/*!40000 ALTER TABLE `childtasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parenttasks`
--

DROP TABLE IF EXISTS `parenttasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parenttasks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parenttasks`
--

LOCK TABLES `parenttasks` WRITE;
/*!40000 ALTER TABLE `parenttasks` DISABLE KEYS */;
INSERT INTO `parenttasks` VALUES (1,'testman','2017-07-15 05:49:31','2017-07-16 05:02:49'),(2,'aa','2017-07-15 05:59:19','2017-07-15 05:59:19'),(3,'testa','2017-07-15 06:06:47','2017-07-15 06:06:47'),(4,'ank','2017-07-15 06:28:47','2017-07-15 06:28:47'),(5,'sa','2017-07-15 06:43:02','2017-07-15 06:43:02'),(6,'ggg','2017-07-15 06:50:34','2017-07-15 06:50:34'),(7,'¥¥','2017-07-15 06:51:44','2017-07-15 06:51:44'),(8,'牛乳を買う','2017-07-15 12:42:47','2017-07-15 12:42:47'),(9,'牛乳を買わない','2017-07-15 15:05:10','2017-07-15 15:05:10'),(10,'へび','2017-07-16 04:37:21','2017-07-16 04:37:21'),(11,'**','2017-07-17 07:36:05','2017-07-17 07:36:05'),(12,'&&','2017-07-17 07:36:45','2017-07-17 07:36:45'),(13,'testman2','2017-07-17 08:16:34','2017-07-17 08:16:34');
/*!40000 ALTER TABLE `parenttasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170715044329'),('20170715095057'),('20170715095308');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-17  9:26:00
