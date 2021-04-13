--1: List the following details of each employee: employee number, last name,first name, sex, and salary.

select
 	employees.emp_no,
 	employees.first_name,
 	employees.last_name,
 	salaries.salary
 from employees
 inner join salaries
 on employees.emp_no= salaries.emp_no;

--2: List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date like "1986%";



--3:List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select d.dept_no, d.dept_name, e.emp_no, e.first_name,e.last_name,e.emp_title_id
from departments as d
inner join dept_manager as dm on
d.dept_no = dm.dept_no
inner join employees as e on
dm.emp_no = e.emp_no;

--4:List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no,e.first_name,e.last_name,d.dept_name
From employees as e
Inner Join dept_emp as de
On e.emp_no = de.emp_no
Inner Join departments as d
On de.dept_no = d.dept_no;

--5:List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6:List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select e.emp_no,e.first_name,e.last_name,d.dept_name
From employees as e inner join
dept_emp as de On
e.emp_no = de.emp_no
inner join departments as d
On de.dept_no = d.dept_no
Where d.dept_name = 'Sales';

--7:List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no,e.first_name,e.last_name,d.dept_name
From employees as e inner join
dept_emp as de On
e.emp_no = de.emp_no
inner join departments as d
On de.dept_no = d.dept_no
Where (d.dept_name = 'Sales') OR (d.dept_name='Development');

--8:In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name,count(last_name) as "Common last_name count"
From employees
Group by last_name
Order by last_name desc;
