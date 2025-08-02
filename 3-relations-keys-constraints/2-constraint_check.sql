
-- Add add "check" hook to the column surface area of a country.
-- Originally, this row is a float4 does not have any conditions, allowing
-- to inject negatives values, whoch makes no sense...
--
-- The code below make sure that any value added to surfacearea meets the
-- condition. 
ALTER TABLE
    "country"
ADD
    CHECK ("surfacearea" >= 0)