create database rdb3;
use rdb3;

create table filme(
	titel char(20),
	ejahr int(4),
	genre char(10),
	dauer int(3),
	primary key(titel, ejahr)
);

create table besetzung(
	rolle char(20),
	titel char(20),
	ejahr int(4),
	name char(20), # name des darstellers
	gage int(10),
	primary key(titel, ejahr)
);

create table schauspieler(
	name char(20),
	gebJahr int(4),
	gender char(1),
	primary key(name)
);

insert into filme values("titanic",1999,"schnulze",190);
insert into filme values("Aviator",2004,"Drama",130);

insert into besetzung values("Jack","titanic",1999,"DiCaprio",2000000);
insert into besetzung values("Rose","titanic",1999,"Kate",1500000);
insert into besetzung values("Hughes","Aviator",2004,"DiCaprio",3000000);

insert into schauspieler values("DiCaprio",1974,"m");
insert into schauspieler values("Kate",1975,"w");

select * from filme;
select * from besetzung;
select * from schauspieler;

select * from filme
	natural join besetzung
	natural join schauspieler;

drop table filme;
drop table besetzung;
drop table schauspieler;
drop database rdb3;
