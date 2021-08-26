-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: amv
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `equipment`
--
DROP DATABASE IF exists amv;
CREATE DATABASE amv;
Use amv;
DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_available` tinyint(1) NOT NULL,
  `is_damaged` tinyint(1) NOT NULL,
  `equipment_category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Equipment_equipment_category_i_9bfedbb7_fk_Equipment` (`equipment_category_id`),
  CONSTRAINT `Equipment_equipment_category_i_9bfedbb7_fk_Equipment` FOREIGN KEY (`equipment_category_id`) REFERENCES `equipment category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment category`
--

DROP TABLE IF EXISTS `equipment category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `equipment category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `is_free_to_rent_for_1_day` tinyint(1) NOT NULL,
  `rent_price` double DEFAULT NULL,
  `max_total_days_for_rent` int DEFAULT NULL,
  `equipment_type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `Equipment Category_equipment_type_id_c710287f_fk_Equipment` (`equipment_type_id`),
  CONSTRAINT `Equipment Category_equipment_type_id_c710287f_fk_Equipment` FOREIGN KEY (`equipment_type_id`) REFERENCES `equipment type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment category`
--

LOCK TABLES `equipment category` WRITE;
/*!40000 ALTER TABLE `equipment category` DISABLE KEYS */;
INSERT INTO `equipment category` VALUES (1,'Orbital sander, 230VAC (eksentersliper 230VAC)',1,20,4,1),(2,'Belt sander (båndsliper)',1,20,4,1),(3,'Electric planer, 230VAC (høvel 230VAC)',1,20,4,1),(4,'Miter saw, 230VAC (gjære/kombisag 230VAC)',1,20,4,1),(5,'9\" Vinkelsliper for stein og betong',1,20,4,1),(6,'Demolishion hammer, 230VAC (meislemaskin 230VAC)',1,20,4,1),(7,'Slagdrill, Batteri, Milwaukee',1,20,4,1),(8,'Grass trimmer, petrol (kantklipper, bensin)',1,20,4,1),(9,'Air kompressor (kompressor)',1,20,4,1),(10,'Diagnoseverktøy, bil',1,50,4,1),(11,'Surface plate vibrator (hoppetusse), bensin',1,50,4,1),(12,'Tile cutter for wood (fliskutter for trevirke)',1,20,4,1),(13,'Auto-feed screwdriver (skruautomat)',1,20,4,1),(14,'Motorized wheelbarrow (motorisert trillebår)',1,50,4,1),(15,'Spikerpistol, stor (trykkluft)',1,20,4,2),(16,'Spikerpistol, liten (trykkluft)',1,20,4,2),(17,'Spikerpistol, stor (Milwaukee)',1,20,4,2),(18,'Spikerpistol, mellom (Milwaukee)',1,20,4,2),(19,'Spikerpistol, liten (Milwaukee)',1,20,4,2),(20,'Vedkløyver, Bensindrevet',1,50,4,3),(21,'Fliskutter for trevirke',1,50,4,3),(22,'Tilhenger, boggi; RD 5702 Kassemål LxBxH: 297x153x29cm Nyttelast max. 1150kg',1,50,4,4),(23,'Tilhenger, liten, RC 8834 Kassemål LxBxH: 197x153x29cm Nyttelast max. 645kg',1,50,4,4),(24,'Tilhenger, skap, JP2591 Kassemål innv. LxBxH: 292x154x194cm (Dørkarm BxH: 146x190cm) Nyttelast: 1090 kg ',1,50,4,4),(25,'Personløfter, arb.høyde 12m. SWL 200 kg, 230 VAC',0,100,4,5),(26,'Strømaggregat, 3.7 kW (Diesel)',1,50,4,5);
/*!40000 ALTER TABLE `equipment category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment type`
--

DROP TABLE IF EXISTS `equipment type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `equipment type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment type`
--

LOCK TABLES `equipment type` WRITE;
/*!40000 ALTER TABLE `equipment type` DISABLE KEYS */;
INSERT INTO `equipment type` VALUES (1,'Diverse små utstyr'),(2,'Spikerpistoler'),(5,'Store utstyr'),(4,'Tilhengere'),(3,'Vedhogst utstyr');
/*!40000 ALTER TABLE `equipment type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `rent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_rent_date` date NOT NULL,
  `end_rent_date` date NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `equipment_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Rent_equipment_id_5b98b270_fk_Equipment_id` (`equipment_id`),
  KEY `Rent_user_id_5c5a151a_fk_User_id` (`user_id`),
  CONSTRAINT `Rent_equipment_id_5b98b270_fk_Equipment_id` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`),
  CONSTRAINT `Rent_user_id_5c5a151a_fk_User_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `equipment_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Report_equipment_id_14f5e9ab_fk_Equipment_id` (`equipment_id`),
  KEY `Report_user_id_d2415d9b_fk_User_id` (`user_id`),
  CONSTRAINT `Report_equipment_id_14f5e9ab_fk_Equipment_id` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`),
  CONSTRAINT `Report_user_id_d2415d9b_fk_User_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restriction`
--

DROP TABLE IF EXISTS `restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `restriction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_trained` tinyint(1) NOT NULL,
  `equipment_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Restriction_equipment_id_80787a31_fk_Equipment_id` (`equipment_id`),
  KEY `Restriction_user_id_8b9a4cb0_fk_User_id` (`user_id`),
  CONSTRAINT `Restriction_equipment_id_80787a31_fk_Equipment_id` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`),
  CONSTRAINT `Restriction_user_id_8b9a4cb0_fk_User_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restriction`
--

LOCK TABLES `restriction` WRITE;
/*!40000 ALTER TABLE `restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `tlf` varchar(25) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_union` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'pbkdf2_sha256$260000$Z4HI5SFG4m5vToZST6RorG$/MDNpywL0zVBp3ZuN9ape85VbWbV/aYf2cnk3r4zxsA=',NULL,'AMV','AMV','amv@amv.no','123456789',1,0,1),(2,'pbkdf2_sha256$260000$Ay6k28Fi6Tf5dn7Hwo52nu$pAeoF8g16kolLKThsFRnepbs/xmWwaPoEf8Qnoq7zDs=',NULL,'Ammar','Haddad','ammar@gmail.com','987654321',1,1,0),(3,'pbkdf2_sha256$260000$xpzMqaX5gp1VRewZ7Ymlgy$NRahA/EM/XLQgqtqqha02HBjDFCW+1ViogEZxuj1CKs=',NULL,'Issa','Alissa','issa@gmail.com','3491836419',1,1,0),(4,'pbkdf2_sha256$260000$YXMBZMMNWn4NspHW0s8Yk1$EFe5zRMiFfCeoo4pDdZgj9vrLYeqoVLblDhE8eKhjmU=',NULL,'Halldor','Ulland','halldor@gmail.com','9286349823',1,0,0),(5,'pbkdf2_sha256$260000$sSiC3pa2ceXKDum5HTGJWq$hpdWKdHAbXY9HlRsPL9J6X2gJYZEcrMqWY0ItNBdZJY=',NULL,'Rikke','Paulsen','rikke@gmail.com','23648288',1,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-22 18:35:37
