/*Basics*/
DROP DATABASE IF EXISTS `nhl363`;
CREATE DATABASE `nhl363`; 
USE `nhl363`;

/*Don't touch these*/
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

/*Create Tables*/
CREATE TABLE `FRANCHISES`(
    `team_name` char(50) NOT NULL,
    `city` char(50) NOT NULL,
    `division` char(50) NOT NULL,
    `ranking` char(50) NOT NULL,
    `sponsors` char(50) NOT NULL,
    `arena_name` char(50) NOT NULL, /*Home arena? */
    `wins` int(8) NOT NULL,
    `losses` int(8) NOT NULL,
    PRIMARY KEY (`team_name`)
);

CREATE TABLE `GAMES`(
    `game_id` int(8) NOT NULL,
    `start_date` date NOT NULL,
    `start_time` time NOT NULL,
    `city_host` char(50) NOT NULL,
    `home_team` char(50) NOT NULL,
    `away_team` char(50) NOT NULL,
    `arena_name` char(50) NOT NULL,
    PRIMARY KEY (`game_id`),
    FOREIGN KEY (`home_team`) REFERENCES FRANCHISES(`team_name`),
    FOREIGN KEY (`away_team`) REFERENCES FRANCHISES(`team_name`)
);

CREATE TABLE `INDIVIDUAL_MATCH`(
    `game_id` int(8) NOT NULL,
    `home_team` char(50) NOT NULL,
    `away_team` char(50) NOT NULL,
    `home_team_goals` int(3) NOT NULL,
    `away_team_goals` int(3) NOT NULL,
    `home_team_shots` int(5) NOT NULL,
    `away_team_shots` int(5) NOT NULL,
    PRIMARY KEY (`game_id`).
    FOREIGN KEY (`home_team`) REFERENCES FRANCHISES(`team_name`),
    FOREIGN KEY (`away_team`) REFERENCES FRANCHISES(`team_name`)
);