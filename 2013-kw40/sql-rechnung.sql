create database business;
use business;

create table kunden(
	KNr int(7) auto_increment,
	Name char(20),
	Konto int(10),
	BLZ int(8),
	primary key(KNr)
);
create table rechnungen(
	RNr int(7),
	Datum char(16),
	Adresse char(40),
	KNr int(7),
	primary key(RNr, Datum)
);
create table positionen(
	RNr int(7),
	PosNr int(3),
	ArtikelNr int(7),
	Stueck int(5),
	primary key(RNr,PosNr)
);
create table produkte(
	ArtikelNr int(7) auto_increment,
	Beschreibung char(15),
	Preis decimal(5.2),
	primary key(ArtikelNr)
);





drop table kunden;
drop table rechnungen;
drop table positionen;
drop table produkte;

drop database business;
