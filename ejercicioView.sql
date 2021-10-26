/*
ejercicio de vistas en sql
de la tabla country, mostrar todos los paises y una columna
con el numero de ciudades por pais
*/

create view cities_by_country as
	select
		country,
		count(city) as cities
	from city
	join country using(country_id)
	group by country