-- INSERT INTO
--     continent ("name")
-- VALUES
--     ('North Asia'),
--     ('Central Asia'),
--     ('South Asia');
SELECT
    country.name AS "country",
    continent.name AS "continent"
FROM
    country FULL
    OUTER JOIN continent ON country.continent = continent.code
ORDER BY
    continent.code DESC;