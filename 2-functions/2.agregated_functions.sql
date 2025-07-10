SELECT 
    COUNT(*) as "db_count",
    MIN("followers") as "min_followers",
    MAX("followers") as "max_followers"
FROM 
    "users";

SELECT
    AVG("followers") as "average_followers"
FROM
    "users";