SELECT
    *
FROM
    "continent"
WHERE
    "name" LIKE '%America%'
UNION
SELECT
    *
FROM
    "continent"
WHERE
    "code" in (4, 5);