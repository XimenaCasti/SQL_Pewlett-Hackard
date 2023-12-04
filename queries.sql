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


-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary

FROM employees
	RIGHT JOIN salaries ON
		employees.emp_no = salaries.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.


SELECT  first_name, 
		last_name,
		hire_date
FROM employees

WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT 
		e.first_name,
	   	e.last_name, 
	   	e.emp_no,	
		dm.dept_no,
		d.dept_name
		
FROM departments d
	JOIN dept_manager dm
	ON d.dept_no = dm.dept_no
	JOIN  employees e
	ON dm.emp_no = e.emp_no;


-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name


SELECT 
	e.first_name,
	e.last_name,
	e.emp_no,
	de.dept_no,
	d.dept_name
	
FROM employees e
	JOIN dept_emp de 
	ON e.emp_no = de.emp_no
	JOIN departments d 
	ON de.dept_no = d.dept_no;


-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


SELECT 
	e.first_name,
	e.last_name,
	e.sex
FROM employees e 
WHERE e.first_name = 'Hercules' AND e.last_name like 'B%';


-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT
	e.first_name,
	e.last_name,
	e.emp_no,
	d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
	e.first_name,
	e.last_name,
	e.emp_no,
	d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development' ;


-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT 
    last_name,
	count(last_name )
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;

