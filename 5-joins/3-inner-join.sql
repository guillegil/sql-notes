SELECT
    country.name AS "country",
    continent.name AS "continet"
FROM
    country
    INNER JOIN continent ON country.continent = continent.code
ORDER BY
    continent.name ASC;