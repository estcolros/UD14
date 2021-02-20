CREATE TABLE Cajeros (
Codigo INT,
NomApels NVARCHAR (255),
PRIMARY KEY (Codigo)
);

CREATE TABLE Productos (
Codigo INT,
Nombre NVARCHAR (100),
Precio INT,
PRIMARY KEY (Codigo)
);

CREATE TABLE Maquinas_Registradoras (
Codigo INT,
Piso INT,
PRIMARY KEY (Codigo)
);

CREATE TABLE Venta (
Cajero INT,
Maquina INT,
Producto INT,
PRIMARY KEY (Cajero,Maquina,Producto),
FOREIGN KEY (Cajero) REFERENCES Cajeros(Codigo),
FOREIGN KEY (Maquina) REFERENCES Maquinas_Registradoras(Codigo),
FOREIGN KEY (Producto) REFERENCES Productos(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

