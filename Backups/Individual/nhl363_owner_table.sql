-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: nhl363
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `owner_table`
--

DROP TABLE IF EXISTS `owner_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_table` (
  `owner_name` char(50) NOT NULL,
  `team_name` char(50) NOT NULL,
  PRIMARY KEY (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_table`
--

LOCK TABLES `owner_table` WRITE;
/*!40000 ALTER TABLE `owner_table` DISABLE KEYS */;
INSERT INTO `owner_table` VALUES ('Miss Pansy Stokes Sr.','Anaheim Ducks'),('Bianka Bogisich','Arizona Coyotes'),('Mr. Troy Schowalter I','Boston Bruins'),('Johnson Hirthe','Buffalo Sabres'),('Avis Denesik','Calgary Flames'),('Ms. Alessia Spencer Jr.','Carolina Hurricanes'),('Dr. Samantha Wehner','Chicago Blackhawks'),('Arne Schuppe','Colorado Avalanche'),('Prof. Jeanette Shanahan II','Columbus Blue Jackets'),('Mortimer Schmeler','Dallas Stars'),('Narciso Bergnaum','Detroit Red Wings'),('Dr. Annie Becker','Edmonton Oilers'),('Destiny Effertz','Florida Panthers'),('Darwin Walter','Los Angeles Kings'),('Kenna McClure','Minnesota Wild'),('Prof. Carlos Pagac','Montréal Canadiens'),('Florida Boyle','Nashville Predators'),('Judd Littel','New Jersey Devils'),('London Streich','New York Islanders'),('Oleta Bruen','New York Rangers'),('Prof. Freeman McLaughlin','Ottawa Senators'),('Jonathan Kuhlman','Philadelphia Flyers'),('Murphy McDermott','Pittsburgh Penguins'),('Mr. Francis Champlin DVM','San Jose Sharks'),('Bridgette Heidenreich','Seattle Kraken'),('Jolie Bradtke PhD','St. Louis Blues'),('Leonora Funk','Tampa Bay Lightning'),('Larry Kutch','Toronto Maple Leafs'),('Donavon Trantow','Vancouver Canucks'),('Violet Renner','Vegas Golden Knights'),('Beth Herman','Washington Capitals'),('Clemens Berge','Winnipeg Jets');
/*!40000 ALTER TABLE `owner_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28 22:07:37
