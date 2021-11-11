# sqlchallenge

employees
-
emp_no PK int
emp_title_id varchar FK >- titles.title_id
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date

salaries
-
emp_no int FK >- employees.emp_no
salary int

departments
-------
dept_no PK int
dept_name varchar

titles
----
title_id varchar PK
title varchar

dept_employees
------
emp_no int FK >- employees.emp_no
dept_no int FK >- departments.dept_no

dept_manager
----
dept_no int FK >- departments.dept_no
emp_no int FK >- employees.emp_no
