USE employees;

# select * from departments;
# describe departments;

SELECT DISTINCT first_name
FROM employees
WHERE first_name LIKE '%sus%';


select *
from employees
WHERE last_name IN ('Irena', 'Vidya', 'Maya');


# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, first_name, last_name
FROM employees
#     ^ = begin of string, . = any character, * = zero or more times, $ = end of string
WHERE last_name RLIKE '^[E]';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, first_name, last_name
FROM employees
# % = contains q
WHERE last_name LIKE '%q%';


# Part Two

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
   OR (first_name IN ('Vidya','Maya')
    );

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
    AND (
        gender = 'M'
    );

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE LEFT(last_name, 1) IN ('E')
#    WHERE last_name LIKE '%e'
OR RIGHT(last_name, 1) IN  ('E');

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT emp_no, first_name, last_name
FROM employees
#     ^ = begin of string, . = any character, * = zero or more times, $ = end of string
WHERE last_name RLIKE '^[E].*[E]$';
# WHERE last_name LIKE 'E%E'

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%q%')
AND NOT last_name LIKE '%qu%';


