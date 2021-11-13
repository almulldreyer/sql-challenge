
-- Create table schema for each of the 6 CSV files.
-- Create tables in correct order.
-- Import CSVs into the corresponding SQL tables after.

-- Create each of the tables 

---- Import departments
CREATE TABLE departments ( 
	dept_no VARCHAR(6) NOT NULL, 
	dept_name VARCHAR (20) NOT NULL,
	PRIMARY KEY (dept_no));
SELECT * from departments;

---- Import employees
CREATE TABLE employees(
	emp_no int primary key not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles(title_id)
);

SELECT * from employees;

---- Import dept_emp
CREATE TABLE dept_emp(
	emp_no int,
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_emp;

---- Import dept_manager
CREATE TABLE dept_manager(
	dept_no varchar not null,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_manager;

---- Import salaries
CREATE TABLE salaries(
	emp_no int not null,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);

select * from salaries;

---- Import titles
CREATE TABLE titles(
	title_id varchar primary key not null,
	title varchar not null
);

select * from titles;

