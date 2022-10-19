/*
    Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION 
    that is less than 137.2345. 
    Round your answer to decimal places.

    ROUND function used to round the number to the nearest while TRUNC used to truncate/delete the 
    number from some position.
*/

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (
    SELECT MAX(LAT_N)
    FROM STATION
    WHERE LAT_N < 137.2345
);