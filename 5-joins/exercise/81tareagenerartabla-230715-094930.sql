(
    SELECT
        COUNT(*) as "country count",
        continent.name as "continent"
    FROM
        country
        INNER JOIN continent ON (continent.code = country.continent)
    WHERE
        continent.name NOT LIKE '%America%'
    GROUP BY
        continent.name
)
UNION
(
    SELECT
        COUNT(*) as "country count",
        'America' as "continent"
    FROM
        country
        INNER JOIN continent ON (continent.code = country.continent)
        AND continent.code IN (4, 8, 6)
)
ORDER BY
    "country count" DESC;