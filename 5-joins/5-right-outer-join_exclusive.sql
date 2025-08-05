SELECT
    continent.code AS "code",
    continent.name AS "continent"
FROM
    country
    RIGHT JOIN continent ON country.continent = continent.code
WHERE
    country.code is NULL;