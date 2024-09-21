-- Active: 1726645206669@@127.0.0.1@5432@World
/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/
SELECT customerid, COUNT(*) AS total_orders
FROM orders
WHERE customerid IN (7888, 1082, 12808, 9623)
GROUP BY customerid;

/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/
SELECT district, COUNT(*) AS total_cities
FROM city
WHERE district IN ('Zuid-Holland', 'Noord-Brabant', 'Utrecht')
GROUP BY district;
