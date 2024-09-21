/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/


SELECT prod_id, category, title, actor, price, 
       CASE WHEN special = 0 THEN NULL ELSE price END AS special_price
FROM products;
