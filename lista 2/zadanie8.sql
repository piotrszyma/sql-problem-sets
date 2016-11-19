drop trigger if exists after_book_addition;

DELIMITER $$
    
CREATE TRIGGER after_book_addition 
    after insert on ksiazka
		for each row
			begin		
				INSERT INTO ksiazkawoddziale(ksiazka, biblioteka, data_dodania) values (new.id, 6, DATE(NOW())); 
			END$$
DELIMITER ;
