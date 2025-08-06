SELECT
    *
FROM
    employees
WHERE
    --                    year-month-day
    employees.hire_date > '1998-02-05'
ORDER BY
    employees.hire_date DESC;

SELECT
    MAX(hire_date) as mas_nuevo,
    MIN(hire_date) as primer_empleado
FROM
    employees;

SELECT
    *
FROM
    employees
WHERE
    employees.hire_date BETWEEN '1990-01-04'
    AND '2000-01-01'
ORDER BY
    employees.hire_date DESC;