-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: artexchange
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oeuvre` (
  `idoeuvre` int(11) NOT NULL,
  `imgLink` varchar(200) DEFAULT NULL,
  `descriptionOeuvre` varchar(200) DEFAULT NULL,
  `nomOeuvre` varchar(45) DEFAULT NULL,
  `prixOeuvre` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`idoeuvre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oeuvre`
--

LOCK TABLES `oeuvre` WRITE;
/*!40000 ALTER TABLE `oeuvre` DISABLE KEYS */;
INSERT INTO `oeuvre` VALUES (1,'imagesSite/IMG_4992.PNG','A boy surrounded by beautiful nature','Oeuvre1',200.00),(2,'imagesSite/IMG_4634.PNG','What a beautiful scenery this sunset','Oeuvre2',153.00),(3,'imagesSite/IMG_4636.PNG','The Beach. Me. Alone. Beautiful','Oeuvre3',46546.00),(4,'imagesSite/IMG_4637.PNG','Quiet day at the beach. Cold, but beautiful','Oeuvre4',132.00),(5,'imagesSite/IMG_4639.PNG','Waiting for the bus in the desert','Oeuvre5',15.00),(6,'imagesSite/IMG_4642.PNG','Nature again.. At its finest!','Oeuvre6',9870.00),(7,'imagesSite/IMG_4989.JPG','Nature again.. At its finest!','Oeuvre7',3440.00),(8,'imagesSite/IMG_4643.PNG','Canoeing again','Oeuvre8',12.00),(9,'imagesSite/IMG_4646.PNG','A girl, and a train passing','Oeuvre9',546.00),(10,'imagesSite/IMG_4647.PNG','What a beautiful day!','Oeuvre10',489.00),(11,'imagesSite/IMG_4993.PNG','What a beautiful day!','Oeuvre11',67500.00);
/*!40000 ALTER TABLE `oeuvre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-04  0:56:56
