create table compa�ia(
comnit varchar(11) primary key,
comnombre varchar(30),
coma�ofun int,
comreplegal varchar(100)
)

create table tiposAutomotores(
auttipo int primary key,
autnombre varchar(20)
)

create table automotores (
autoplaca varchar(6) primary key,
automarca varchar (30),
autotipo int  foreign key references tiposAutomotores(auttipo),
automodelo int,
autopasajeros int,
autocilindraje int,
autonumchasis varchar(20)
)

create table aseguramientos(
asecodigo int primary key,
asefechainicio date not null,
asefechaexpiracion date not null,
asevalorasegurado int,
aseestado varchar(10),
asecosto int,
aseplaca varchar(6) foreign key (aseplaca)  references automotores(autoplaca),

)

create table incidentes(
incicodigo int primary key,
incifecha date not null,
inciplaca varchar (6) foreign key references automotores(autoplaca),
incilugar varchar(40),
inciantheridos int,
incicanfatalidades int,
incicanautosinvolucrados int

)

insert into compa�ia (comnit,comnombre, coma�ofun, comreplegal)
values
('800890890-2', 'Seguros Atlantida', '1998', 'Carlos L�pez'),
('899999999-1', 'Aseguradora Rojas', '1991', 'Luis Fernando Rojas'),
('899999999-5', 'Seguros del Estado', '2001', 'Mar�a Margarita P�rez')

insert into tiposAutomotores (auttipo, autnombre )
values
('1', 'Autom�viles'),
('2', 'Camperos'),
('3', 'Camiones')

insert automotores (autoplaca, automarca, autotipo,automodelo, autopasajeros, autocilindraje,autonumchasis)
values
('FLL420', 'chevrolet corsa', '1', '2003', '5', '1400', 'wywzzz167kk009d25'),
('DKZ820', 'renault stepway', '1', '2008', '5', '1600', 'wywzzz167kk009d25'),
('KJQ920', 'kia sportage', '2', '2009', '7', '2000', 'wywzzz157kk009d25')

insert aseguramientos(asecodigo,asefechainicio, asefechaexpiracion, asevalorasegurado,aseestado,asecosto, aseplaca)
values
('1', '2012-09-30', '2013-09-30', '30000000', 'Vigente', '500000', 'FLL420'),
('2', '2012-09-27', '2013-09-27', '35000000', 'Vigente', '600000', 'DKZ820'),
('3', '2011-09-28', '2012-09-28', '50000000', 'Vigente', '800000', 'KJQ920')

insert incidentes (incicodigo, incifecha, inciplaca,incilugar, inciantheridos,incicanfatalidades, incicanautosinvolucrados)
values
('1', '2012-09-30', 'DKZ820' , 'Bucaramanga', '0' , '0' , '2'),
('2', '2012-09-27', 'FLL420' , 'Gir�n', '1' , '0' , '1'),
('3', '2011-09-28', 'FLL420' , 'Bucaramanga', '1' , '0' , '2')