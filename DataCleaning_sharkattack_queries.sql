SELECT * FROM shark_attack;
###look at the type column and change invalid to unknown, boatomg to boating, boat to boating
SELECT DISTINCT(Type) from shark_attack;
SELECT * FROM shark_attack
WHERE Type = 'Invalid';
UPDATE shark_attack
SET Type = 'Unknown'
WHERE Type = 'Invalid';
###changing type boatomg to boating
SELECT * FROM shark_attack
WHERE Type = 'boat';
UPDATE shark_attack
SET Type = 'boating'
WHERE Type = 'boatomg';
UPDATE shark_attack
SET Type = 'boating'
WHERE Type = 'boat';
###standardize the date format
#####looking at column FATAL(Y/N)
SELECT DISTINCT `Fatal (Y/N)` FROM shark_attack;
SELECT * from shark_attack
where `Fatal (Y/N)` = 'F';
UPDATE shark_attack
SET `Fatal (Y/N)` = 'UNKNOWN'
WHERE `Fatal (Y/N)` = 'M';
UPDATE shark_attack
SET `Fatal (Y/N)` = 'UNKNOWN'
WHERE `Fatal (Y/N)` = 2017;
UPDATE shark_attack
SET `Fatal (Y/N)` = 'UNKNOWN'
WHERE `Fatal (Y/N)` = 'F';
###Rename `Fatal (Y/N)` column to Fatal
ALTER TABLE shark_attack
CHANGE COLUMN `Fatal (Y/N)`  `Fatal` varchar(100);
###convert the blank field in the Fatal column to unknown
SELECT * FROM shark_attack
WHERE Fatal = ' ';
UPDATE shark_attack
SET Fatal = 'Unknown'
WHERE Fatal = ' ';
#SELECT * FROM shark_attack;
###looking at the activity column
SELECT DISTINCT(Activity) FROM shark_attack;
####under activity column change stand-up paddleboarding to stand-up paddle boarding
SELECT * FROM shark_attack;
WHERE Activity = 'Stand-Up Paddleboarding';
UPDATE shark_attack
SET Activity = 'Stand-Up Paddle boarding'
WHERE Activity = 'Stand-Up Paddleboarding';
###change Body-surfing to Body Surfing in the activity column
SELECT * from shark_attack
where Activity = 'Body-surfing';
UPDATE shark_attack
SET Activity = 'Body Surfing'
WHERE Activity = 'Body-surfing';
###converting the country column from all caps to single caps word
SELECT CONCAT(UPPER(SUBSTRING(Country, 1, 1)), LOWER(SUBSTRING(Country, 2))) AS Country
FROM shark_attack;
UPDATE shark_attack
SET Country = CONCAT(UPPER(SUBSTRING(Country, 1, 1)), LOWER(SUBSTRING(Country, 2)))
WHERE Country is NOT null;
####rename the unnamed 9 column to gender
ALTER TABLE shark_attack
CHANGE COLUMN `Unnamed: 9` `Gender` VARCHAR(255);
####convert the  blanks in the species column to 'unknown'
SELECT * FROM shark_attack
WHERE Species = ' ';
UPDATE shark_attack
SET Species = 'Unknown'
WHERE Species = ' ';
####convert the  blanks in the name column to 'unknown'
SELECT * FROM shark_attack
WHERE Name = ' ';
UPDATE shark_attack
SET Name = 'Unknown'
WHERE Name = ' ';
####convert the  blanks in the activity column to 'unknown'
SELECT * FROM shark_attack
WHERE Activity = ' ';
UPDATE shark_attack
SET Activity = 'Unspecified'
WHERE Activity = ' ';
###changing the name column from female to unknown and gender column from blanks to F
SELECT * FROM shark_attack
WHERE Name = 'female';
UPDATE shark_attack
SET Gender = 'F'
WHERE Name = 'female';
UPDATE shark_attack
SET Name = 'Unknown'
WHERE Name = 'female';
SELECT * FROM shark_attack
WHERE Name = 'male';
UPDATE shark_attack
SET Gender = 'M'
WHERE Name = 'male';
UPDATE shark_attack
SET Name = 'Unknown'
WHERE Name = 'male';
#########
SELECT * FROM shark_attack
WHERE Gender = ' ';
UPDATE shark_attack
SET Gender = 'Unspecified'
WHERE Gender = ' ';
#####
SELECT * FROM shark_attack
WHERE `Time` = ' ';
UPDATE shark_attack
SET `Time` = 'Not recorded'
WHERE `Time` = ' ';
SELECT * from shark_attack
WHERE Location = ' ';
UPDATE shark_attack
SET Location = 'Unknown'
WHERE Location = ' ';
UPDATE shark_attack
SET Area = 'Unknown'
WHERE Area = ' ';
SELECT * from shark_attack
WHERE age = 'make line green';
UPDATE shark_attack
SET Age = 'Not recorded'
WHERE Age = ' ';
UPDATE shark_attack
SET Age = 'Not recorded'
WHERE Age = 'make line green';