create table Profesor(
	doc_prof int primary key not null,
	nom_prof varchar(30) not null,
	ape_prof varchar(30) not null,
	cate_prof int not null,
	sal_prof int not null
	)

create table curso(
	cod_curs int primary key not null,
	nom_curs varchar(100),
	horas_cur int not null,
	valor_cur int not null
	)

create table Estudiante(
	doc_est int primary key not null,
	nom_est varchar(30) not null,
	ape_est varchar(30) not null,
	edad_est int not null,
)

create table Estudiantexcurso(
cod_cur_estcur int not null 
foreign key (cod_cur_estcur) references curso (cod_curs),
doc_est_estcur int foreign key (doc_est_estcur) references Estudiante (doc_est),
fec_ini_estcur date not null
)

insert into Profesor(doc_prof,nom_prof,ape_prof,cate_prof,sal_prof)
values
('63502720','Martha','Rojas','2','690000'),
('91216904','Carlos','P�rez','3','950000'),
('13826789','Maritza','Angarita','1','550000'),
('1098765789','Alejandra','Torres','4','1100000')


insert into curso (cod_curs,nom_curs,horas_cur,valor_cur)
values
('149842','Fundamentos de bases de datos','40','500000'),
('250067','Fundamentos de SQL','20','700000'),
('289011','Manejo de MySQL','45','550000'),
('345671','Fundamentals of oracle','60','3000000')

insert into Estudiante (doc_est,nom_est,ape_est,edad_est)
values
('63502720','Mar�a','P�rez','2'),
('91245678','Carlos Jos�','L�pez','3'),
('1098098097','Jonatan','Ardila','1'),
('1098765679','Carlos','Mart�nez','4')

insert into Estudiantexcurso (cod_cur_estcur,doc_est_estcur,fec_ini_estcur)
values 
('289011','1098765679','01/02/2011'),
('250067','63502720','01/03/2011'),
('289011','1098098097','01/02/2011'),
('345671 ','63502720','01/04/2011')