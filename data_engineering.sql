DROP TABLE dept;

CREATE TABLE dept(
  dept_no VARCHAR(255) Primary Key,
  dept_name VARCHAR(255) NOT NULL
);

select * from dept


--Creating titles table

DROP TABLE titles

CREATE TABLE titles (
	title_id VARCHAR(255) Primary Key,
	title VARCHAR(255) NOT NULL);

select * from titles

-- Create table employees

DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT Primary Key,
	emp_title_id VARCHAR(255),
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	gender VARCHAR(5) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

select * from employees order by emp_no

--Create table dept_emp

DROP TABLE dept_empl

CREATE TABLE dept_empl (
	emp_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES dept(dept_no)
);


select * from dept_empl


-- Create table dept_managers

DROP TABLE dept_manag

CREATE TABLE dept_manag (
 dept_no VARCHAR (255),
 emp_no INT,
 FOREIGN KEY (dept_no) REFERENCES dept(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manag

--Creating salaries table

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries

