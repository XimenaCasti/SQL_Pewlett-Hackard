"""
README FILE

The purpose of this analysis is to perform data modeling, data engineering, and data analysis in order to answer the following wuestions with SQL programming language

1. Project Objectives:
We aim to address the following queries:

Employee Details: Retrieve each employee's number, last name, first name, gender, and salary.
Hiring Analysis (1986): Identify employees hired in 1986, listing their first name, last name, and hire date.
Department Managers: List the managers of each department, including their department number, name, employee number, last name, and first name.
Employee-Department Mapping: Display each employee’s department details, including department number, employee number, last name, first name, and department name.
Hercules B: Find employees named Hercules with a last name starting with 'B', listing their first name, last name, and gender.
Sales Department : List all employees in the Sales department, including their employee number, last name, and first name.
Sales & Development Departments: Enumerate employees in both Sales and Development departments, including their employee number, last name, first name, and department name.
Last Name Frequency: Provide a descending order list of the frequency counts of employee last names.

2. Database Structure:
The database comprises 6 tables, each with its primary key (PK) identified:

departments

dept_no (PK)
dept_name
dept_emp

emp_no
dept_no
PK: (emp_no, dept_no)
dept_manager

dept_no
emp_no
PK: (dept_no, emp_no)
employees

emp_no (PK)
emp_title_id
birth_date
first_name
last_name
sex
hire_date
salaries

emp_no (PK)
salary
titles

title_id (PK)
title
"""
