-- ¿Cuál es el idioma (y código del idioma) oficial más hablado por diferentes países en Europa?
SELECT
    countrylanguage.languagecode AS "language_code",
    countrylanguage.language AS "language_name",
    COUNT(*) AS "language_count"
FROM
    countrylanguage
    INNER JOIN country ON country.code = countrylanguage.countrycode
WHERE
    country.continent = 5
    AND countrylanguage.isofficial = true
GROUP BY
    "language_code",
    "language_name"
ORDER BY
    "language_count" DESC
LIMIT
    1;