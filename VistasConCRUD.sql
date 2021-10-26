/*
manejo de vistas con CRUD (create, read, update, delete)

dentro de las vistas en sql se pueden manejar opciones de actualizar,
crear o borrar registros siempre y cuando la vista cumpla con lo siguiente:

1. que no contenga una sentencia DISTINCT
2. que no contenga una funcion matematica (MAX, MIN, AVG, SUM)
3. que no este agrupada (que no contenga group by)
4. que no contenga UNION 
5. siempre debe de ser sobre la MISMA tabla

*/