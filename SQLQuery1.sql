USE Projects

CREATE TABLE POBLACION	 (
    Pais VARCHAR(50),
    Provincias VARCHAR(50),
	Edad VARCHAR(20),
    Nacionalidad VARCHAR(50),
	Genero VARCHAR(20),
	Year VARCHAR(20),
	Cantidad INT
);

SELECT	TOP 5
		Provincias,
		Edad,
		SUM(cantidad) as total,
		Nacionalidad,
		Genero
FROM	POBLACION
WHERE	edad LIKE '100%'
		AND year = '2022'
GROUP BY provincias, edad, nacionalidad, genero
ORDER BY total DESC;

SELECT	COUNT(cantidad)
FROM	POBLACION

