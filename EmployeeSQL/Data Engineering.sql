--Create departments table

CREATE TABLE departments (
  dept_no VARCHAR(10) NOT NULL,
  dept_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (dept_no)
);

SELECT * 
FROM departments

-- Create employees table

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * 
FROM employees

--Create dept_emp table

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * 
FROM dept_emp

-- Create dept_manager table

CREATE TABLE dept_manager (
 	dept_no VARCHAR (10) NOT NULL,
 	emp_no INT NOT NULL,
 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * 
FROM dept_manager

--Create salaries table

CREATE TABLE salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * 
FROM salaries

--Create titles table

CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT *
FROM titles;