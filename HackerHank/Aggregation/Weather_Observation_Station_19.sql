/*
    Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and
    maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of
    Western Longitude (LONG_W) in STATION.

    Query the Euclidean Distance between points  and  and format your answer to display 4 decimal digits.
    https://en.wikipedia.org/wiki/Euclidean_distance
dist(p1(a,c), p2(b,d))
    a: MIN(LAT_N)
    b: MAX(LAT_N)
    c: MIN(LONG_W)
    d: MAX(LONG_W)
    dist = SQRT(POWER((MIN(LAT_N)-MAX(LAT_N)),2) + POWER((MIN(LONG_W)-MAX(LONG_W)),2))

*/



SELECT ROUND(
    SQRT(POWER((MIN(LAT_N)-MAX(LAT_N)),2) + POWER((MIN(LONG_W)-MAX(LONG_W)),2)),4)

 FROM STATION ;