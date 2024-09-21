-- Active: 1726645206669@@127.0.0.1@5432@Employees
/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT *
FROM employees
ORDER BY first_name ASC, last_name DESC;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/

SELECT *
FROM employees
ORDER BY EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birth_date) ASC;



/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
