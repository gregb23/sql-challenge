-- create table schema

-- set drop tables

DROP TABLE dept_manager;
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

--create tables

CREATE TABLE employees (
	emp_no int primary key,
	emp_title_id varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
);

select * from employees;

CREATE TABLE departments(
	dept_no varchar primary key,
	dept_name varchar
);
select * from departments;

CREATE TABLE dept_manager (
 	dept_no VARCHAR,
 	emp_no int,
 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;	

CREATE TABLE dept_emp(
	emp_no int,
	dept_no varchar,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;
	
CREATE TABLE salaries (
	emp_no int primary key,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

CREATE TABLE titles (
	title_id varchar primary key,
	title varchar	
);
	
select * from titles;	