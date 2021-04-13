DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no varchar(50) NOT NULL PRIMARY KEY,
  dept_name varchar(50) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no varchar(50) NOT NULL
);


CREATE TABLE dept_manager (
  dept_no varchar(50) NOT NULL,
  emp_no INTEGER NOT NULL
);


CREATE TABLE employees (
  emp_no INTEGER NOT NULL,
  emp_title_id varchar(50) NOT NULL,
  birth_date DATE NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  sex varchar(50) NOT NULL,
  hire_date DATE NOT NULL
);

CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  salary INTEGER
);

CREATE TABLE titles (
  title_id varchar(50) NOT NULL,
  title varchar(50) NOT NULL
);
