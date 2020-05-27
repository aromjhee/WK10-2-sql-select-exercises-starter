CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  city VARCHAR(255),
  state VARCHAR(255),
  population_estimate_2018 INT,
  population_census_2010 INT,
  land_area_sq_mi_2016 FLOAT,
  pop_density_per_sq_mi_2016 INT
);

INSERT INTO cities VALUES(DEFAULT, 'New York', 'New York',	8398748, 8175133, 301.5, 28317);
INSERT INTO cities VALUES(DEFAULT, 'Los Angeles', 'California', 3990456, 3792621,	468.7, 8484);
INSERT INTO cities VALUES(DEFAULT, 'Chicago', 'Illinois',	2705994, 2695598, 227.3, 11900);
INSERT INTO cities VALUES(DEFAULT, 'Houston', 'Texas', 2325502,	2100263, 637.5, 3613);
INSERT INTO cities VALUES(DEFAULT, 'Phoenix', 'Arizona', 1660272,	1445632, 517.6, 3120);
INSERT INTO cities VALUES(DEFAULT, 'Philadelphia', 'Pennsylvania', 1584138,	1526006, 134.2, 11683);
INSERT INTO cities VALUES(DEFAULT, 'San Antonio', 'Texas', 1532233,	1327407, 461.0, 3238);
INSERT INTO cities VALUES(DEFAULT, 'San Diego', 'California',	1425976, 1307402, 325.2, 4325);	
INSERT INTO cities VALUES(DEFAULT, 'Dallas', 'Texas',	1345047, 1197816, 340.9, 3866);
INSERT INTO cities VALUES(DEFAULT, 'San Jose', 'California', 1030119,	945942, 177.5, 5777);	
INSERT INTO cities VALUES(DEFAULT, 'Austin', 'Texas',	964254, 790390, 312.7, 3031);
INSERT INTO cities VALUES(DEFAULT, 'Jacksonville', 'Florida',	903889,	821784,	747.4, 1178);
INSERT INTO cities VALUES(DEFAULT, 'Fort Worth', 'Texas',	895008,	741206, 342.9, 2491);
INSERT INTO cities VALUES(DEFAULT, 'Columbus', 'Ohio', 892533, 787033, 218.5, 3936);
INSERT INTO cities VALUES(DEFAULT, 'San Francisco', 'California',	883305,	805235,	46.9, 18569);	
INSERT INTO cities VALUES(DEFAULT, 'Charlotte', 'North Carolina',	872498,	731424,	305.4, 2757);
INSERT INTO cities VALUES(DEFAULT, 'Indianapolis', 'Indiana',	867125,	820445,	361.5, 2366);
INSERT INTO cities VALUES(DEFAULT, 'Seattle', 'Washington',	744955,	608660, 83.8, 8405);
INSERT INTO cities VALUES(DEFAULT, 'Denver', 'Colorado', 716492,	600158,	153.3, 4521);
INSERT INTO cities VALUES(DEFAULT, 'Washington', 'District of Columbia',	702455,	601723,	61.1, 11148);
INSERT INTO cities VALUES(DEFAULT, 'Boston', 'Massachusetts',	694583,	617594,	48.3, 13938);
INSERT INTO cities VALUES(DEFAULT, 'El Paso', 'Texas', 682669,	649121,	256.8, 2660);
INSERT INTO cities VALUES(DEFAULT, 'Detroit', 'Michigan',	672662,	713777,	138.8, 4847);
INSERT INTO cities VALUES(DEFAULT, 'Nashville', 'Tennessee', 669053, 601222, 475.9, 1388);
INSERT INTO cities VALUES(DEFAULT, 'Portland', 'Oregon', 653115, 583776, 133.5, 4793);

CREATE TABLE airports (
  id SERIAL PRIMARY KEY,
  city_id INT REFERENCES cities,
  FAA_id VARCHAR(3),
  IATA_id VARCHAR(3),
  ICAO_id VARCHAR(4),
  name VARCHAR(500)
);

INSERT INTO airports VALUES(DEFAULT, 1, 'JFK',	'JFK', 'KJFK', 'John F. Kennedy International Airport');
INSERT INTO airports VALUES(DEFAULT, 1, 'LGA',	'LGA',	'KLGA',	'LaGuardia Airport');
INSERT INTO airports VALUES(DEFAULT, 2, 'LAX',	'LAX',	'KLAX',	'Los Angeles International Airport');
INSERT INTO airports VALUES(DEFAULT, 3, 'ORD',	'ORD',	'KORD',	'Chicago O''Hare International Airport');
INSERT INTO airports VALUES(DEFAULT, 3, 'MDW',	'MDW',	'KMDW',	'Chicago Midway International Airport');
INSERT INTO airports VALUES(DEFAULT, 4, 'IAH',	'IAH',	'KIAH',	'George Bush Intercontinental Airport');
INSERT INTO airports VALUES(DEFAULT, 4, 'HOU',	'HOU',	'KHOU',	'William P. Hobby Airport');
INSERT INTO airports VALUES(DEFAULT, 5, 'PHX',	'PHX',	'KPHX',	'Phoenix Sky Harbor International Airport');
INSERT INTO airports VALUES(DEFAULT, 6, 'PHL',	'PHL',	'KPHL',	'Philadelphia International Airport');
INSERT INTO airports VALUES(DEFAULT, 7, 'SAT',	'SAT',	'KSAT',	'San Antonio International Airport');
INSERT INTO airports VALUES(DEFAULT, 8, 'SAN',	'SAN',	'KSAN',	'San Diego International Airport');
INSERT INTO airports VALUES(DEFAULT, 9, 'DAL',	'DAL',	'KDAL',	'Dallas Love Field');
INSERT INTO airports VALUES(DEFAULT, 9, 'DFW',	'DFW',	'KDFW',	'Dallas/Fort Worth International Airport');
INSERT INTO airports VALUES(DEFAULT, 10, 'SJC',	'SJC',	'KSJC',	'Norman Y. Mineta San José International Airport');
INSERT INTO airports VALUES(DEFAULT, 11, 'AUS',	'AUS',	'KAUS',	'Austin-Bergstrom International Airport');
INSERT INTO airports VALUES(DEFAULT, 12, 'JAX',	'JAX',	'KJAX',	'Jacksonville International Airport');
INSERT INTO airports VALUES(DEFAULT, 13, 'DFW',	'DFW',	'KDFW',	'Dallas/Fort Worth International Airport');
INSERT INTO airports VALUES(DEFAULT, 14, 'CSG',	'CSG',	'KCSG',	'Columbus Metropolitan Airport');
INSERT INTO airports VALUES(DEFAULT, 15, 'SFO',	'SFO',	'KSFO',	'San Francisco International Airport');
INSERT INTO airports VALUES(DEFAULT, 16, 'CLT',	'CLT',	'KCLT',	'Charlotte/Douglas International Airport');
INSERT INTO airports VALUES(DEFAULT, 17, 'IND',	'IND',	'KIND',	'Indianapolis International Airport');
INSERT INTO airports VALUES(DEFAULT, 18, 'BFI',	'BFI',	'KBFI',	'King County International Airport');
INSERT INTO airports VALUES(DEFAULT, 18, 'SEA',	'SEA',	'KSEA',	'Seattle–Tacoma International Airport');
INSERT INTO airports VALUES(DEFAULT, 19, 'DEN',	'DEN',	'KDEN',	'Denver International Airport');
INSERT INTO airports VALUES(DEFAULT, 20, 'DCA',	'DCA',	'KDCA',	'Ronald Reagan Washington National Airport');
INSERT INTO airports VALUES(DEFAULT, 20, 'IAD',	'IAD',	'KIAD',	'Washington Dulles International Airport');
INSERT INTO airports VALUES(DEFAULT, 21, 'BOS',	'BOS',	'KBOS',	'Gen. Edward Lawrence Logan International Airport');
INSERT INTO airports VALUES(DEFAULT, 22, 'ELP',	'ELP',	'KELP',	'El Paso International Airport');
INSERT INTO airports VALUES(DEFAULT, 23, 'DTW',	'DTW',	'KDTW',	'Detroit Metropolitan Wayne County Airport');
INSERT INTO airports VALUES(DEFAULT, 24, 'BNA',	'BNA',	'KBNA',	'Nashville International Airport');
INSERT INTO airports VALUES(DEFAULT, 25, 'PDX',	'PDX',	'KPDX',	'Portland International Airport');


-- PHASE 3
-- pipe seed file into "travel" database
cat 
/Users/aromjhee/Desktop/WKS/WK10/WK10-2-sql-
select-exercises-starter/cities_and_airports.sql | psql -d travel

-- Write a SQL query that returns the city, state, and estimated population in 2018 from the "cities" table.
SELECT city, state, population_estimate_2018
FROM cities;

-- Write a SQL query that returns all of the airport names contained in the "airports" table.
SELECT name
FROM airports;

-- Write a SQL query that uses a WHERE clause to get the estimated population in 2018 of the city of San Diego.
SELECT city, population_estimate_2018
FROM cities
WHERE city = 'San Diego';

-- Write a SQL query that uses a WHERE clause to get the city, state, and estimated population in 2018 of cities in this list: Phoenix, Jacksonville, Charlotte, Nashville.
SELECT city, state, population_estimate_2018
FROM cities
WHERE city IN ('Pheonix', 'Jacksonville', 'Charlotte', 'Nashville');

-- Write a SQL query that uses a WHERE clause to get the cities with an estimated 2018 population between 800,000 and 900,000 people. Show the city, state, and estimated population in 2018 columns.
SELECT city, state, population_estimate_2018
FROM cities
WHERE population_estimate_2018 BETWEEN 800000 AND 900000;

-- Write a SQL query that uses a WHERE clause to get the names of the cities that had an estimated population in 2018 of at least 1 million people (or 1,000,000 people).
SELECT city
FROM cities
WHERE population_estimate_2018 >= 1000000;

-- Write a SQL query to get the city and estimated population in 2018 in number of millions (i.e. without zeroes at the end: 1 million), and that uses a WHERE clause to return only the cities in Texas.
SELECT city, population_estimate_2018/1000000
FROM cities
WHERE state = 'Texas';

-- Write a SQL query that uses a WHERE clause to get the city, state, and estimated population in 2018 of cities that are NOT in the following states: New York, California, Texas.
SELECT city, state, population_estimate_2018
FROM cities
WHERE state NOT IN ('New York', 'California', 'Texas'); 


-- Write a SQL query that uses a WHERE clause with the LIKE operator to get the city, state, and estimated population in 2018 of cities that start with the letter "S". (Note: See the PostgreSQL doc on Pattern Matching for more information.)
SELECT city, state, population_estimate_2018
FROM cities
WHERE city LIKE 'S%';

-- Write a SQL query that uses a WHERE clause to find the cities with either a land area of over 400 square miles OR a population over 2 million people (or 2,000,000 people). Show the city name, the land area, and the estimated population in 2018.
SELECT city, land_area_sq_mi_2016, population_estimate_2018
FROM cities
WHERE land_area_sq_mi_2016 > 400 OR population_estimate_2018 > 2000000;

-- Write a SQL query that uses a WHERE clause to find the cities with either a land area of over 400 square miles OR a population over 2 million people (or 2,000,000 people) -- but not the cities that have both. Show the city name, the land area, and the estimated population in 2018.
SELECT city, land_area_sq_mi_2016, population_estimate_2018
FROM cities
WHERE 
  (land_area_sq_mi_2016 > 400 
  OR 
  population_estimate_2018 > 2000000)
  AND NOT
  (land_area_sq_mi_2016 > 400 
  AND
  population_estimate_2018 > 2000000);

-- Write a SQL query that uses a WHERE clause to find the cities where the population has increased by over 200,000 people from 2010 to 2018. Show the city name, the estimated population in 2018, and the census population in 2010.
SELECT city, population_estimate_2018, population_census_2010
FROM cities
WHERE (population_estimate_2018 - population_census_2010) > 200000;


-- PHASE 4
-- Write a SQL query using an INNER JOIN to join data from the "cities" table with data from the "airports" table using the city_id foreign key. Show the airport names and city names only. 
SELECT airports.name, city 
FROM cities INNER JOIN airports ON (cities.id = airports.city_id);
-- SELECT airports.name, city 
-- FROM cities INNER JOIN airports ON (airports.city_id = cities.id);

-- Write a SQL query using an INNER JOIN to join data from the "cities" table with data from the "airports" table to find out how many airports are in New York City using the city name. (Note: Use the aggregate function COUNT () to count the number of matching rows.)
SELECT COUNT(*)
FROM cities INNER JOIN airports ON (cities.id = airports.city_id)
WHERE city = 'New York';

-- Bonuses
-- Apostrophe: Write a SQL query to get all three ID codes (the Federal Aviation Administration (FAA) ID, the International Air Transport Association (IATA) ID, and the International Civil Aviation Organization (ICAO) ID) from the "airports" table for Chicago O'Hare International Airport. (Note: You'll need to escape the quotation mark in O'Hare. See How to include a single quote in a SQL query.)
SELECT faa_id, iata_id, icao_id
FROM airports
WHERE name = 'Chicago O''Hare International Airport';

-- Formatting Commas: Refactor Phase 2, Query #1 to turn the INT for estimated population in 2018 into a character string with commas. (Note: See Data Type Formatting Functions). Phase 2, Query #1: Write a SQL query that returns the city, state, and estimated population in 2018 from the "cities" table. 
SELECT city, state, to_char(population_estimate_2018, '9,999,999')
FROM cities;

-- Decimals and Rounding: Refactor Phase 3, Query #5 to turn number of millions from an integer into a decimal rounded to a precision of two decimal places. (Note: See Numeric Types and the ROUND function.) Phase 3, Query #5: Write a SQL query to get the city and estimated population in 2018 in number of millions (i.e. without zeroes at the end: 1 million), and that uses a WHERE clause to return only the cities in Texas. 
SELECT city, round(population_estimate_2018/1000000::decimal, 2)
FROM cities
WHERE state = 'Texas';

-- ORDER BY and LIMIT Clauses: Refactor Phase 3, Query #10 to return only one city with the biggest population increase from 2010 to 2018. Show the city name, the estimated population in 2018, and the census population in 2010 for that city. (_Note: You'll do the same calculation as before, but instead of comparing it to 200,000, use the ORDER BY Clause with the LIMIT Clause to sort the results and grab only the top result.). Phase 3, Query #10: Write a SQL query that uses a WHERE clause to find the cities where the population has increased by over 200,000 people from 2010 to 2018. Show the city name, the estimated population in 2018, and the census population in 2010.
SELECT city, (population_estimate_2018 - population_census_2010) AS population_increase
FROM cities
ORDER BY population_increase DESC
LIMIT 1;
