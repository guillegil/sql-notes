SELECT
    "code",
    "name",
    "continent",
    "region",
    "surfacearea",
    "indepyear",
    "population" "lifeexpectancy",
    "gnp",
    "gnpold",
    "localname",
    "governmentform",
    "headofstate",
    "capital",
    "code2"
FROM
    "country";

SELECT
    "id",
    "name",
    "countrycode",
    "district",
    "population"
FROM
    "city";

SELECT
    "countrycode",
    "language",
    "isofficial",
    "percentage"
FROM
    "countrylanguage";