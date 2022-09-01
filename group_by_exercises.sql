USE employees;

# how many rows were in our employees table total:
SELECT COUNT(*) FROM employees;

# This query will return a count of all first names that do not have an a in them from the employees table. The result should be 118195. If for some reason an employee's first name was NULL, it would not be counted here.
SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

# This query will output each unique first name without an 'a', as well as the number of employees with that first name. Notice also that this query returns 500 results. While there are 118,195 employees with a first name that did not have the letter a, there are only 500 unique first names that do not have an 'a' in them.
SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

# This will show us the 10 most common hire dates for employees.
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;



# EXERCISE PROBLEMS BELOW:

#1 In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager

SELECT DISTINCT title
FROM titles;

#2 Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
# Eldridge
# Erbe
# Erde
# Erie
# Etalle

SELECT last_name
FROM employees
WHERE last_name RLIKE '^[E].*[E]$'
GROUP BY last_name;

#3 Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

SELECT first_name, last_name
FROM employees
WHERE last_name RLIKE '^[E].*[E]$'
AND (
    first_name NOT LIKE last_name
    )
GROUP BY last_name, first_name;

#4 Find the unique last names with a 'q' but not 'qu'. Your results should be:
# Chleq
# Lindqvist
# Qiwen

SELECT last_name
FROM employees
WHERE last_name LIKE ('%q%')
AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

#5 Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
# 189 Chleq
# 190 Lindqvist
# 168 Qiwen

# SELECT last_name, COUNT(*)
# FROM employees
# WHERE last_name LIKE ('%q%')
#   AND NOT last_name LIKE '%qu%'
# GROUP BY last_name;

SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE ('%q%')
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

#6 Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:

# 441 M
# 268 F

select gender, COUNT(*)
from employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;





# , departments, dept_emp, dept_emp_latest_date, dept_manager, employees, salaries, titles