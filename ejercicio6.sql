CREATE TABLE Salas (
Codigo INT,
Nombre NVARCHAR (100),
Pelicula INT,
PRIMARY KEY (Codigo), 
FOREIGN KEY (Pelicula) REFERENCES Peliculas(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Peliculas (
Codigo INT,
Nombre NVARCHAR (100),
CalificacionEdad INT,
PRIMARY KEY (Codigo)
);