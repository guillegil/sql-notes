(
    SELECT
        COUNT(*) AS "continent count",
        continent.name AS "continent"
    FROM
        country
        INNER JOIN continent ON country.continent = continent.code
    GROUP BY
        continent.name
)
UNION
(
    SELECT
        0 AS "continent count",
        continent.name AS "continent"
    FROM
        country
        RIGHT JOIN continent ON country.continent = continent.code
    WHERE
        country.continent IS NULL
    GROUP BY
        continent.name
)
ORDER BY
    "continent count" DESC;