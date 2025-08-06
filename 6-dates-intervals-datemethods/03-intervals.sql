SELECT
    max(employees.hire_date) + INTERVAL '1 day',
    max(employees.hire_date) + INTERVAL '1 month',
    max(employees.hire_date) + INTERVAL '1 year',
    max(employees.hire_date) + INTERVAL '1.1 years'
FROM
    employees;

SELECT
    MAKE_INTERVAL(years := 2023),
    MAKE_INTERVAL(years := date_part('year', now()) :: integer)
FROM
    employees;

SELECT
    MAX(employees.hire_date) + MAKE_INTERVAL(YEARS := 23)
FROM
    employees;