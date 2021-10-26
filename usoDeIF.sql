/*
uso de IF en sql
*/

select
	title,
	release_year,
    -- si el año es el actual del film que coloque en la columna lanzamiento
    -- nuevas y si no es asi que coloque antiguas en dicha columna
    if(release_year = year(now()), 'Nuevas', 'Antiguas') as lanzamiento
from film;

/*
ejercicio
mostrar todos los films donde el rental_rate sea superior o igual a 4
mostrar la glosa excelente o caso contrario monstrar el mensaje regular
*/

select 
	title,
    if(rental_rate >= 4, 'Excelente', 'Regular') as rating
from film;