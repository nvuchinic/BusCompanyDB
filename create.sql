

create table Vozila(
	ID_vozila integer primary key,
	tip_id integer,
	foreign key(tip_id) REFERENCES Tip_vozila
);

create table Tip_vozila(
tip_ID integer primary key,
	tip_vozila varchar (15));

create table Vozaci(
ID_vozaca integer primary key,
ime varchar(15),
prezime varchar(15),
starost integer 
);

create table  Linije(
	redni_broj integer primary key,
	prva_stanica varchar(20),
	zadnja_stanica varchar(20),
	interval integer,
	pocetak varchar (5),
	id_vozila integer,
	
);

create table Smjene(
	ID_smjene integer primary key autoincrement,
 vrsta varchar(5)
 );

create table vozila_vozaci(
vozac_id integer,
vozilo_id integer,
foreign key(vozac_id) references Vozaci on update cascade on delete cascade,
foreign key (vozilo_id) references Vozila on update cascade on delete cascade
);

create table vozaci_linije(
vozac_id integer,
linija_id integer
);
