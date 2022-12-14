USE employees;


# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name, CONCAT(e.last_name, ', ', e.first_name) as full_name
FROM employees as e
         INNER JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
        INNER JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';


# Find the name of all departments currently managed by women.
SELECT d.dept_name, CONCAT(e.last_name, ', ', e.first_name) as full_name
FROM employees as e
         INNER JOIN dept_manager as dm
                    ON dm.emp_no = e.emp_no
         INNER JOIN departments as d
                    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT COUNT(*), e.titles
FROM employees as e
         INNER JOIN departments as d
                    ON d.dept_no = e.dept_no
         INNER JOIN titles t on e.emp_no = t.emp_no
WHERE e.to_date = '9999-01-01';

# Find the current salary of all current managers.
SELECT d.dept_name, CONCAT(e.last_name, ', ', e.first_name) as full_name, salary
FROM employees as e
         INNER JOIN dept_manager as dm
                    ON dm.emp_no = e.emp_no
         INNER JOIN departments as d
                    ON d.dept_no = dm.dept_no
         INNER JOIN salaries s
                    on dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';