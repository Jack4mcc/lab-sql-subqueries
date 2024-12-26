USE sakila;

SELECT *
FROM inventory;

SELECT *
FROM film
WHERE title = "Hunchback Impossible";

SELECT film_id, COUNT(inventory_id)
FROM inventory
GROUP BY film_id;

SELECT COUNT(inventory_id), title
FROM film f 
INNER JOIN inventory i 
ON f.film_id = i.film_id
WHERE title = "Hunchback Impossilbe";

SELECT title, length
FROM film
WHERE length > (SELECT AVG(length) FROM film);


SELECT title, first_name, last_name
FROM film f 
INNER JOIN film_actor a 
ON f.film_id = a.film_id
INNER JOIN actor aa
ON a.actor_id = aa.actor_id
WHERE title = "Alone Trip";


