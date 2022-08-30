USE employees;


# Modify your first query to order by first name. The first result should be Irena Pelz and the last result should be Vidya Awdeh.

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%e%')
ORDER BY emp_no;

# Now reverse the sort order for both queries and compare results.

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%e%')
ORDER BY emp_no DESC;
















# the rest of where_exercises below

# Find all employees whose last name starts with 'E' — 7,330 rows.
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE last_name RLIKE '^[E]';

# Find all employees with a 'q' in their last name — 1,873 rows.
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE last_name LIKE '%q%';
# WHERE last_name LIKE '%q%';


# Part Two

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE first_name = 'Irena'
#    OR (first_name IN ('Vidya','Maya')
#     );

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
# SELECT emp_no, first_name, last_name, gender
# FROM employees
# WHERE first_name IN ('Irena','Vidya','Maya')
#     AND (
#         gender = 'M'
#     );

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE LEFT(last_name, 1) IN ('E')
# OR RIGHT(last_name, 1) IN  ('E');

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
# SELECT emp_no, first_name, last_name
# FROM employees
#     ^ = begin of string, . = any character, * = zero or more times, $ = end of string
# WHERE last_name RLIKE '^[E].*[E]$';
# WHERE last_name LIKE 'E%E'

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE last_name LIKE ('%q%')
# AND last_name NOT LIKE '%qu%';


