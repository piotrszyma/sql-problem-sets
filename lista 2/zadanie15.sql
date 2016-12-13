#ZADANIE 15
#Procedura sprawdzająca, jaka najstarsza i najmłodsza (względem daty dodania) książka znajduje się w oddziale podanym jako pierwszy parametr

drop procedure if exists getOldestNewestBooks;

DELIMITER $$
create procedure getOldestNewestBooks(unit_name text, inout oldest date, inout youngest date)
	begin
		declare unit_id int;
        select oddzialbiblioteki.id from oddzialbiblioteki where oddzialbiblioteki.nazwa = unit_name into unit_id;
		select max(ksiazkawoddziale.data_dodania) from ksiazkawoddziale where ksiazkawoddziale.biblioteka = unit_id into youngest;
		select min(ksiazkawoddziale.data_dodania) from ksiazkawoddziale where ksiazkawoddziale.biblioteka = unit_id into oldest;
	end$$
    ;
DELIMITER ;



set @oldest = null;
set @youngest = null;

call getOldestNewestBooks("Biblioteka nr 1", @oldest, @youngest);

select @oldest, @youngest;