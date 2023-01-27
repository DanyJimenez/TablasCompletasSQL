
create table cliente(
	id_cli int primary key,
	nom_cli varchar(30),
	ape_cli varchar(30),
	dir_cli varchar(100),
	dep_cli varchar(20),
	mes_cum_cli varchar(10)
);
create table articulo(
	id_art int primary key,
	tit_art varchar(100),
	aut_art varchar(100),
	edi_art varchar(100),
	prec_art int
);
create table pedido(
	id_ped int primary key,
	id_cli_ped int foreign key(id_cli_ped) references cliente(id_cli),
	fec_ped date not null ,
	val_ped int
);
create table Artículoxpedido(
	id_ped_artped int foreign key(id_ped_artped ) references pedido(id_ped),
	id_art_artped int foreign key(id_art_artped) references articulo(id_art),
	can_art_artped int,
	val_ven_art_artped int
);

set dateformat dmy;
go
insert into cliente(id_cli, nom_cli, ape_cli, dir_cli, dep_cli, mes_cum_cli)
values
('63502718', 'Maritza', 'Rojas', 'Calle 34 No.14-45', 'Santander', 'Abril'),
('13890234', 'Roger', 'Ariza', 'Cra 30 No.13-45', 'Antioquia', 'Junio'),
('77191956', 'Juan Carlos', 'Arenas', 'Diagonal 23 No. 12-34 apto 101', 'Valle', 'Marzo'),
('1098765789', 'Catalina', 'Zapata', 'Av. El Libertador No.30-14', 'Cauca', 'Marzo')

insert into articulo(id_art, tit_art, aut_art, edi_art, prec_art)
values
('1', 'Redes cisco', 'Ernesto Arigasello', 'Alfaomega -Rama', '60000'),
('2', 'Facebook y Twitter para adultos', 'Veloso Claudio', 'Alfaomega', '52000'),
('3', 'Creación de un portal con php y mysql', 'Jacob Pavón Puertas', 'Alfaomega - Rama', '40000'),
('4', 'Administración de sistemas operativos', 'Julio Gómez López', 'Alfaomega - Rama', '55000')

insert into pedido(id_ped,id_cli_ped,fec_ped, val_ped )
values
('1' , '63502718','25-02-2012','120000'),
('2' , '77191956','30-04-2012','55000'),
('3' , '63502718','10-12-2011','260000'),
('4' , '1098765789','25-02-2012','1800000')

insert into Artículoxpedido(id_ped_artped, id_art_artped,can_art_artped, val_ven_art_artped )
values
('1', '3', '5', '40000'),
('1', '4', '12', '55000'),
('2', '1', '5', '65000'),
('3', '2', '10', '55000'),
('3', '3', '12', '45000'),
('4', '1', '20', '65000')

