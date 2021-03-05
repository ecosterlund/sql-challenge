--------Creating Tables--------
--Create Titles
CREATE TABLE titles (
  title_id VARCHAR(30) PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);

--Creating Employees Table
CREATE TABLE employees (
  emp_no INT Primary Key,
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--Create Departments Table
CREATE TABLE departments (
  dept_no VARCHAR(30) PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

-- create a department employees table
CREATE TABLE dept_emp (
        emp_no INT,
	    dept_no VARCHAR(4),
	    PRIMARY KEY (emp_no, dept_no),
	    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- create a department managers table
CREATE TABLE dept_manager (
        dept_no VARCHAR(4),
	    emp_no INT,
	    PRIMARY KEY (emp_no, dept_no),
	    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- create a department salaries table
CREATE TABLE salaries (
        emp_no INT PRIMARY KEY,
	    salary INT,
	    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



--Drop Tables
Drop table dept_manager;
Drop table dept_emp;
Drop table salaries;
Drop table departments;
Drop table employees;
Drop table titles;




