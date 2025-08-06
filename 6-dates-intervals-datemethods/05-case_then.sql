SELECT
    first_name,
    last_name,
    hire_date,
    hire_date,
    CASE
        WHEN hire_date > (now() - INTERVAL '1 year') THEN '1 year or less'
        WHEN hire_date > (now() - INTERVAL '3 year') THEN '1 to 3 years'
        WHEN hire_date > (now() - INTERVAL '6 year') THEN '1 to 6 years'
        ELSE '+6years'
    END AS "rango_antiguedad"
FROM
    employees
ORDER BY
    hire_date DESC;