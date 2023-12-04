CREATE TABLE departments (
dept_no	VARCHAR NOT NULL,
dept_name VARCHAR
);

SELECT *
FROM departments;

ALTER TABLE departments
ADD PRIMARY KEY (dept_no);

SELECT *
FROM departments;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no INT NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
	
);

ALTER TABLE dept_emp
ALTER COLUMN dept_no TYPE VARCHAR;

ALTER TABLE dept_emp
EDIT PRIMARY KEY (emp_no, dept_no);

ALTER TABLE dept_emp
DROP CONSTRAINT dept_emp_pkey;


ALTER TABLE dept_emp
ADD PRIMARY KEY (emp_no, dept_no);


CREATE TABLE dept_manager (
	dept_no VARCHAR  NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

DROP TABLE dept_manager;


CREATE TABLE dept_manager (
    dept_no VARCHAR(255) NOT NULL,  
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no)
);


CREATE TABLE employees (
    emp_no INT NOT NULL,  	
	emp_title_id VARCHAR(255) NOT NULL,  		 
	birth_date	DATE,
	first_name	VARCHAR (255) NOT NULL,
	last_name	VARCHAR (255) NOT NULL,
	sex	VARCHAR (10),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

CREATE TABLE employees (
    emp_no INT NOT NULL,  	
	emp_title_id VARCHAR(255) NOT NULL,  		 
	birth_date	DATE,
	first_name	VARCHAR (255) NOT NULL,
	last_name	VARCHAR (255) NOT NULL,
	sex	VARCHAR (10),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);


CREATE TABLE salaries (
    emp_no INT NOT NULL,
	salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);


CREATE TABLE titles (
    tittle_id VARCHAR NOT NULL,
	tittle VARCHAR NOT NULL,
    PRIMARY KEY (tittle_id)
);


SELECT *
FROM departments;

SELECT *
FROM dept_emp;

SELECT *
FROM dept_manager;

SELECT *
FROM employees;


SELECT *
FROM salaries;


SELECT *
FROM employees;


SELECT *
FROM titles;