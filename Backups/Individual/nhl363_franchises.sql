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
-- Table structure for table `franchises`
--

DROP TABLE IF EXISTS `franchises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `franchises` (
  `team_name` char(50) NOT NULL,
  `city` char(50) NOT NULL,
  `division` char(50) NOT NULL,
  `ranking` char(50) DEFAULT NULL,
  `arena_name` char(50) NOT NULL,
  `wins` int NOT NULL,
  `losses` int NOT NULL,
  PRIMARY KEY (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchises`
--

LOCK TABLES `franchises` WRITE;
/*!40000 ALTER TABLE `franchises` DISABLE KEYS */;
INSERT INTO `franchises` VALUES ('Anaheim Ducks','Anaheim','PAC','21st','Honda Center',27,27),('Arizona Coyotes','Arizona','CEN','32nd','Gila River Arena',20,39),('Boston Bruins','Boston','ATL','9th','TD Garden',39,19),('Buffalo Sabres','Buffalo','ATL','26th','KeyBank Center',22,33),('Calgary Flames','Calgary','PAC','6th','Scotiabank Saddledome',38,17),('Carolina Hurricanes','Carolina','Metro','3rd','PNC Arena',42,15),('Chicago Blackhawks','Chicago','CEN','25th','United Center',22,32),('Colorado Avalanche','Colorado','CEN','1st','Ball Arena',45,13),('Columbus Blue Jackets','Columbus','Metro','20th','Nationwide Arena',32,29),('Dallas Stars','Dallas','CEN','16th','American Airlines Center',35,24),('Detroit Red Wings','Detroit','ATL','24th','Little Caesars Arena',26,30),('Edmonton Oilers','Edmonton','PAC','15th','Rogers Place',35,24),('Florida Panthers','Florida','ATL','2nd','FLA Live Arena',42,14),('Los Angeles Kings','Los Angeles','PAC','12th','Crypto.com Arena',35,22),('Minnesota Wild','Minnesota','CEN','13th','Xcel Energy Center',37,20),('Montréal Canadiens','Montréal','ATL','31st','Bell Centre',17,36),('Nashville Predators','Nashville','CEN','14th','Bridgestone Arena',37,23),('New Jersey Devils','New Jersey','Metro','28th','Prudential Center',23,35),('New York Islanders','New York','Metro','23rd','UBS Arena',27,25),('New York Rangers','New York','Metro','5th','Madison Square Garden',40,19),('Ottawa Senators','Ottawa','ATL','29th','Canadian Tire Centre',22,36),('Philadelphia Flyers','Philadelphia','Metro','27th','Wells Fargo Center',20,32),('Pittsburgh Penguins','Pittsburgh','Metro','4th','PPG Paints Arena',39,16),('San Jose Sharks','San Jose','PAC','22nd','SAP Center at San Jose',28,27),('Seattle Kraken','Seattle','PAC','30th','Climate Pledge Arena',20,38),('St. Louis Blues','St. Louis','CEN','11th','Enterprise Center',35,18),('Tampa Bay Lightning','Tampa Bay','ATL','7th','AMALIE Arena',39,17),('Toronto Maple Leafs','Toronto','ATL','8th','Scotiabank Arena',39,18),('Vancouver Canucks','Vancouver','PAC','19th','Rogers Arena',30,26),('Vegas Golden Knights','Vegas','PAC','17th','T-Mobile Arena',34,28),('Washington Capitals','Washington','Metro','10th','Capital One Arena',35,20),('Winnipeg Jets','Winnipeg','CEN','18th','Canada Life Centre',30,24);
/*!40000 ALTER TABLE `franchises` ENABLE KEYS */;
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
