CREATE TABLE Cajas (
NumReferencia char(5),
Contenido NVARCHAR (100),
Valor INT,
Almacen INT,
PRIMARY KEY (NumReferencia), 
FOREIGN KEY (Almacen) REFERENCES Almacenes(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Almacenes (
Codigo INT,
Lugar NVARCHAR (100),
Capacidad INT,
PRIMARY KEY (Codigo)
);