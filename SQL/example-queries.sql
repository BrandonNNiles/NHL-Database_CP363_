/*Key Queries (Blank values to be filled) */
SELECT * FROM franchises; /*Generalized Table of NHL Information */
SELECT wins, losses, total_goals, head_coach_name FROM team_stats JOIN head_coach_table USING (team_name) WHERE team_name =  'Toronto Maple Leafs'; /*Find Team Information */
SELECT first_name, last_name, goals, shots, shooting percentage FROM individual_stats JOIN home_captains USING (player_id) WHERE main_home_captain =  'John Tavares' AND team_name = 'Toronto Maple Leafs';/*Find Captain of a specifc team and their stats*/
