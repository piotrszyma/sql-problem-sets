drop function if exists getAmountOfBooks;

DELIMITER $$
create function getAmountOfBooks(nazwa_biblioteki text)
returns int
	begin
		declare num_of_books int;
        declare unit int;
        select oddzialbiblioteki.id from oddzialbiblioteki where oddzialbiblioteki.nazwa = nazwa_biblioteki into unit;
        select count(*) from ksiazkawoddziale where ksiazkawoddziale.biblioteka = unit into num_of_books; 
        return num_of_books;
    end$$
    ;
    
DELIMITER ;

select getAmountOfBooks("Biblioteka nr 1");