--------Creating Tables--------
-- CSV Header: emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date

--Create Titles
CREATE TABLE titles (
  title_id INT PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);

--Creating Employees Table
CREATE TABLE employees (
  emp_no INT Primary Key,
  emp_title_id INT NOT NULL,
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
  dept_name VARCHAR(30) NOT NULL,
  
);

--Salaries Table
CREATE TABLE salaries (
  emp_no SERIAL PRIMARY KEY,
  salary FLOAT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
	
--Department Employee Table
CREATE TABLE dept_emp (
  emp_no SERIAL PRIMARY KEY,
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Department Manager Table
CREATE TABLE dept_manager (
  dept_no VARCHAR(30) PRIMARY KEY,
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Drop table dept_manager;
Drop table dept_emp;
Drop table salaries;
Drop table departments;
Drop table employees;
Drop table titles;




