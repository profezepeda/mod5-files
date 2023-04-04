use midb;
show tables;
select * from personas;

insert into personas 
values
('99-9', ),
('100-1', ),

create table personas2
select * from personas where rut='9999999';

delete from personas;
select * from personas2;

insert into personas2
select * from personas;

select * from personas;

insert into personas
select * from personas2 where segundoapellido is null;


create table estadosciviles (
	idestado tinyint not null auto_increment primary key,
	nombre varchar(20) not null
);
insert into estadosciviles values
(null, "Soltero/a"),
(null, "Casado/a"),
(null, "Divorciado/a"),
(null, "Anulado/a");

select * from estadosciviles ;

drop table personas;

-- midb.personas definition

CREATE TABLE `personas` (
  `rut` varchar(12) NOT NULL,
  `primernombre` varchar(15) NOT NULL,
  `segundonombre` varchar(15) DEFAULT NULL,
  `primerapellido` varchar(15) NOT NULL,
  `segundoapellido` varchar(15) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `estatura` decimal(4,2) DEFAULT NULL,
  `idestadocivil` tinyint not null,
  `active` tinyint(3) unsigned DEFAULT 1,
  `deleted` tinyint(3) unsigned DEFAULT 0,
  UNIQUE KEY `rut` (`rut`),
  foreign key (idestadocivil) references estadosciviles(idestado)
);
select * from personas;

insert personas
select rut, primernombre, segundonombre,
	primerapellido, segundoapellido,
	fechanacimiento, estatura, 1,
	1, 0
	from personas2;

select rut, primernombre, primerapellido, e.nombre from personas p
inner join estadosciviles e on p.idestadocivil = e.idestado ;

