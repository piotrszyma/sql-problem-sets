drop procedure if exists getBooks;

DELIMITER $$

CREATE PROCEDURE getBooks(
	IN nazwisko varchar(20), 
	INOUT amount int(20)
)
BEGIN
	declare userid INT;
	select id from czytelnik where czytelnik.nazwisko = nazwisko into @userid;
	select count(id) from wypozyczyl where wypozyczyl.czytelnik = @userid into amount;
END$$
    
DELIMITER ;


call getBooks('Lang', @amountOfOccurences);

select @amountOfOccurences;
