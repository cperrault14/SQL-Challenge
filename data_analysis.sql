--List the following details of each employee: employee number, last name, first name, sex, and salary.

Select ep.emp_no As Employee_Number, 
last_name As Last_Name, 
first_name As First_Name, 
gender As Sex, 
sa.salary As Salary
from employees ep
join salaries sa on sa.emp_no = ep.emp_no
order by ep.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.
Select first_name As First_Name, 
last_name As Last_Name,
hire_date As Hire_Date
from employees
where hire_date between '1986-01-01' AND '1986-12-31'
order by hire_date

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select dt.dept_no As Dept_Number, 
dt.dept_name As Dept_Name, 
de.emp_no As Manager_Number, 
last_name As Last_Name,
first_name As First_Name 
from dept dt
join dept_empl de on de.dept_no = dt.dept_no
join employees ep on ep.emp_no = de.emp_no
order by dt.dept_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.

Select ep.emp_no as Employee_Number, 
last_name as Last_name,
first_name as First_Name,
dept_name as Dept_Name
from employees ep
join dept_empl de on de.emp_no = ep.emp_no
join dept dt on dt.dept_no = de.dept_no
order by ep.emp_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name as First_Name,
last_name as Last_Name,
gender as Gender
from employees
where first_name = 'Hercules' and last_name like '%B_%'
order by last_name

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select ep.emp_no as Employee_Number,
last_name as Last_Name,
first_name as First_Name,
dept_name as Dept_Name
from employees ep
join dept_empl de on de.emp_no = ep.emp_no
join dept dt on dt.dept_no = de.dept_no
where dept_name = 'Sales'
order by ep.emp_no

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select ep.emp_no as Employee_Number,
last_name as Last_Name,
first_name as First_Name,
dept_name as Dept_Name
from employees ep
join dept_empl de on de.emp_no = ep.emp_no
join dept dt on dt.dept_no = de.dept_no
where dept_name in ('Sales' ,'Development')
order by ep.emp_no

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select 
Count(emp_no) as Employee_Number,
last_name as Last_Name
from employees
group by last_name
