SELECT
    "first_name",
    "last_name",
    "followers"
FROM 
    "users"
WHERE
    "followers" BETWEEN 4600 AND 4900
ORDER BY
    "followers" asc;