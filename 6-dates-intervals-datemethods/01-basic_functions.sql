-- https://www.postgresql.org/docs/8.1/functions-datetime.html
-- https://neon.com/postgresql/postgresql-date-functions/postgresql-date_part
SELECT
    NOW(),
    CURRENT_DATE,
    CURRENT_TIME,
    date_part('hours', now()),
    date_part('minutes', now()),
    date_part('seconds', now()),
    date_part('days', now()),
    date_part('months', now()),
    date_part('years', now());