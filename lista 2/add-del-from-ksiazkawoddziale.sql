SELECT * FROM lista2.ksiazka;

INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Stefan", "Byk", "1111111111111", "Ars mathematica");

set  SQL_SAFE_UPDATES = 0;
delete from `ksiazkawoddziale`;
set  SQL_SAFE_UPDATES = 1;

set  SQL_SAFE_UPDATES = 0;
update `czytelnik` set `nazwisko` = "Bugaj" where `id` = 2;
set  SQL_SAFE_UPDATES = 1;