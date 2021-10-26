USE sakila;
UPDATE film
SET release_year = NOW()
WHERE film_id between 1 and 250;
COMMIT;

UPDATE film
SET release_year = DATE_ADD(now(), INTERVAL -1 YEAR)
WHERE film_id between 251 and 500;
COMMIT;

UPDATE film
SET release_year = DATE_ADD(now(), INTERVAL -2 YEAR)
WHERE film_id between 501 and 750;
COMMIT;

UPDATE film
SET release_year = DATE_ADD(now(), INTERVAL -3 YEAR)
WHERE film_id between 751 and 1000;
COMMIT;