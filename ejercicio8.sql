CREATE TABLE Piezas (
Codigo INT,
Nombre NVARCHAR (100),
PRIMARY KEY (Codigo)
);

CREATE TABLE Proveedores (
Id char(4),
Nombre NVARCHAR (100),
PRIMARY KEY (Id)
);

CREATE TABLE Suministra (
CodigoPieza INT,
IdProveedor CHAR (4),
Precio INT,
PRIMARY KEY (CodigoPieza,IdProveedor),
FOREIGN KEY (CodigoPieza) REFERENCES Piezas(Codigo),
FOREIGN KEY (IdProveedor) REFERENCES Proveedores(Id)
ON DELETE CASCADE ON UPDATE CASCADE
);



