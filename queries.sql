/*izlistava vozace i vozila koja su koristitili*/
select Vozaci.ime as ime, Vozaci.prezime as prezime,
	Vozaci.id as id, Vozila.tip as vozilo from Vozaci
	inner join Smjene on Vozaci.id = Smjene.id_vozaca
	inner join Vozila on Smjene.id_vozila = Vozila.id
;

/*izlistava tramvajske linije*/
select Linije.prva_stanica as pocetna_stanica,
	Linije.zadnja_stanica as krajnja_stanica from Linije
	inner join Smjene on Linije.id = Smjene.id_linije where Smjene.id_vozila=5 || Smjene.id_vozila=6;
;

/*izlistava trolejbuske linije*/
select Linije.prva_stanica as pocetak,
	Linije.zadnja_stanica as krajnja_stanica from Linije
	inner join Smjene on Linije.id = Smjene.id_linije 
	where Smjene.id_vozila=3 || Smjene.id_vozila=4;
;

/*izlistava autobuske linije*/
select Linije.prva_stanica as pocetak,
	Linije.zadnja_stanica as kraj from Linije
	inner join Smjene on Linije.id = Smjene.id_linije where Smjene.id_vozila=1 || Smjene.id_vozila=2;
;

/*izlistava autobuske i trolejbuske stanice*/
select Linije.prva_stanica as stanica from Linije
	inner join Smjene on Linije.id = Smjene.id_linije
	where Smjene.id_vozila < 5;


/*izlistava sve autobuske i tramvajske stanice*/
select Linije.prva_stanica as stanica from Linije
inner join Smjene on Linije.id = Smjene.id_linije
where Smjene.id_vozila < 3 OR Smjene.id_vozila > 4
;


/*izlistava sve linije koje polaze sa staniice Ilidza,po frekvenciji polaska*/
select * from Linije
inner join Smjene on Linije.id = Smjene.id_linije
where Linije.pocetna_tacka = "Ilidza"
ORDER BY Linije.vrijeme_trajanja
;


/*izlistava sve vozace koji voze na liniji Dobrinja-Otoka*/
select * from Vozaci
inner join Smjene on Vozaci.id = Smjene.id_vozaca
inner join Linije on Linije.id = Smjene.id_linije
where Linije.prva_stanica = "DObrinja" AND Linije.zadnja_stanica = "Otoka"
;


/*izlistava sve vozace koji su vozili vozilo sa id-om 9*/
select * from Vozaci
inner join Smjene on Vozaci.id = Smjene.id_vozaca
inner join Vozila on Vozila.id = Smjene.id_vozila
where Vozila.id = 9
;



/*izlistava sve vozace koji voze na liniji sa rednim brojem 1 i rednim brojem 6*/
select * from Vozaci
inner join Smjene on Vozaci.id = Smjene.id_vozaca
inner join Linije on Linije.id = Smjene.id_linije
where Linije.id = 1 AND Linije.id = 6
;


/*izlistava vozace koji rade prvu smjenu*/
select distinct(prezime) from Vozaci
inner join Smjene on Vozaci.id = Smjene.id_vozaca
where Smjene.broj = 1
;


/*izlistava vozace koji rade u prvoj smjeni a voze autobus*/
select distinct(prezime) from Vozaci
inner join Smjene on Vozaci.id = Smjene.id_vozaca
inner join Vozila on Vozila.id = Smjene.id_vozila
where Smjene.broj = 1 AND Vozila.id < 3
;


/*izlistava sve pocetne linije za vozaca sa id-om 5*/
select distinct(Linije.pocetna_tacka) from Linije
inner join Smjene on Linije.id = Smjene.id_linije
inner join Vozaci on Vozaci.id = Smjene.id_vozaca
where Vozaci.id = 5
;

