CREATE TABLE Fabricantes (
Codigo INT, 
Nombre NVARCHAR (100),
PRIMARY KEY (Codigo) 
);

CREATE TABLE Articulos (
Codigo INT,
Nombre NVARCHAR (100),
Precio INT,
Fabricante INT,
PRIMARY KEY (Codigo), 
FOREIGN KEY (Fabricante) REFERENCES Fabricantes(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

