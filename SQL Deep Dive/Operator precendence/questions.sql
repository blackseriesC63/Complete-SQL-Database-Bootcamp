
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/

SELECT *
FROM Customers
WHERE (age < 30 OR age >= 50)
  AND income > 50000
  AND country IN ('Japan', 'Australia');

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/

SELECT SUM(totalamount) AS total_sales
FROM Orders
WHERE orderdate BETWEEN '2004-06-01' AND '2004-06-30'
  AND totalamount > 100;