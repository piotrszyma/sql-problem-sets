drop table if exists Klub;

create table Klub(
nazwa varchar(20) unique,
adres varchar(20));

drop table if exists Zespol;

create table Zespol(
nazwa varchar(20) unique,
czlonkow int(4));

drop table if exists Koncert;

create table Koncert(
klub varchar(20),
zespol varchar(20),	
kiedy date,
foreign key (klub) references Klub(nazwa),
foreign key (zespol) references Zespol(nazwa));

drop table if exists Koncerty;

create table Koncerty(
klub varchar(20),
adres varchar(20), 
zespol varchar(20),
czlonkow int(4),
kiedy date);




insert into Koncerty(klub, adres, zespol, czlonkow, kiedy) values ("kla", "www", "zewwwxs", 1, "2016-12-12");
insert into Koncerty(klub, adres, zespol, czlonkow, kiedy) values ("kl", "ad", "zes", 4, "2016-12-12");
insert into Koncerty(klub, adres, zespol, czlonkow, kiedy) values ("Klub", "ad", "zes", 4, "2016-10-12");
insert into Koncerty(klub, adres, zespol, czlonkow, kiedy) values ("Klub", "ad", "zes", 4, "2016-10-14");
insert into Klub(nazwa, adres) values ("kl", "ad");
insert into Zespol(nazwa, czlonkow) values ("zes", 4);


set  SQL_SAFE_UPDATES = 0;

#update Koncerty set Koncerty.zespol = "wissslk", Koncerty.czlonkow = 9 where Koncerty.klub = "kl";
delete from Koncerty where Koncerty.klub = "kl";
set  SQL_SAFE_UPDATES = 1;
