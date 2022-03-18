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
    PRIMARY KEY (`game_id`),
    FOREIGN KEY (`home_team`) REFERENCES FRANCHISES(`team_name`),
    FOREIGN KEY (`away_team`) REFERENCES FRANCHISES(`team_name`)
);

CREATE TABLE `PLAYERS`(
    `player_id` int(8) NOT NULL,
    `first_name` char(50) NOT NULL,
    `last_name` char(50) NOT NULL,
    `bdate` char(50) NOT NULL,
    `position` char(50) NOT NULL,
    `draft_round` int(8) NOT NULL,
    `draft_number` int(8) NOT NULL,
    `status` char(50) NOT NULL, 
    `team_name` char(50) NOT NULL, 
    PRIMARY KEY (`player_id`)
);

CREATE TABLE `INDIVIDUAL_STATS`(
    `player_id` int(8) NOT NULL,
    `first_name` char(50) NOT NULL,
    `last_name` char(50) NOT NULL,
    `position` char(50) NOT NULL,
    `goals` int(8) NOT NULL,
    `goals_pergame` int(8) NOT NULL,
    `powerplay_goals` int(8) NOT NULL,
    `shorthand_goals` int(8) NOT NULL,
    `overtime_goals` int(8) NOT NULL,
    `gamewinning_goals` int(8) NOT NULL,
    `games_played` int(8) NOT NULL,
    `plus_minus` int(8) NOT NULL,
    `shots` int(8) NOT NULL,
    `shooting_percentage` int(8) NOT NULL,
    `time_on_ice` int(8) NOT NULL,
    `primary_assists` int(8) NOT NULL,
    `secondary_assists` int(8) NOT NULL,
    PRIMARY KEY (`player_id`)
);

CREATE TABLE `TEAM_STATS`(
    `team_name` char(50) NOT NULL,
    `wins` int(8) NOT NULL,
    `losses` int(8) NOT NULL,
    `total_goals` int(8) NOT NULL,
    `total_powerplay_goals` int(8) NOT NULL,
    `total_shorthand_goals` int(8) NOT NULL,
    `total_overtime_goals` int(8) NOT NULL,
    `shootout_games_won` int(8) NOT NULL,
    `regulation_wins` int(8) NOT NULL,
    `overtime_losses` int(8) NOT NULL,
    `overtime_wins` int(8) NOT NULL,
    `point_percentages` int(8) NOT NULL,
    `powerplay_percentage` int(8) NOT NULL,
    `penaltykill_percentage` int(8) NOT NULL,
    `goals_for` int(8) NOT NULL,
    `goals_against` int(8) NOT NULL,
    PRIMARY KEY (`team_name`)
);

CREATE TABLE `MATCH_PLAYER_LIST`(
    `player_id` int(8) NOT NULL,
    `game_id` int(8) NOT NULL,
    `team_name` char(50) NOT NULL,
    `first_name` char(50) NOT NULL,
    `last_name` char(50) NOT NULL,
    `position` char(50) NOT NULL,
    `status` char(50) NOT NULL, 
    `starter` char(50) NOT NULL, 
    PRIMARY KEY (`player_id`, `game_id`)
);

CREATE TABLE `HOME_CAPTAINS`(
    `player_id` int(8) NOT NULL,
    `game_id` int(8) NOT NULL,
    `team_name` char(50) NOT NULL,
    `main_home_captain` char(50) NOT NULL,
    `alternate1_home_captain` char(50) NOT NULL,
    `alternate2_home_captain` char(50) NOT NULL,
    PRIMARY KEY (`player_id`, `game_id`)
);

CREATE TABLE `AWAY_CAPTAINS`(
    `player_id` int(8) NOT NULL,
    `game_id` int(8) NOT NULL,
    `team_name` char(50) NOT NULL,
    `main_away_captain` char(50) NOT NULL,
    `alternate1_away_captain` char(50) NOT NULL,
    `alternate2_away_captain` char(50) NOT NULL,
    PRIMARY KEY (`player_id`, `game_id`)
);

CREATE TABLE `GM_TABLE`(
    `general_manager_name` char(50) NOT NULL,
    `team_name` char(50) NOT NULL, 
    PRIMARY KEY (`team_name`)
);

CREATE TABLE `OWNER_TABLE`(
    `owner_name` char(50) NOT NULL,
    `team_name` char(50) NOT NULL, 
    PRIMARY KEY (`team_name`)
);

CREATE TABLE `HEAD_COACH_TABLE`(
    `head_coach_name` char(50) NOT NULL,
    `team_name` char(50) NOT NULL, 
    PRIMARY KEY (`team_name`)
);
