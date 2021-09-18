
1.	List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT p.first_name, p.last_name, p.hand, m.loser_rank
FROM matches AS m
INNER JOIN players AS p ON
p.player_id=m.loser_id;
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees As e
inner join salaries As s On
e.emp_no = s.emp_no;

2.	List first name, last name, and hire date for employees who were hired in 1986.

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary, e.hire_date
from employees As e
inner join salaries As s On
e.emp_no = s.emp_no
where e.hire_date like '%1986';

3.	List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


select dp.dept_no, dp.dept_name, e.emp_no, last_name, first_name
from departments dp
join dept_manager dm
on dp.dept_no = dm.dept_no
join employees e
on e.emp_no = dm.emp_no;	

4.	List the department of each employee with the following information: employee number, last name, first name, and department name.

select de.dept_no, dp.dept_name, de.emp_no, last_name, first_name
from departments dp
join dept_emp de
on dp.dept_no = de.dept_no
join employees e
on e.emp_no = de.emp_no;

5.	List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name,last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

6.	List all employees in the Sales department, including their employee number, last name, first name, and department name.

select s.emp_no, last_name, first_name, dept_name
from salaries s
join employees e
on s.emp_no = e.emp_no
join dept_emp de
on de.emp_no = e.emp_no
join departments dp
on dp.dept_no = de.dept_no;

7.	List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select s.emp_no, last_name, first_name, dept_name
from salaries s
join employees e
on s.emp_no = e.emp_no
join dept_emp de
on de.emp_no = e.emp_no
join departments dp
on dp.dept_no = de.dept_no
where dept_name like 'Sales' or dept_name like 'Development';

8.	In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as countlast
from employees
group by(last_name)
order by countlast desc;

