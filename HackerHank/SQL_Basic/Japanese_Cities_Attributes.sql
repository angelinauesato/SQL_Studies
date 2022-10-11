/*
    Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN. 
*/

SELECT ID, NAME, COUNTRYCODE, DISTRICT, POPULATION
FROM CITY 
WHERE COUNTRYCODE = 'JPN';