/*
    Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

    Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT ci.name
FROM CITY ci
JOIN COUNTRY co ON ci.CountryCode = co.Code
WHERE UPPER(co.CONTINENT) = 'AFRICA'
ORDER BY ci.name;
