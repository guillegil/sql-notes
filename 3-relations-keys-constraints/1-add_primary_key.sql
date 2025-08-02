-- DELETE FROM
--     "country"
-- WHERE
--     "code" = 'NLD'
--     AND "code2" = 'NA';
-- We are trying to modify the column "code" to be the
-- primary key. However, this is not possible since
-- there is at least two rows with the same value...
--
-- Use the code above to delete the wrong country
-- And run the code again.
ALTER TABLE
    "country" -- This will not work since 
ADD
    PRIMARY KEY (code);
