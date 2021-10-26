/*
funciones para tarabajar con fechas en sql
*/

-- NOW nos devuelve la fecha y hora actuales
select now();

-- CURDATE me da la fecha actual solamente
select curdate();

-- CURTIME me da la hora actual solamente
select curtime();

-- YEAR(NOW()) para devolver solo el año actual
select year(now());

-- MONTH(NOW()) para devolver el mes actual
select month(now());

-- DAY(NOW()) para devolver el dia actual
select day(now());

-- HOUR(NOW()) para devolver la hora actual
select hour(now());

-- MINUTE(NOW()) para devolver los minutos actuales
select minute(now());

-- SECOND(NOW()) para devolver los segundos actuales}
select second(now());

-- DAYNAME me devuelve el dia como cadena (en ingles)}
-- monday a sunday
select dayname(now());

-- MONTHNAME me devuelve el nombre del mes (en ingles)
-- january a december
select monthname(now());

-- EXTRACT me permite extraer datos de una fecha
-- año, mes, dia, hora, minuto, segundo
select extract(year from now());

/*
ejercicio
de la base de datos sakila, tabla payment, obtener todos los pagos realizados
en el mes de agosto usando el campo "payment_date"
*/
use sakila;
select 
	payment_date,
	amount
from payment
where extract(month from payment_date) = 8;
