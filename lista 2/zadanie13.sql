drop view if exists v;

create view v as 
select ksiazka.tytul, czytelnik.imie, czytelnik.nazwisko, oddzialbiblioteki.nazwa
from wypozyczyl, ksiazka, czytelnik, oddzialbiblioteki
where wypozyczyl.ksiazka = ksiazka.id and czytelnik.id = wypozyczyl.czytelnik and oddzialbiblioteki.id = wypozyczyl.biblioteka;

select * from v;