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
    ('Bob', 'bobfoo@gmail.com');


UPDATE "users"
SET 
    "email" = 'bobfoo@gmail.com'
WHERE "name" = 'Bob';


SELECT * FROM "users";