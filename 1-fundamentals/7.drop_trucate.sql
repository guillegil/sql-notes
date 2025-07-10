DROP TABLE IF EXISTS "users";

CREATE TABLE "users" (
    "id"     SERIAL PRIMARY KEY,
    "name"   VARCHAR(100) NOT NULL,
    "email"  VARCHAR(100) UNIQUE NOT NULL
);


INSERT INTO "users" 
    ("name", "email") 
VALUES
    ('Alice Johnson', 'alicefoo@gmail.com'),
    ('Charlie Brown', 'charliefoo@gmail.com'),
    ('David Miller', 'davidfoo@gmail.com'),
    ('Eve Wilson', 'evefoo@gmail.com'),
    ('Frank Davis', 'frankfoo@gmail.com'),
    ('Grace Taylor', 'gracefoo@gmail.com'),
    ('Heidi Anderson', 'heidifoo@gmail.com'),
    ('Ivan Rodriguez', 'ivanfoo@gmail.com'),
    ('Judy Thompson', 'judyfoo@gmail.com'),
    ('Mallory White', 'malloryfoo@gmail.com'),
    ('Niaj Martinez', 'niajfoo@gmail.com');


SELECT 
    * 
FROM "users";

-- Unlike DROP, TRUNCATE does not remove the table structure, it only removes the data.
-- This is useful when you want to keep the table for future use but clear its contents.
TRUNCATE TABLE "users";

SELECT 
    * 
FROM "users";