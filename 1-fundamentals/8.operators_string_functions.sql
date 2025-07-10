DROP TABLE IF EXISTS "users";

CREATE TABLE "users" (
    "id"     SERIAL PRIMARY KEY,
    "name"   VARCHAR(100) NOT NULL,
    "email"  VARCHAR(100) UNIQUE NOT NULL
);


INSERT INTO "users" 
    ("name", "email") 
VALUES
    ('Alice', 'alicefoo@gmail.com'),
    ('Charlie', 'charliefoo@gmail.com'),
    ('David', 'davidfoo@gmail.com'),
    ('Eve', 'evefoo@gmail.com'),
    ('Frank', 'frankfoo@gmail.com'),
    ('Grace', 'gracefoo@gmail.com'),
    ('Heidi', 'heidifoo@gmail.com'),
    ('Ivan', 'ivanfoo@gmail.com'),
    ('Judy', 'judyfoo@gmail.com'),
    ('Mallory', 'malloryfoo@gmail.com'),
    ('Niaj', 'niajfoo@gmail.com');


SELECT 
    id, UPPER(name) as upper_name, name
FROM "users"
LIMIT 1;

SELECT 
    "id",
    LOWER("name") as lower_name,
    "name",
    LENGTH("name") as "name_length"
FROM "users"
LIMIT 1;


SELECT 
    "id",
    LOWER("name") as lower_name,
    "name",
    (20*2) as "constant"
FROM "users"
LIMIT 1;

SELECT 
    "id",
    LOWER("name") as lower_name,
    "name",
    CONCAT("id", '-', "name")
FROM "users"
LIMIT 1;
