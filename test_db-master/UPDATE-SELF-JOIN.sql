use sakila;
ALTER TABLE customer ADD COLUMN parent_id smallint;

UPDATE customer
SET parent_id = 200
WHERE customer_id = 600;
COMMIT;

UPDATE customer
SET parent_id = 100
WHERE customer_id = 601;
COMMIT;

UPDATE customer
SET parent_id = 22
WHERE customer_id = 603;
COMMIT;

UPDATE customer
SET parent_id = 12
WHERE customer_id = 605;
COMMIT;

UPDATE customer
SET parent_id = 34
WHERE customer_id = 610;
COMMIT;