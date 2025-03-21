
-- 1.	Obtener todos los vuelos.
	SELECT * FROM Vuelos;

-- 2. Obtener todos los clientes cuyo apellido sea 'González'.
	SELECT * FROM Clientes WHERE Apellido = 'González';

-- 3. Obtener todos los vuelos que tienen como destino 'Madrid'. 

	SELECT V.ID_Vuelo, A.Nombre_Aeropuerto AS Destino, V.Fecha_Vuelo, V.Hora_Salida, V.Hora_Llegada, V.Precio
	FROM Vuelos V	JOIN Aeropuertos A 
    ON V.Destino = A.ID_Aeropuerto
	WHERE A.Ciudad = 'Madrid';

-- 4. Calcular el número total de vuelos para un aeropuerto específico ' Aeropuerto Internacional de Los Ángeles'.

	SELECT COUNT(*) AS Total_Vuelos
	FROM Vuelos V	JOIN Aeropuertos A 
    ON V.Origen = A.ID_Aeropuerto OR V.Destino = A.ID_Aeropuerto
	WHERE A.Nombre_Aeropuerto = 'Aeropuerto Internacional de Los Ángeles';

-- 5. Obtener los vuelos que tienen precios superiores a $500.
	SELECT * FROM Vuelos WHERE Precio > 500;


-- 6. Obtener el vuelo más caro y el vuelo más barato en la base de datos.

  -- caro  
	SELECT * 
	FROM Vuelos 
	ORDER BY Precio DESC 
	LIMIT 1;
    
  -- barato  
    SELECT * 
	FROM Vuelos 
	ORDER BY Precio ASC 
	LIMIT 1;

-- 7. Obtener todos los clientes cuyos nombres empiecen con 'M'.
	SELECT * 
	FROM Clientes
	WHERE Nombre LIKE 'M%';

-- 8. Calcular el número total de reservas realizadas en un mes específico.

	SELECT COUNT(*) AS TotalReservas
	FROM Reservas
	WHERE YEAR(Fecha_Reserva) = 2025
	AND MONTH(Fecha_Reserva) = 3;

-- 9. Obtener el promedio del precio de los vuelos que tienen destino 'París'.
	SELECT AVG(Precio) AS PromedioPrecio
	FROM Vuelos
	WHERE Destino = 'París';

-- 10. Mostrar la capacidad del avión utilizado en un vuelo específico.


-- 11. Obtener los clientes que han reservado un vuelo con origen en 'Aeropuerto Internacional de Los Ángeles'.
    
    SELECT DISTINCT C.Nombre
	FROM Clientes C
	JOIN Reservas R ON C.ID_Cliente = R.ID_Cliente
	JOIN Vuelos V ON R.ID_Vuelo = V.ID_Vuelo
	JOIN Aeropuertos A ON V.Origen = A.ID_Aeropuerto
	WHERE A.Ciudad = 'Aeropuerto Internacional de Los Ángeles';



-- 12. Obtener el nombre del aeropuerto y la ciudad de origen de todos los vuelos que salgan hacia 'Los Ángeles'.
	SELECT A.Nombre_Aeropuerto, A.Ciudad
	FROM Vuelos V
	JOIN Aeropuertos A ON V.Origen = A.ID_Aeropuerto
	WHERE V.Destino IN (SELECT ID_Aeropuerto FROM Aeropuertos WHERE Ciudad = 'Los Ángeles');


-- 13. Obtener el número de tripulantes asignados a un vuelo específico.

	SELECT COUNT(*) AS Numero_Tripulantes
	FROM vuelos_tripulaciones VT
	WHERE VT.ID_Vuelo = 666;


-- 14. Obtener los vuelos que se realizarán entre las 10:00 AM y las 6:00 PM.
	SELECT *
	FROM Vuelos
	WHERE Hora_Salida BETWEEN '10:00:00' AND '18:00:00';


-- 15. Calcular la longitud del nombre de los clientes que tienen más de 10 caracteres.
	SELECT Nombre, LENGTH(Nombre) AS Longitud_Nombre
	FROM Clientes
	WHERE LENGTH(Nombre) > 10;
