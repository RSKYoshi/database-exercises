USE employees;

# List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name desc
LIMIT 10;

# Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:
# 43624
# 43624
# 254466
# 47978
# 253939



SELECT emp_no
FROM salaries
WHERE salary
ORDER BY salary desc
LIMIT 5;


# Update the previous query to find the tenth page of results. The employee number results should be:
# 254466
# 492164
# 66793
# 492164

SELECT emp_no
FROM salaries
WHERE salary
ORDER BY salary desc
# offset is quantity to skip over each page
# formula for offset:
# ( desired_page_number * limit_amount - limit amount )
# 10 pages wanted...limit by 5..... minus 5 = 45
LIMIT 5 OFFSET 45;