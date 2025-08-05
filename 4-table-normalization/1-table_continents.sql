SELECT
    DISTINCT "continent"
FROM
    "country"
ORDER BY
    "continent" ASC;

DROP TABLE IF EXISTS "continent";

CREATE TABLE IF NOT EXISTS "continent" (
    "code" SERIAL PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL
);

INSERT INTO
    "continent" ("name")
SELECT
    DISTINCT "continent"
FROM
    "country"
ORDER BY
    "continent" ASC;

SELECT
    *
FROM
    "continent";