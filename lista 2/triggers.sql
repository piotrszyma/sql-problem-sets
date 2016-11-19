drop trigger if exists after_book_addition;

DELIMITER $$
    
CREATE TRIGGER after_book_addition 
    after insert on ksiazka
		for each row
			begin		
				INSERT INTO ksiazkawoddziale(ksiazka, biblioteka, data_dodania) values (new.id, 6, DATE(NOW())); 
			END$$
DELIMITER ;

drop trigger if exists before_book_deletion;

DELIMITER $$
    
CREATE TRIGGER before_book_deletion 
    after delete on ksiazkawoddziale
		for each row
			begin
            
				delete from lista2.ksiazka 
                where lista2.ksiazka.id = old.ksiazka;
			END$$
DELIMITER ;


show triggers;

drop trigger if exists after_name_change;

DELIMITER $$

create trigger after_name_change
	before update on czytelnik
		for each row
			begin
				delete from lista2.wypozyczyl 
                where lista2.wypozyczyl.czytelnik = old.id;
			END$$
DELIMITER ;
                