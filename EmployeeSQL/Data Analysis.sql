--List the employee number, last name, first name, sex, 
--AND salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no
LIMIT (30)

--List the first name, last name, and hire date for the 
--employees who were hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1987-01-01'
LIMIT (30)

--List the manager of each department along with their 
--department number, department name, employee number, 
--last name, and first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_manager AS dept_m
ON e.emp_no = dept_m.emp_no
INNER JOIN departments AS d
ON d.dept_no = dept_m.dept_no

--List the department number for each employee along with 
--that employee’s employee number, last name, first name,
--and department name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_emp AS dept_e
ON e.emp_no = dept_e.emp_no
INNER JOIN departments as d
ON d.dept_no = dept_e.dept_no
LIMIT (30)

--List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name 
--begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List each employee in the Sales department, including 
--their employee number, last name, and first name.
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_emp AS dept_e
ON e.emp_no = dept_e.emp_no
INNER JOIN departments as d
ON d.dept_no = dept_e.dept_no
WHERE d.dept_name = 'Sales'
LIMIT (30)

--List each employee in the Sales and Development departments,
--including their employee number, last name, first name, 
--and department name.
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_emp AS dept_e
ON e.emp_no = dept_e.emp_no
INNER JOIN departments AS d
ON d.dept_no = dept_e.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development'
LIMIT (30)

--List the frequency counts, in descending order, 
--of all the employee last names (that is, how many 
--employees share each last name).
SELECT e.last_name, 
COUNT(last_name) AS Frequency
FROM employees AS e
GROUP BY last_name
ORDER BY Frequency DESC
LIMIT (30)

