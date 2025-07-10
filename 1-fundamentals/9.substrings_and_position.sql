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


SELECT 
    "name" as "full_name",
    SUBSTRING("name", 0, POSITION(' ' in "name")) as "name",
    SUBSTRING("name", POSITION(' ' in "name")) as "second_name",
    "email",
    SUBSTRING( SUBSTRING("email", (POSITION('@' in "email"))+1), 0, (POSITION('.' in SUBSTRING("email", POSITION('@' in "email")))-1) ) as "domain"
FROM "users"