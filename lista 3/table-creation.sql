drop table if exists Sprzedaz;

create table Sprzedaz (
Towar text not null,
Miesiac text not null,
Ilosc int not null);

insert into Sprzedaz(Towar, Miesiac, Ilosc) values ("Buty", "styczeń", 230);
insert into Sprzedaz(Towar, Miesiac, Ilosc) values ("Buty", "styczeń", 100);
insert into Sprzedaz(Towar, Miesiac, Ilosc) values ("Koszula", "styczeń", 50);
insert into Sprzedaz(Towar, Miesiac, Ilosc) values ("Koszula", "luty", 80);
insert into Sprzedaz(Towar, Miesiac, Ilosc) values ("Krawat", "marzec", 190);