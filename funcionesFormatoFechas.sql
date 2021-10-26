/*
funciones para dar formato de fechas en sql
*/

-- DATE_FORMAT me permite dar formato a una fecha pudiendo usar
-- %y como año con 2 digitos, %Y como año con 4 digitos
-- %m como mes en numero, %M como mes en formato de cadena
-- %d como dia en digito, %D como dia en numero ordinal}
-- %a para dia de la semana abreviado}
-- %b para el mes abreviado
select date_format(now(), '%y-%m-%d');

-- TIME_FORMAT me permite dar formato a la hora
-- %H para la hora, %i para los minutos, %s para los segundos
-- %p para saber si es AM o PM
select time_format(now(), '%H:%i:%s %p');


