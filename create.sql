.header on
pragma foreign_keys = on;

create table if not exists Vozila(
	ID_vozila integer primary key autoincrement,
	tip varchar(15)
);

create table if not exists Tip_vozila(ID_tipa integer primary key autoincrement,
	tip_vozila varchar (15);

create table if not exists Vozaci(
ID_vozaca integer primary key autoincrement,
ime varchar(15),
prezime varchar(15)
starost smallint default 50
);

create table if not exists Linije(
	redni_broj smallint primary key autoincrement,
	prva_stanica varchar(20),
	zadnja_stanica varchar(20),
	interval smallint default 60,
	pocetak varchar (5),
	ID_tipa integer,
	foreign key(ID_tipa) references Tip_vozila
);

create table if not exists Smjene(
	ID_smjene integer primary key autoincrement,
 vrsta varchar(5)
 );

create table vozila_vozaci(
ID_vozaca integer,
ID_vozila integer,
foreign key(ID_vozaca) references Vozaci on update cascade on delete cascade,
foreign key (ID_vozila) references Vozila on update cascade on delete cascade
);
