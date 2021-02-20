Create table despachos(
	Numero int not null,
    Capacidad int,
    primary key(Numero)
);

Create table directores(
	DNI varchar(8) not null,
    NomApels nvarchar(255),
    DNIJefe varchar(8),
    Despacho int,
    primary key (DNI),
    foreign key(DNIJefe) references directores(DNI)on delete cascade on update cascade,
    foreign key(Despacho) references despachos(Numero)on delete cascade on update cascade
);
