SELECT
    employees.hire_date,
    MAKE_INTERVAL(
        YEARS := date_part('years', CURRENT_DATE) :: integer - EXTRACT(
            YEARS
            FROM
                employees.hire_date
        ) :: integer
    )
FROM
    employees
ORDER BY
    employees.hire_date ASC;

DROP TABLE new_employees;

CREATE TABLE new_employees AS
SELECT
    *
FROM
    employees;

SELECT
    MAKE_INTERVAL(
        YEARS := date_part('years', CURRENT_DATE) :: integer - date_part('years', date('2000-01-01')) :: integer
    );

UPDATE
    employees
SET
    "hire_date" = hire_date + MAKE_INTERVAL(
        YEARS := date_part('years', CURRENT_DATE) :: integer - date_part('years', date('2000-01-01')) :: integer
    );

SELECT
    new_employees.hire_date,
    MAKE_INTERVAL(
        YEARS := date_part('years', CURRENT_DATE) :: integer - EXTRACT(
            YEARS
            FROM
                new_employees.hire_date
        ) :: integer
    )
FROM
    new_employees
ORDER BY
    new_employees.hire_date ASC;