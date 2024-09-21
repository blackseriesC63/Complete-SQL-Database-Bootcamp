-- Active: 1726645206669@@127.0.0.1@5432@Employees
/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, COUNT(*) AS number_of_employees_hired
FROM employees
GROUP BY hire_date;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/
SELECT e.emp_no, e.first_name, e.last_name, COUNT(DISTINCT t.title) AS num_positions
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE e.hire_date > '1991-12-31'
GROUP BY e.emp_no;

/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/
SELECT e.first_name, e.last_name, de.from_date, de.to_date
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Development';