CREATE DATABASE  IF NOT EXISTS `skincare_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `skincare_db`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: skincare_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `ds_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ds_id` (`ds_id`),
  CONSTRAINT `brand_ibfk_1` FOREIGN KEY (`ds_id`) REFERENCES `data_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Elizabeth Arden',1),(2,'Shiseido',1),(3,'Clinique',1),(4,'L\'Occitane',1),(5,'Clarins',1),(6,'Estee Lauder',1),(7,'Lancome',1),(8,'Dermalogica',1),(9,'Gatineau',1),(10,'Guinot',1),(11,'Darphin',1),(12,'StriVectin',1),(13,'Fresh',1),(14,'Decleor',1),(15,'Borghese',1),(16,'Biotherm',1),(17,'Mario Badescu',1),(18,'SK II',1),(19,'Dr. Brandt',1),(20,'Kiehl\'s',1),(21,'Peter Thomas Roth',1),(22,'Skin Medica',1),(23,'Lierac',1),(24,'Derma E',1),(25,'Thalgo',1),(26,'Coryse Salome',1),(27,'EltaMD',1),(28,'ROC',1),(29,'Aesop',1),(30,'Helena Rubinstein',1),(31,'Christian Dior',1),(32,'HydroPeptide',1),(33,'CosMedix',1),(34,'La Mer',1),(35,'Olay',1),(36,'La Prairie',1),(37,'Valmont',1),(38,'L\'Oreal',1),(39,'Lavera',1),(40,'Elemis',1),(41,'Nuxe',1),(42,'Orlane',1),(43,'Prevage',1),(44,'Veld\'s',1),(45,'Iluminage',1),(46,'Yves Saint Laurent',1),(47,'Sisley',1),(48,'Rodial',1),(49,'Obagi',1),(50,'Kanebo',1),(51,'Bliss',1),(52,'Avene',1),(53,'Aveda',1),(54,'Perricone MD',1),(55,'Payot',1),(56,'Guerlain',1),(57,'3W Clinic',1),(58,'Givenchy',1),(59,'Jurlique',1),(60,'Origins',1),(61,'By Terry',1),(62,'Lancaster',1),(63,'Skin Ceuticals',1),(64,'Philosophy',1),(65,'Academie',1),(66,'La Roche Posay',1),(67,'Dermaheal',1),(68,'Dr. Hauschka',1),(69,'Priori',1),(70,'Neostrata',1),(71,'Frownies',1),(72,'Caudalie',1),(73,'ReVive',1),(74,'Eve Lom',1),(75,'Exuviance',1),(76,'Glamglow',1),(77,'Renokin',1),(78,'Make Up For Ever',1),(79,'Ella Bache',1),(80,'Babor',1),(81,'Cellex-C',1),(82,'Apivita',1),(83,'Natura Bisse',1),(84,'Youngblood',1),(85,'Evolu',1),(86,'Laura Mercier',1),(87,'Talika',1),(88,'Carita',1),(89,'Pevonia Botanica',1),(90,'DermaQuest',1),(91,'Juvena',1),(92,'Murad',1),(93,'Cane + Austin',1),(94,'Chantecaille',1),(95,'Esthederm',1),(96,'Bobbi Brown',1),(97,'Cailyn',1),(98,'Ren',1),(99,'The Organic Pharmacy',1),(100,'DERMAdoctor',1),(101,'DELAROM',1),(102,'Swissline',1),(103,'FORTE',1),(104,'Edward Bess',1),(105,'Whoo (The History Of Whoo)',1),(106,'Algenist',1),(107,'LashFood',1),(108,'Phytomer',1),(109,'Eminence',1),(110,'Ahava',1),(111,'Dr. Sebagh',1),(112,'Epicuren',1),(113,'Mary Cohr',1),(114,'Anne Semonin',1),(115,'Freeze 24/7',1),(116,'Cle De Peau',1),(117,'Vichy',1),(118,'This Works',1),(119,'Dermelect',1),(120,'KOCOSTAR',1),(121,'VERSO',1),(122,'Laneige',1),(123,'3LAB',1),(124,'Karuna',1),(125,'MALIN+GOETZ',1),(126,'Garnier',1),(127,'Dr. Morita',1),(128,'Sulwhasoo',1),(129,'Supersmile',1),(130,'Jane Iredale',1),(131,'Shu Uemura',1),(132,'BareMinerals',1),(133,'Mustela',1),(134,'Epionce',1),(135,'Joey New York',1),(136,'Kose',1),(137,'THREE',1),(138,'Giorgio Armani',1),(139,'Dr. Ci:Labo',1),(140,'Urban Decay',1),(141,'ADDICTION',1),(142,'Koh Gen Do',1),(143,'Malibu C',1),(144,'Neova',1),(145,'Ampulogy',1),(146,'Orico London',1),(147,'Marula',1),(148,'My Beauty Diary',1),(149,'John Masters Organics',1),(150,'Tsaio',1),(151,'Mama Mio',1),(152,'PS Perfect Select',1),(153,'DR. JOU (By Dr. Morita)',1),(154,'Sabon',1),(155,'EmerginC',1),(156,'Glytone',1),(157,'I-Mju',1),(158,'Biotulin',1),(159,'BeingTRUE',1),(160,'Dr Dennis Gross',1),(161,'Dr. Pierre Ricaud',1),(162,'Osmotics',1),(163,'Glotherapeutics',1),(164,'Athena',1),(165,'Innisfree',1),(166,'UGBang',1),(167,'Australian Gold',1),(168,'St. Tropez',1),(169,'Fake Bake',1),(170,'H2O+',1);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21  6:06:05
