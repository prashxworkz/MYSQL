CREATE DATABASE cricket_teams;

USE cricket_teams;

CREATE TABLE kkr_team (id INT PRIMARY KEY,name VARCHAR(40) NOT NULL,players VARCHAR(40) NOT NULL,jersey_no INT NOT NULL,country VARCHAR(40) NOT NULL,UNIQUE (jersey_no),CHECK (jersey_no > 0));

CREATE TABLE srh_team (id INT PRIMARY KEY,name VARCHAR(40) NOT NULL,players VARCHAR(40) NOT NULL,jersey_no INT NOT NULL,country VARCHAR(40) NOT NULL,UNIQUE (jersey_no),CHECK (jersey_no > 0));

INSERT INTO kkr_team VALUES (1, 'Kolkata Knight Riders', 'Shubman Gill', 7, 'India');
INSERT INTO kkr_team VALUES (2, 'Kolkata Knight Riders', 'Andre Russell', 12, 'West Indies');
INSERT INTO kkr_team VALUES (3, 'Kolkata Knight Riders', 'Eoin Morgan', 16, 'England');
INSERT INTO kkr_team VALUES (4, 'Kolkata Knight Riders', 'Sunil Narine', 74, 'West Indies');
INSERT INTO kkr_team VALUES (5, 'Kolkata Knight Riders', 'Pat Cummins', 30, 'Australia');
INSERT INTO kkr_team VALUES (6, 'Kolkata Knight Riders', 'Dinesh Karthik', 21, 'India');
INSERT INTO kkr_team VALUES (7, 'Kolkata Knight Riders', 'Nitish Rana', 27, 'India');
INSERT INTO kkr_team VALUES (8, 'Kolkata Knight Riders', 'Varun Chakravarthy', 28, 'India');
INSERT INTO kkr_team VALUES (9, 'Kolkata Knight Riders', 'Lockie Ferguson', 69, 'New Zealand');
INSERT INTO kkr_team VALUES (10, 'Kolkata Knight Riders', 'Rahul Tripathi', 19, 'India');

INSERT INTO srh_team VALUES (1, 'Sunrisers Hyderabad', 'David Warner', 31, 'Australia');
INSERT INTO srh_team VALUES (2, 'Sunrisers Hyderabad', 'Kane Williamson', 22, 'New Zealand');
INSERT INTO srh_team VALUES (3, 'Sunrisers Hyderabad', 'Bhuvneshwar Kumar', 15, 'India');
INSERT INTO srh_team VALUES (4, 'Sunrisers Hyderabad', 'Rashid Khan', 19, 'Afghanistan');
INSERT INTO srh_team VALUES (5, 'Sunrisers Hyderabad', 'Manish Pandey', 9, 'India');
INSERT INTO srh_team VALUES (6, 'Sunrisers Hyderabad', 'Jonny Bairstow', 51, 'England');
INSERT INTO srh_team VALUES (7, 'Sunrisers Hyderabad', 'Vijay Shankar', 12, 'India');
INSERT INTO srh_team VALUES (8, 'Sunrisers Hyderabad', 'T Natarajan', 44, 'India');
INSERT INTO srh_team VALUES (9, 'Sunrisers Hyderabad', 'Jason Holder', 98, 'West Indies');
INSERT INTO srh_team VALUES (10, 'Sunrisers Hyderabad', 'Priyam Garg', 24, 'India');

SELECT * FROM kkr_team;
SELECT * FROM srh_team;

SELECT * FROM kkr_team WHERE id BETWEEN 1 AND 5;
SELECT * FROM srh_team WHERE id BETWEEN 1 AND 7;

SELECT * FROM kkr_team WHERE players LIKE 'S%';
SELECT * FROM srh_team WHERE players LIKE 'J%';

SELECT * FROM kkr_team ORDER BY jersey_no ASC;
SELECT * FROM srh_team ORDER BY jersey_no ASC;

SELECT * FROM kkr_team ORDER BY id DESC;
SELECT * FROM srh_team ORDER BY id DESC;

SELECT id, name, UPPER(players) AS player_name_upper, jersey_no, country FROM kkr_team;
SELECT id, name, UPPER(players) AS player_name_upper, jersey_no, country FROM srh_team;

SELECT id, name, LOWER(players) AS player_name_lower, jersey_no, country FROM kkr_team;
SELECT id, name, LOWER(players) AS player_name_lower, jersey_no, country FROM srh_team;

SELECT id, CONCAT(name, ' - ', players) AS team_and_player, jersey_no, country FROM kkr_team;
SELECT id, CONCAT(name, ' - ', players) AS team_and_player, jersey_no, country FROM srh_team;

SELECT id, players, LENGTH(players) AS player_name_length, jersey_no, country FROM kkr_team;
SELECT id, players, LENGTH(players) AS player_name_length, jersey_no, country FROM srh_team;