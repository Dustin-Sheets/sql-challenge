select s.emp_no, e.last_name, e.first_name, e.sex, s.salary
from salaries s 
join employees e on e.emp_no = s.emp_no;

select first_name, last_name, hire_date
from employees e
where hire_date >='1986-01-01'
and hire_date < '1987-01-01';

select e.first_name, e.last_name, e.emp_no, d.dept_name, d.dept_no 
from dept_manager dm 
join departments d on dm.dept_no = d.dept_no 
join employees e on e.emp_no = dm.emp_no;

select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees e 
join dept_emp de on e.emp_no = de.emp_no 
join departments d on d.dept_no = de.dept_no ;

select first_name, last_name, sex 
from employees e 
where first_name = 'Hercules'
and last_name like 'B%';

select e.emp_no, e.last_name, e.first_name 
from employees e 
join dept_emp de on e.emp_no = de.emp_no 
join departments d on d.dept_no = de.dept_no 
where d.dept_name = 'Sales';

select e.emp_no, e.last_name, e.first_name, d.dept_name  
from employees e 
join dept_emp de on e.emp_no = de.emp_no 
join departments d on d.dept_no = de.dept_no 
where d.dept_name = 'Sales'
or d.dept_name = 'Development';

select last_name, count(last_name)
from employees e  
group by last_name
order by count(last_name) Desc ;