
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