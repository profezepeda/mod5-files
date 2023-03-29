create user 'explorador'@'localhost' identified by '123';
grant all privileges on test.world* to 'explorador'@'localhost';
grant all privileges on world.* to 'explorador'@'localhost';
flush privileges;

create table persona (
	rut varchar(12) primary key,
	primernombre varchar(15) not null,
	segundonombre varchar(15),
	primerapellido varchar(15) not null,
	segundoapellido varchar(15)
);


use test;
show tables;
show tables where tables_in_test like 'world%';


use world;
show tables;

select * from country;

select count(*) from city;

show tables;
select count(*) from country c ;

select * from country order by Name desc;
select * from city;

select pais.Name, count(*) from country pais
inner join city ciudad on ciudad.CountryCode = pais.Code
where pais.Continent = 'South America'
group by pais.Code ;