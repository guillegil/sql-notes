DROP TABLE IF EXISTS "country_bk";

-- Create a backup table as country.
CREATE TABLE IF NOT EXISTS "public"."country_bk" (
    "code" bpchar(3) NOT NULL,
    "name" text NOT NULL,
    "continent" TEXT NOT NULL,
    "region" text NOT NULL,
    "surfacearea" float4 NOT NULL CHECK (surfacearea >= (0) :: double precision),
    "indepyear" int2,
    "population" int4 NOT NULL,
    "lifeexpectancy" float4,
    "gnp" numeric(10, 2),
    "gnpold" numeric(10, 2),
    "localname" text NOT NULL,
    "governmentform" text NOT NULL,
    "headofstate" text,
    "capital" int4,
    "code2" bpchar(2) NOT NULL,
    PRIMARY KEY ("code")
);

-- Copy all the values
INSERT INTO
    "country_bk"
SELECT
    *
FROM
    "country";

-- SELECT
--     *
-- FROM
--     "country_bk";
-- -- Remove checks from country.
-- ALTER TABLE
--     "country" DROP CONSTRAINT "country_continent_check";
-- SELECT
--     a."name",
--     a."continent",
--     (
--         SELECT
--             "name"
--         FROM
--             "continent" "b"
--         WHERE
--             b."name" = a."continent"
--     )
-- FROM
--     "country" "a";
UPDATE
    "country" "a"
SET
    "continent" = (
        SELECT
            b."code"
        FROM
            "continent" "b"
        WHERE
            "a"."continent" = "b"."name"
    );

-- Change the type of the continent column in contry table
ALTER TABLE
    "country"
ALTER COLUMN
    "continent" TYPE int4 USING "continent" :: integer;

ALTER TABLE
    "country"
ADD
    CONSTRAINT "fk_continent_code" FOREIGN KEY ("continent") REFERENCES "continent" ("code");

SELECT
    *
FROM
    "country";