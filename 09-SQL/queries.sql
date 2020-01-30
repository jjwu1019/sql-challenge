--1
select emp.emp_no, emp.last_name, emp.first_name, emp.gender, sal.salary
from employees emp
inner join salaries sal on 
emp.emp_no = sal.emp_no

--2
select emp_no, last_name, first_name, hire_date
from employees
where hire_date >= '1986-01-01 00:00:00' 
    AND hire_date <= '1986-12-31 23:59:59'

--3
select dep.dept_no, dep.dept_name, man.emp_no, emp.last_name, emp.first_name, man.from_date, man.to_date 
from departments dep
inner join dept_manager man on 
dep.dept_no = man.dept_no
inner join employees emp on
man.emp_no = emp.emp_no

--4
select dem.emp_no, emp.last_name, emp.first_name, dep.dept_name
from dept_emp dem
inner join employees emp on
dem.emp_no = emp.emp_no
inner join departments dep on
dem.dept_no = dep.dept_no

--5
select emp_no, first_name, last_name 
from employees
where first_name = 'Hercules'
and last_name LIKE 'B%'

--6
select dem.emp_no, emp.last_name, emp.first_name, dep.dept_name
from dept_emp dem
inner join employees emp on
dem.emp_no = emp.emp_no
inner join departments dep on
dem.dept_no = dep.dept_no
where dep.dept_no = 'd007'

--7
select dem.emp_no, emp.last_name, emp.first_name, dep.dept_name
from dept_emp dem
inner join employees emp on
dem.emp_no = emp.emp_no
inner join departments dep on
dem.dept_no = dep.dept_no
where dep.dept_no = 'd007'
or dep.dept_no = 'd005'

--8
select last_name, count(last_name) frequency
from employees
group by last_name
order by frequency desc
