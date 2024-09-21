-- Active: 1726645206669@@127.0.0.1@5432@Employees
/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

SELECT *
FROM orders
JOIN customers ON orders.customerid = customers.customerid
WHERE customers.state IN ('OH', 'NY', 'OR')
ORDER BY orders.orderid;

/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/
SELECT e.*
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
WHERE e.emp_no = 110183;