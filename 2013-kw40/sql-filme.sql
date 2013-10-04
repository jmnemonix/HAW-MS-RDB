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

create table darsteller(
	name char(20),
	gebJahr int(4),
	gender char(1),
	primary key(name)
);

insert into filme values("titanic",1999,"schnulze",190);
insert into filme values("jurassicpark",1993,"action",190);

insert into besetzung values("Jack","titanic",1999,"Leonardo DiCaprio",1974,2000000);
insert into besetzung values("Rose","titanic",1999,"Cate",1975,1500000);
