select * from employees
SELECT * FROM salaries

--List the following details of each employee: 
--employee number, last name, first name, gender, 
--and salary.
SELECT 
employees.emp_no,
employees.last_name, 
employees.first_name, 
employees.gender, 
salaries.salary
FROM salaries
INNER JOIN employees
ON employees.emp_no = salaries.emp_no; 


--List employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '1986%' ;

SELECT * FROM dept_manager
SELECT * FROM departments
SELECT * FROM employees

--List the manager of each department with the 
--following information: department number, 
--department name, the manager's employee number, 
--last name, first name, and start and end 
--employment dates.

SELECT 
departments.dept_no, 
departments.dept_name, 
dept_manager.emp_no, 
employees.last_name, 
employees.first_name, 
dept_manager.from_date, 
dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees 
ON employees.emp_no = dept_manager.emp_no; 

--List the department of each employee with the 
--following information: employee number, 
--last name, first name, and department name.

SELECT * FROM departments
SELECT * FROM employees
SELECT * FROM dept_emp

SELECT  
dept_emp.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no; 

--List all employees whose first name is "Hercules" 
--and last names begin with "B."

SELECT * FROM employees

SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, 
--first name, and department name.

SELECT * FROM employees
SELECT * FROM departments
SELECT * FROM dept_emp

SELECT  
dept_emp.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'; 

--List all employees in the Sales and Development 
--departments, including their employee number, 
--last name, first name, and department name.

SELECT * FROM employees
SELECT * FROM departments
SELECT * FROM dept_emp

SELECT  
dept_emp.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development'; 

--In descending order, list the frequency count 
--of employee last names, i.e., how many employees 
--share each last name.

SELECT * FROM employees

SELECT last_name, COUNT (*) 
AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
