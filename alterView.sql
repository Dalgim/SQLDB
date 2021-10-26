/*
alter view
en ocasiones es necesario alterar el contenido de una vista, existen dos formas

la primera es eliminar la vista usando: "drop view (nombre de la vista)"

la segunda y mejor opcion es usar la sentencia:
"CREATE OR REPLACE VIEW (nombre de la vista) AS"
*/

-- drop view cities_by_country;

create or replace view cities_by_country as
	select
		country,
		count(city) as cities
	from city
	join country using(country_id)
	group by country
    -- agrego otra linea despues de crear la vista
    order by cities desc