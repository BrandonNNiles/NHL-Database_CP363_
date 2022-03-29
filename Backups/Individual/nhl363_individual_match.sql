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
-- Table structure for table `individual_match`
--

DROP TABLE IF EXISTS `individual_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `individual_match` (
  `game_id` int NOT NULL,
  `home_team` char(50) NOT NULL,
  `away_team` char(50) NOT NULL,
  `home_team_goals` int NOT NULL,
  `away_team_goals` int NOT NULL,
  `home_team_shots` int NOT NULL,
  `away_team_shots` int NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `game_id` (`game_id`),
  KEY `home_team` (`home_team`),
  KEY `away_team` (`away_team`),
  CONSTRAINT `individual_match_ibfk_1` FOREIGN KEY (`home_team`) REFERENCES `franchises` (`team_name`),
  CONSTRAINT `individual_match_ibfk_2` FOREIGN KEY (`away_team`) REFERENCES `franchises` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual_match`
--

LOCK TABLES `individual_match` WRITE;
/*!40000 ALTER TABLE `individual_match` DISABLE KEYS */;
INSERT INTO `individual_match` VALUES (24,'Toronto Maple Leafs','Edmonton Oilers',5,1,30,22),(26,'Vancouver Canucks','Toronto Maple Leafs',3,2,15,40),(31,'Pittsburgh Penguins','Calgary Flames',4,4,32,21);
/*!40000 ALTER TABLE `individual_match` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28 22:07:36
