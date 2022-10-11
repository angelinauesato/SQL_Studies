/*
    Query the list of CITY names from STATION that do not start with vowels. 
    Your result cannot contain duplicates.
*/
SELECT DISTINCT CITY
FROM STATION 
WHERE UPPER(city) not REGEXP '^(A|E|I|O|U)';