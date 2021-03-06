-- List the following details of each employee: employee number, 
---- last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
full outer join salaries as s
on e.emp_no = s.emp_no;

-- List first name, last name, and hire date 
--- for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1/1/86' and '12/31/86';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name.
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from departments as d
left join dept_manager as m
on d.dept_no = m.dept_no
left join employees as e
on m.emp_no = e.emp_no;

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as dept
left join departments as d
on dept.dept_no = d.dept_no
left join employees as e
on dept.emp_no = e.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' 
and e.last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, 
-- and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees as e
left join dept_emp as dept on 
e.emp_no = dept.emp_no
left join departments as d on 
dept.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name,
-- and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees as e
left join dept_emp as dept on 
e.emp_no = dept.emp_no
left join departments as d on 
dept.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.
select last_name, count(*)
as "frequency_count"
from employees
group by last_name
order by "frequency_count" desc;
