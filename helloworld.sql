--Hello World SQL Query
SELECT *
FROM actor;

-- Query for first name and last name in actor table

SELECT first_name, last_name
from actor;

-- Query for first names that equal Nick

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first name that equals nick using the LIKE clause

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query fo a first name that starts with 'J' using LIKE and WHERE with wildcard

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

-- Query for first name that starts with 'K' using LIKE and WHERE with character length

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Query to combine both wildcard and character length

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%th';

-- Select payment amounts using greater than statement

SELECT customer_id, amount
FROM payment
WHERE amount > '2.00';

-- Select payment amount using the less than statement
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

-- Select payment amounts less than or equal to 7.99 in ascending order
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99
ORDER BY amount ASC;

-- Select payment amounts not equal to 0
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

-- Query to display the sum of amounts paid that are greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display count of amounts paid that are greater than 5.99

SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the average of amounts paid that are greater than 5.99

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the max amount paid that is greater than 7.99
SELECT MAX(amount)
FROM payment
WHERE amount > 7.99;

-- Query to display the min amount paid that is greater than 7.99
SELECT MIN(amount) as min_num_payments
FROM payment
WHERE amount > 7.99;

-- Query to display customer id's with the summed amounts for each customer
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id;

-- SELECT statement with WHERE clause including a range between 7.99 and 10.99
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 7.99 AND 10.99
ORDER BY amount ASC;

-- SELECT statement to return customer id's that show up more than 5x 
SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 5;

-- Question 1
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question 3
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Question 4
SELECT last_name
FROM customer
WHERE last_name = 'William';

-- Question 5
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id
ORDER BY count DESC
LIMIT 1;

-- Question 6
SELECT district, COUNT(district) as unique_districts
FROM address
COUNT(unique_districts)
GROUP BY district;

-- Question 7
SELECT film_id, COUNT(film_id) as num_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC
LIMIT 1;

--Question 8
SELECT COUNT(last_name)
FROM customer
WHERE store_id = 1 and last_name LIKE '%es'
GROUP BY store_id;

-- Question 9 CANNOT figure this out without getting error in code

SELECT amount, COUNT(rental_id) as rental_count
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(rental_id) >250;

--Question 10
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC
LIMIT 1;

SELECT rating, COUNT(title)
FROM film
GROUP BY rating
ORDER BY count DESC;