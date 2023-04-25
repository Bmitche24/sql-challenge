Departments
-
dept_no VARCHAR PK
dept_name VARCHAR

Dept_Emp
-
emp_no INT PK FK >- Employees.emp_no
dept_no VARCHAR PK FK >- Departments.dept_no

Dept_Manager
-
dept_no VARCHAR FK >- Departments.dept_no
emp_no INT PK FK >- Employees.emp_no

Employees
-
emp_no PK INT
emp_title_id VARCHAR FK -< Titles.title_id
birth_date date
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date date

Salaries
-
emp_no INT PK FK - Employees.emp_no
salary INT

Titles
-
title_id PK VARCHAR
title VARCHAR