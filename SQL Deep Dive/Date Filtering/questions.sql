-- Active: 1726645206669@@127.0.0.1@5432@Store
/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT emp_no, first_name, last_name, birth_date, gender, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birth_date) > 60;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/
SELECT COUNT(*) AS number_of_employees_hired_in_february
FROM employees
WHERE EXTRACT(MONTH FROM hire_date) = 2;
/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT COUNT(*) AS emp_born_in_november
FROM employees
WHERE EXTRACT(MONTH FROM birth_date) = 11;
/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/
SELECT *
FROM employees
WHERE birth_date = (SELECT MAX(birth_date) FROM employees);
/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT COUNT(*) AS number_of_orders_in_january_2004
FROM orders
WHERE EXTRACT(YEAR FROM orderdate) = 2004 AND EXTRACT(MONTH FROM orderdate) = 1;

