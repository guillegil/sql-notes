SELECT 
    COUNT(*) as "total_users",
    MIN("followers") as "min_followers",
    MAX("followers") as "max_followers",
    AVG("followers") as "average_followers",
    SUM("followers") / COUNT("followers") as "avg_manual"
FROM 
    "users";
