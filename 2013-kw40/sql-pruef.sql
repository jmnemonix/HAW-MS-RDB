create database rdb3;
use rdb3;

create table ergebnis(
	matrnr int(3),
	kursid char(3),
	note decimal(3.1),
	primary key(matrnr, kursid)
);
	
insert into ergebnis values(345,"M1",1.0);
insert into ergebnis values(345,"M2",3.0);
insert into ergebnis values(111,"M1",1.0);

create table studi(
	matrnr int(3),
	name char(10),
	adresse char(20),
	primary key(matrnr)
);

insert into studi values (345,"Peter","Dorfstr.");
insert into studi values (111,"Loewe","Ahrweg");

select * from ergebnis;
select * from studi;
select * from ergebnis
	natural join studi;
	

drop table ergebnis;
drop table studi;
drop database rdb3;
