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
-- Table structure for table `away_captains`
--

DROP TABLE IF EXISTS `away_captains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `away_captains` (
  `player_id` int NOT NULL,
  `game_id` int NOT NULL,
  `team_name` char(50) NOT NULL,
  `main_away_captain` char(50) NOT NULL,
  `alternate1_away_captain` char(50) NOT NULL,
  `alternate2_away_captain` char(50) NOT NULL,
  PRIMARY KEY (`player_id`,`game_id`),
  UNIQUE KEY `player_id` (`player_id`),
  UNIQUE KEY `game_id` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `away_captains`
--

LOCK TABLES `away_captains` WRITE;
/*!40000 ALTER TABLE `away_captains` DISABLE KEYS */;
INSERT INTO `away_captains` VALUES (2,24,'Edmonton Oilers','Ivan Lin','Bob Bobbinson','Joe Daddy');
/*!40000 ALTER TABLE `away_captains` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `game_id` int NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `city_host` char(50) NOT NULL,
  `home_team` char(50) NOT NULL,
  `away_team` char(50) NOT NULL,
  `arena_name` char(50) NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `game_id` (`game_id`),
  KEY `home_team` (`home_team`),
  KEY `away_team` (`away_team`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`home_team`) REFERENCES `franchises` (`team_name`),
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`away_team`) REFERENCES `franchises` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (24,'2022-01-05','19:00:00','Toronto','Toronto Maple Leafs','Edmonton Oilers','Scotiabank Arena'),(26,'2022-01-09','20:00:00','Vancouver','Vancouver Canucks','Toronto Maple Leafs','Rogers Arena'),(31,'2022-02-01','18:30:00','Pittsburgh','Pittsburgh Penguins','Calgary Flames','PPG Paints Arena');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `home_captains`
--

DROP TABLE IF EXISTS `home_captains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_captains` (
  `player_id` int NOT NULL,
  `game_id` int NOT NULL,
  `team_name` char(50) NOT NULL,
  `main_home_captain` char(50) NOT NULL,
  `alternate1_home_captain` char(50) NOT NULL,
  `alternate2_home_captain` char(50) NOT NULL,
  PRIMARY KEY (`player_id`,`game_id`),
  UNIQUE KEY `player_id` (`player_id`),
  UNIQUE KEY `game_id` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_captains`
--

LOCK TABLES `home_captains` WRITE;
/*!40000 ALTER TABLE `home_captains` DISABLE KEYS */;
INSERT INTO `home_captains` VALUES (52,102,'Toronto Maple Leafs','John Tavares','Morgan Rielly','Auston Matthews');
/*!40000 ALTER TABLE `home_captains` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `individual_stats`
--

DROP TABLE IF EXISTS `individual_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `individual_stats` (
  `player_id` int NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `position` char(50) NOT NULL,
  `goals` int NOT NULL,
  `goals_pergame` int NOT NULL,
  `powerplay_goals` int NOT NULL,
  `shorthand_goals` int NOT NULL,
  `overtime_goals` int NOT NULL,
  `gamewinning_goals` int NOT NULL,
  `games_played` int NOT NULL,
  `plus_minus` int NOT NULL,
  `shots` int NOT NULL,
  `shooting_percentage` varchar(6) NOT NULL,
  `time_on_ice` int NOT NULL,
  `primary_assists` int NOT NULL,
  `secondary_assists` int NOT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual_stats`
--

LOCK TABLES `individual_stats` WRITE;
/*!40000 ALTER TABLE `individual_stats` DISABLE KEYS */;
INSERT INTO `individual_stats` VALUES (52,'John','Tavares','Forward',20,1,2,3,4,5,6,7,186,'10.8%',1,1,1);
/*!40000 ALTER TABLE `individual_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_player_list`
--

DROP TABLE IF EXISTS `match_player_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_player_list` (
  `player_id` int NOT NULL,
  `game_id` int NOT NULL,
  `team_name` char(50) NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `position` char(50) NOT NULL,
  `status` char(50) NOT NULL,
  `starter` char(50) NOT NULL,
  PRIMARY KEY (`player_id`,`game_id`),
  UNIQUE KEY `player_id` (`player_id`),
  UNIQUE KEY `game_id` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_player_list`
--

LOCK TABLES `match_player_list` WRITE;
/*!40000 ALTER TABLE `match_player_list` DISABLE KEYS */;
INSERT INTO `match_player_list` VALUES (2,24,'Edmonton Oilers','Ivan','Lin','Defense','Playing','True');
/*!40000 ALTER TABLE `match_player_list` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `bdate` char(50) NOT NULL,
  `position` char(50) NOT NULL,
  `draft_round` int NOT NULL,
  `draft_number` int NOT NULL,
  `status` char(50) NOT NULL,
  `team_name` char(50) NOT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id` (`player_id`),
  KEY `team_name` (`team_name`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_name`) REFERENCES `franchises` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Brandon','Niles','1997','Forward',2,1,'Active','Toronto Maple Leafs'),(2,'Ivan','Lin','1996','Defense',3,2,'Literally Dead','Edmonton Oilers'),(3,'Kabir','Babra','1997','Center',5,1,'Sleeping','Pittsburgh Penguins'),(4,'Rami','Joe','1996','Goalie',10,11,'Muted/Deafened','Calgary Flames');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_stats`
--

DROP TABLE IF EXISTS `team_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_stats` (
  `team_name` char(50) NOT NULL,
  `wins` int NOT NULL,
  `losses` int NOT NULL,
  `total_goals` int NOT NULL,
  `total_powerplay_goals` int NOT NULL,
  `total_shorthand_goals` int NOT NULL,
  `total_overtime_goals` int NOT NULL,
  `shootout_games_won` int NOT NULL,
  `regulation_wins` int NOT NULL,
  `overtime_losses` int NOT NULL,
  `overtime_wins` int NOT NULL,
  `point_percentages` int NOT NULL,
  `powerplay_percentage` int NOT NULL,
  `penaltykill_percentage` int NOT NULL,
  `goals_for` int NOT NULL,
  `goals_against` int NOT NULL,
  PRIMARY KEY (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_stats`
--

LOCK TABLES `team_stats` WRITE;
/*!40000 ALTER TABLE `team_stats` DISABLE KEYS */;
INSERT INTO `team_stats` VALUES ('Toronto Maple Leafs',39,18,223,47,3,2,3,1,5,7,6,30,20,223,186);
/*!40000 ALTER TABLE `team_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'nhl363'
--

--
-- Dumping routines for database 'nhl363'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28 22:10:17
