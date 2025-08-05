SELECT
    COUNT(*) as "city count",
    country.name as "country"
FROM
    city
    JOIN country ON country.code = city.countrycode
GROUP BY
    country.name
ORDER BY
    "city count" DESC
LIMIT
    1;