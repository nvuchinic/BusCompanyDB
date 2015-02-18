

create table Vozila(
	ID_vozila integer primary key,
	tip_id integer
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
	ID_tipa integer,
	foreign key(ID_tipa) references Tip_vozila
);

create table Smjene(
	ID_smjene integer primary key autoincrement,
 vrsta varchar(5)
 );

create table vozila_vozaci(
ID_vozaca integer,
ID_vozila integer,
foreign key(ID_vozaca) references Vozaci on update cascade on delete cascade,
foreign key (ID_vozila) references Vozila on update cascade on delete cascade
);
