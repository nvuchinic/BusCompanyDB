

create table Vozila(

	id integer primary key,
	tip varchar not null,
);


create table Vozaci(
id integer primary key,
ime varchar(15),
prezime varchar(15),
starost integer 
);

create table  Linije(
	id integer primary key,
	prva_stanica varchar(20),
	zadnja_stanica varchar(20),
	interval integer,
	pocetak varchar (5),
	
	
);


create table Smjene(
	id_vozaca integer, 
	id_vozila integer,
	id_linije integer,
	broj integer,
	id integer primary key autoincrement,
	foreign key (id_vozaca) references Vozaci on update cascade on delete cascade,
	foreign key (id_vozila) references Vozila on update cascade on delete cascade,	
	foreign key (id_linije) references Linije on update cascade on delete cascade
);
