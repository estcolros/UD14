CREATE TABLE Empleados (
DNI varchar(8),
Nombre NVARCHAR (100),
Apellidos NVARCHAR (255),
Departamento INT,
PRIMARY KEY (DNI), 
FOREIGN KEY (Departamento) REFERENCES Departamentos(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Departamentos (
Codigo INT,
Nombre NVARCHAR (100),
PRESUPUESTO INT,
PRIMARY KEY (Codigo)
);