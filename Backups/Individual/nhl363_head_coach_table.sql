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
-- Table structure for table `head_coach_table`
--

DROP TABLE IF EXISTS `head_coach_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `head_coach_table` (
  `head_coach_name` char(50) NOT NULL,
  `team_name` char(50) NOT NULL,
  PRIMARY KEY (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `head_coach_table`
--

LOCK TABLES `head_coach_table` WRITE;
/*!40000 ALTER TABLE `head_coach_table` DISABLE KEYS */;
INSERT INTO `head_coach_table` VALUES ('Emily Collier','Anaheim Ducks'),('Orrin Watsica I','Arizona Coyotes'),('Michelle Zboncak','Boston Bruins'),('Prof. Tevin Cormier DVM','Buffalo Sabres'),('Barney Corwin','Calgary Flames'),('Prof. Reinhold Nicolas','Carolina Hurricanes'),('Harry Carroll','Chicago Blackhawks'),('Mariana Miller','Colorado Avalanche'),('Arnoldo Weber Sr.','Columbus Blue Jackets'),('Dr. Michale Corkery','Dallas Stars'),('Jackeline Bernhard','Detroit Red Wings'),('Laney Miller','Edmonton Oilers'),('Prof. Abelardo Beatty','Florida Panthers'),('Bessie Jacobi','Los Angeles Kings'),('Reina Cruickshank Sr.','Minnesota Wild'),('Ricardo Koch','Montréal Canadiens'),('Devan Shields','Nashville Predators'),('Lucinda Robel','New Jersey Devils'),('Margaretta Padberg','New York Islanders'),('Cassandre Hills','New York Rangers'),('Dexter White','Ottawa Senators'),('Dr. Wilburn Armstrong','Philadelphia Flyers'),('Madalyn O\'Kon','Pittsburgh Penguins'),('Reina Tromp','San Jose Sharks'),('Ms. Aleen Jast','Seattle Kraken'),('Bennett Bode IV','St. Louis Blues'),('Miss Roslyn Zemlak','Tampa Bay Lightning'),('Sheldon Keefe','Toronto Maple Leafs'),('Prof. Gianni Nader','Vancouver Canucks'),('Florian Romaguera','Vegas Golden Knights'),('Miss Elva Cummings IV','Washington Capitals'),('Mara Ward','Winnipeg Jets');
/*!40000 ALTER TABLE `head_coach_table` ENABLE KEYS */;
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
