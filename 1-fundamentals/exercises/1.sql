DROP TABLE IF EXISTS "users";

CREATE TABLE "users" (
    "id"     SERIAL PRIMARY KEY,
    "name"   VARCHAR(100) NOT NULL,
    "first_name" VARCHAR(100),
    "last_name" VARCHAR(100),
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


UPDATE 
    "users"
SET
    "first_name" = SPLIT_PART(TRIM("name"), ' ', 1),
    "last_name" = SPLIT_PART(TRIM("name"), ' ', 2);

SELECT * FROM "users";