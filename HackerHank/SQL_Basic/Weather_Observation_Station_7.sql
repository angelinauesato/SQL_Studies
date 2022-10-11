/*
    Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
    Your result cannot contain duplicates.
*/
SELECT DISTINCT city 
FROM station c 
WHERE UPPER(city) REGEXP '(A|E|I|O|U)$';