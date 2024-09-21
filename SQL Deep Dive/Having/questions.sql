
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT e.emp_no, e.first_name, e.last_name, COUNT(DISTINCT t.title) AS num_positions
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE e.hire_date > '1991-12-31'
GROUP BY e.emp_no
HAVING COUNT(DISTINCT t.title) > 2;



/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT e.emp_no, e.first_name, e.last_name, COUNT(DISTINCT s.salary) AS num_salary_changes
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Development'
GROUP BY e.emp_no
HAVING COUNT(DISTINCT s.salary) > 15;


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

SELECT e.emp_no, e.first_name, e.last_name, COUNT(DISTINCT de.dept_no) AS num_departments
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
GROUP BY e.emp_no
HAVING COUNT(DISTINCT de.dept_no) > 1;
