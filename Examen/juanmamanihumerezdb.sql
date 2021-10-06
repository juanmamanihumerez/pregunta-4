CREATE TABLE PERSONA
(
	ci varchar(15),
	nombre varchar(50),
	fecnac datetime,
	depto varchar(10)
);

insert into PERSONA values ('1111','Moises Silva','2/03/1985','LP')
insert into PERSONA (ci,nombre,fecnac,depto) values ('2222','German Huanca','2/03/1985','LP');
insert into PERSONA (ci,nombre,fecnac,depto) values ('3333','Ramiro Ramos','2/03/1985','LP');
insert into PERSONA (ci,nombre,fecnac,depto) values ('4444','Pedro Dominguez','2/03/1985','OR');
insert into PERSONA (ci,nombre,fecnac,depto) values ('5555','Carlos Bustillos','2/03/1985','OR');
insert into PERSONA (ci,nombre,fecnac,depto) values ('6666','Marcelo Mitre','2/03/1985','TJ');
insert into PERSONA (ci,nombre,fecnac,depto) values ('7777','Lucas Soria','2/03/1985','TJ');

insert into PERSONA (ci,nombre,fecnac,depto) values ('8111','Juan Silva','05/04/2000','LP');
insert into PERSONA (ci,nombre,fecnac,depto) values ('8222','Limber Huanca','05/04/2000','LP');
insert into PERSONA (ci,nombre,fecnac,depto) values ('8333','Sara Ramos','05/04/2000','LP');
insert into PERSONA (ci,nombre,fecnac,depto) values ('8444','Ana Dominguez','05/04/2000','OR');
insert into PERSONA (ci,nombre,fecnac,depto) values ('8555','Pedro Bustillos','05/04/2000','OR');
insert into PERSONA (ci,nombre,fecnac,depto) values ('8666','Carmelo Mitre','05/04/2000','TJ');
insert into PERSONA (ci,nombre,fecnac,depto) values ('8777','Rene Soria','05/04/2000','TJ');


CREATE TABLE USUARIO
(
	ci varchar(15),
	username varchar(50),
	pass varchar(15)
);

insert into USUARIO (ci,username,pass) values ('8111','juanes','8111');
insert into USUARIO (ci,username,pass) values ('8222','limber','8222');
insert into USUARIO (ci,username,pass) values ('8333','sara','8333');


CREATE TABLE DOCENTE
(
	ci varchar(15),
	sigla varchar(50),
);

insert into DOCENTE (ci,sigla) values ('1111','INF-111');
insert into DOCENTE(ci,sigla) values ('2222','INF-112');
insert into DOCENTE (ci,sigla) values ('3333','INF-113');
insert into DOCENTE(ci,sigla) values ('4444','INF-114');
insert into DOCENTE (ci,sigla) values ('5555','INF-115');
insert into DOCENTE(ci,sigla) values ('6666','INF-116');

CREATE TABLE NOTA
(
	ci varchar(15),
	sigla varchar(50),
	nota1 decimal(5,2),
	nota2 decimal(5,2),
	nota3 decimal(5,2),
	prom as (nota1+nota2+nota3)/3
);

insert into NOTA (ci,sigla, nota1, nota2, nota3) values ('8111','INF-111',67,45,56);
insert into NOTA (ci,sigla, nota1, nota2, nota3) values ('8222','INF-111',89,45,56);
insert into NOTA (ci,sigla, nota1, nota2, nota3) values ('8333','INF-111',67,53,56);
insert into NOTA (ci,sigla, nota1, nota2, nota3) values ('8444','INF-112',67,45,94);
insert into NOTA (ci,sigla, nota1, nota2, nota3) values ('8555','INF-112',67,76,54);
insert into NOTA (ci,sigla, nota1, nota2, nota3) values ('8666','INF-113',80,45,56);
insert into NOTA (ci,sigla, nota1, nota2, nota3) values ('8777','INF-113',96,80,76);


SELECT  p.depto, AVG(n.nota1) as nota1, AVG(n.nota2) as nota2, AVG(n.nota3) as nota3, AVG((n.nota1+n.nota2+n.nota3)/3) as promedio FROM PERSONA p, NOTA n WHERE n.ci= p.ci Group by p.depto

SELECT p.ci, p.nombre, d.sigla FROM DOCENTE d, PERSONA p WHERE p.ci=d.ci