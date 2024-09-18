-- Active: 1726645206669@@127.0.0.1@5432@Store

/*
* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/

SELECT 
    customerid, 
    firstname, 
    lastname, 
    COALESCE(address1, 'No Address') AS address1, 
    COALESCE(address2, 'No Address') AS address2, 
    city, 
    state, 
    zip, 
    country, 
    region, 
    email, 
    phone, 
    creditcardtype, 
    creditcard, 
    creditcardexpiration, 
    username, 
    password, 
    age, 
    income, 
    gender
FROM customers;









/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

SELECT customerid,
       firstname,
       lastname,
       address1,
       address2,
       city,
       state,
       zip,
       country,
       region,
       email,
       phone,
       creditcardtype,
       creditcard,
       creditcardexpiration,
       username,
       password,
       age,
       income,
       gender
FROM customers
WHERE (age IS NOT NULL AND age >= 18) 
  AND (income IS NOT NULL AND income > 0)  
  AND (gender IS NOT NULL);  


/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/
