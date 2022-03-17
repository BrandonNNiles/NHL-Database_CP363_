/*Basics*/
DROP DATABASE IF EXISTS `nhl363`;
CREATE DATABASE `nhl363`; 
USE `nhl363`;

/*Don't touch these*/
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

/*Create Tables*/
CREATE TABLE `GAMES`(
    `game_id` int(8) NOT NULL,
    `start_date` date NOT NULL,
    `start_time` time NOT NULL,
    `city_host` char(50) NOT NULL,
    `home_team` char(50) NOT NULL,
    `away_team` char(50) NOT NULL,
    `arena_name` char(50) NOT NULL,
    PRIMARY KEY (`game_id`)
    /*
    Do proper references here
    FOREIGN KEY `FK_home_team` (`home_team`),
    FOREIGN KEY `FK_away_team` (`away_team`)
    */
);
CREATE TABLE `INDIVIDUAL_MATCH`(
    `game_id` int(8) NOT NULL,
    `home_team` char(50) NOT NULL,
    `away_team` char(50) NOT NULL,
    `home_team_goals` int(3) NOT NULL,
    `away_team_goals` int(3) NOT NULL,
    `home_team_shots` int(5) NOT NULL,
    `away_team_shots` int(5) NOT NULL,
    PRIMARY KEY (`game_id`)
    /*
    is game_id also a foriegn key?
    */
);