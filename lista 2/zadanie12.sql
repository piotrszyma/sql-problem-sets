drop function if exists getBooksByPESEL;

DELIMITER $$
create function getBooksByPESEL(pesel varchar(11))
	returns text
    begin
		declare user_id int;
        declare amount int;
        declare output text;
        declare i int default 0;

        select czytelnik.id from czytelnik where czytelnik.pesel = pesel into @user_id;
        select count(*) from wypozyczyl where czytelnik = @user_id into @amount;
        while i < amount do
			
        set i = i + 1;
        end while;

        
        select GROUP_CONCAT(
        DISTINCT CONCAT(ksiazka.isbn,', ',ksiazka.tytul)  
		SEPARATOR '\n'
		) from ksiazka, wypozyczyl where wypozyczyl.czytelnik = @user_id into @output;
        return @output;
    end;
    $$
DELIMITER ;

select getBooksByPESEL('63322406661');


