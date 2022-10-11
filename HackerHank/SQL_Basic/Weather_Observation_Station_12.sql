/*
    Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
    Your result cannot contain duplicates.
*/

SELECT DISTINCT city 
FROM STATION  
WHERE UPPER(city) not REGEXP '^(A|E|I|O|U)|(A|E|I|O|U)$';
