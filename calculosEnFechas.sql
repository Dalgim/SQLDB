/*
forma de hacer calculos con fechas en sql
*/

-- DATE_ADD me permite añadir dias a la fecha actual}
-- INTERVAL me permite agregar que tanto quiero agregar de mas a mi fecha
-- en dias, meses, años
select date_add(now(), interval 1 day);

-- DAY_SUB me permite restar un tiempo determinado a una fecha
-- pueden ser dias, meses, años
select date_sub(now(), interval 1 day);

-- DATEDIFF me permite hacer la diferencia en dias entre dos fechas
select datediff('2019-03-23', '2019-03-05');

-- TIME_TO_SEC me permite obtener el tiempo marcado en segundos
-- si solo colocamos un valor nos retornara el total de segundos
-- de la hora marcada hasta la media noche
select time_to_sec('13:04') - time_to_sec('13:00');


