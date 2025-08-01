SELECT
    COUNT(*) as "total",
    "followers"
FROM
    "users"
WHERE
    "followers" = 4 or "followers" = 4999
GROUP BY "followers"
