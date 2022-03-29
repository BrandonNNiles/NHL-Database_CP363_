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
-- Table structure for table `gm_table`
--

DROP TABLE IF EXISTS `gm_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gm_table` (
  `general_manager_name` char(50) NOT NULL,
  `team_name` char(50) NOT NULL,
  PRIMARY KEY (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_table`
--

LOCK TABLES `gm_table` WRITE;
/*!40000 ALTER TABLE `gm_table` DISABLE KEYS */;
INSERT INTO `gm_table` VALUES ('Desiree Kuphal','Anaheim Ducks'),('Ms. Mertie Gusikowski DVM','Arizona Coyotes'),('Nathanael Lubowitz','Boston Bruins'),('Amara O\'Hara','Buffalo Sabres'),('Alfonzo Kling','Calgary Flames'),('Dr. Quinton Metz III','Carolina Hurricanes'),('Miss Emmanuelle Ritchie Sr.','Chicago Blackhawks'),('Sibyl Stehr','Colorado Avalanche'),('Cielo Sanford','Columbus Blue Jackets'),('Kade Keeling V','Dallas Stars'),('Chaim McKenzie','Detroit Red Wings'),('Kaci Heaney','Edmonton Oilers'),('Marcus Crona','Florida Panthers'),('Nya Quigley','Los Angeles Kings'),('Rocky Ryan','Minnesota Wild'),('Prof. Dell Sporer','Montréal Canadiens'),('Ova Hamill','Nashville Predators'),('Antwon Stoltenberg','New Jersey Devils'),('Monserrat Orn','New York Islanders'),('Freddy Hintz','New York Rangers'),('Erick Towne IV','Ottawa Senators'),('Andrew Trantow','Philadelphia Flyers'),('Prof. Madonna Jast','Pittsburgh Penguins'),('Isac Bode','San Jose Sharks'),('Hunter Howell DDS','Seattle Kraken'),('Mr. Bill Bayer DVM','St. Louis Blues'),('Prof. Stephan Cartwright','Tampa Bay Lightning'),('Muhammad Jerde','Toronto Maple Leafs'),('Ignacio Turner','Vancouver Canucks'),('Linnie Predovic','Vegas Golden Knights'),('Dr. Amely Nikolaus','Washington Capitals'),('Maggie Predovic I','Winnipeg Jets');
/*!40000 ALTER TABLE `gm_table` ENABLE KEYS */;
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
