/*izlistava vozace i vozila koja su koristitili*/
select Vozaci.ime as ime, Vozaci.prezime as prezime,
Vozaci.ID_vozaca as id, Tip_vozila.tip as tip_vozila from Vozaci
inner join vozila_vozaci on Vozaci.ID_vozaca = vozila_vozaci.id_vozaca
inner join vozila_vozaci on vozila_vozaci.id_vozila = Vozila.ID_vozila;
