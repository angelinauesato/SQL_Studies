/*
    Query the list of CITY names from STATION that do not end with vowels. 
    Your result cannot contain duplicates.
*/
SELECT DISTINCT city 
FROM STATION c 
WHERE UPPER(city) NOT REGEXP '(A|E|I|O|U)$';