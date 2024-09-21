-- Active: 1726645206669@@127.0.0.1@5432@Employees

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
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/


SELECT p.prod_id, p.category, p.title, p.actor, p.price, p.special, s.quantity AS inventory
FROM products p
LEFT JOIN stock s ON p.prod_id = s.prod_id;



/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM Employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;



