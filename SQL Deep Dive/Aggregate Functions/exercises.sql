-- Active: 1726645206669@@127.0.0.1@5432@World
-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */

-- Question 1: What is the average salary for the company?
-- Table: Salaries



SELECT AVG(salary) as average_salary FROM salaries

-- Question 2: What year was the youngest person born in the company?
-- Table: employees

SELECT EXTRACT(YEAR FROM birth_date) AS birth_year
FROM employees
ORDER BY birth_date DESC
LIMIT 1;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 


-- Question 1: How many towns are there in france?
-- Table: Towns

SELECT COUNT(*) AS number_of_towns
FROM Towns;  -- Adjust this value based on how France is represented in your data



-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage

SELECT COUNT(DISTINCT language) AS number_of_official_languages
FROM countrylanguage

-- Question 2: What is the average life expectancy in the world?
-- Table: country

SELECT AVG(lifeexpectancy) AS average_life_expectancy
FROM country;  

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

SELECT AVG(population) AS average_population_in_the_netherlands
FROM city


