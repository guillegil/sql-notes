ALTER TABLE
    "country"
ADD
    PRIMARY KEY ("code");

ALTER TABLE
    "city"
ADD
    CONSTRAINT "fk_country_code" FOREIGN KEY ("countrycode") REFERENCES "country" ("code");

SELECT
    *
FROM
    "city";