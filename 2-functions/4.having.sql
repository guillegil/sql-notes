
SELECT
    COUNT(*),
    "country"
FROM
    "users"
GROUP BY "country"
HAVING
    COUNT(*) > 6
ORDER BY COUNT(*) DESC