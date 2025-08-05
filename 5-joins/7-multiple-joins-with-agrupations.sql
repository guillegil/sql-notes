-- Official languages spoken by continent.
SELECT
    DISTINCT continent.name AS "continent",
    "language".name AS "Official Language"
FROM
    countrylanguage
    INNER JOIN country ON country.code = countrylanguage.countrycode
    INNER JOIN continent ON continent.code = country.continent
    INNER JOIN "language" ON "language".code = countrylanguage.languagecode
WHERE
    countrylanguage.isofficial = true;

-- Official languages count spoken by continent.
SELECT
    COUNT(*) AS "country language count",
    continent_languages.continent AS "continent"
FROM
    (
        SELECT
            DISTINCT continent.name AS "continent",
            countrylanguage.language AS "Official Language"
        FROM
            countrylanguage
            INNER JOIN country ON country.code = countrylanguage.countrycode
            INNER JOIN continent ON continent.code = country.continent
        WHERE
            countrylanguage.isofficial = true
    ) AS continent_languages
GROUP BY
    continent_languages.continent
ORDER BY
    "country language count" DESC;