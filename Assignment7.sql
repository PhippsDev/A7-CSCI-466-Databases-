-- Brandon Phipps
-- Z1843045
-- CSCI 466 SEC 1

USE BabyName; -- uses the BabyName database in mariadb

SHOW TABLES; -- shows all tables in the database

SELECT DISTINCT name -- Selects each name no dupes
FROM BabyName -- from database
WHERE year = '2000' -- name where year is = 2000
LIMIT 50; -- limit of 50 for output

DESCRIBE BabyName; -- shows all cols from tables

SELECT DISTINCT year -- selects each year no dupes
FROM BabyName -- from database
WHERE name = 'Pat' -- where that year matches name Pat
LIMIT 50; -- limit of 50 for output

SELECT place, COUNT(DISTINCT name) -- selects place, counts each distinct name for the place
FROM BabyName -- from database
GROUP BY place -- groups each by each individual place
LIMIT 50; -- limit of 50 for output

SELECT DISTINCT name, gender -- selects no dupe name and gender
FROM BabyName -- from database
WHERE COUNT =
(SELECT MAX(COUNT) -- count equals MAX count aka, popularity for female
FROM BabyName
WHERE year = '1983' -- where 1983 in database
AND gender = 'F') -- and female

UNION -- brings these 2 select statements together as one

SELECT DISTINCT name, gender -- selects no dupe name and gender
FROM BabyName -- from database
WHERE COUNT =
(SELECT MAX(COUNT) -- count equals MAX count aka, popularity for male
FROM BabyName
WHERE year = '1983' -- where 1983 in database
AND gender = 'M'); -- and male


SELECT name, COUNT, year -- selects name count and year
FROM BabyName -- from database
WHERE name LIKE 'P%' -- where names start w p
ORDER BY name, COUNT, year ASC -- orders by, then sorts ascending
LIMIT 50; -- limit of 50 for output

SELECT COUNT(*) -- count for all from database
FROM BabyName;

SELECT COUNT(name), gender -- selects count of name, and gender
FROM BabyName -- from database
WHERE year = '1972' -- where the year == 1972
AND gender = 'F' -- and gender is female

UNION

SELECT COUNT(name), gender -- selects count of name, and gender
FROM BabyName -- from database
WHERE year = '1972' -- where the year == 1972
AND gender = 'M' -- and gender is male
LIMIT 50; -- limit of 50 for output

SELECT COUNT(name) -- selects count of name, from DB, where year of name is 1974
FROM BabyName
WHERE YEAR = '1974';




