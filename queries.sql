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
