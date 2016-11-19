

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
                