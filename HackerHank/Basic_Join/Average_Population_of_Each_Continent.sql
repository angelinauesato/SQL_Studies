/*
    Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and
    their respective average city populations (CITY.Population) rounded down to the nearest integer.

    Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT co.Continent, FLOOR(AVG(ci.population))
FROM CITY ci
JOIN COUNTRY co ON ci.CountryCode = co.Code
GROUP BY co.Continent
ORDER BY co.Continent;
