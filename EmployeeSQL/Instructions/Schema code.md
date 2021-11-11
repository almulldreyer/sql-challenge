CREATE TABLE department ( 
	dept_no VARCHAR(6) NOT NULL, 
	dept_name VARCHAR (20) NOT NULL,
	PRIMARY KEY (dept_no));
SELECT * from department;

CREATE TABLE employees ( 
	emp_no INTEGER NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	gender VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no));
select * FROM employees

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no	VARCHAR (20) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no));
SELECT * FROM dept_emp	

CREATE TABLE dept_manager (
	dept_no	VARCHAR (20) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no));
SELECT * FROM dept_manager

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no));

SELECT * FROM salaries

CREATE TABLE titles(
	emp_no INTEGER NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no, title,from_date),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no));
SELECT * FROM titles
