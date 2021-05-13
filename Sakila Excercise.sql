USE sakila;
SELECT actor.last_name FROM actor WHERE actor.first_name = 'John';
SELECT * FROM actor WHERE last_name = 'Neeson';
SELECT * FROM actor WHERE actor_id%10 = 0;
SELECT description FROM film WHERE film_id = 10;
SELECT * FROM film WHERE rating = 'R';
SELECT * FROM film WHERE rating != 'R';
SELECT length FROM film ORDER BY ASCENDING LIMIT 10;