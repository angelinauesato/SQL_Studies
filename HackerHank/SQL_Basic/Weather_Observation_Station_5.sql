/*
    Query the two cities in STATION with the shortest and longest CITY names, 
    as well as their respective lengths (i.e.: number of characters in the name). 
    If there is more than one smallest or largest city, 
    choose the one that comes first when ordered alphabetically.     
    Note:
    You can write two separate queries to get the desired output. It need not be a single query.
*/
(SELECT city, LENGTH(city) COUNTADOR
FROM station c
order by COUNTADOR, city asc
limit 1)

UNION

(SELECT city, LENGTH(city) COUNTADOR
FROM station c
order by COUNTADOR DESC, city asc
limit 1);