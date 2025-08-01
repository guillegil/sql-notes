
SELECT
    COUNT(*),
    SUBSTRING("email", POSITION('@' in "email")+1) as "domain"
FROM
    "users"
GROUP BY SUBSTRING("email", POSITION('@' in "email")+1)
ORDER BY COUNT(*) DESC