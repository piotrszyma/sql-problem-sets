drop trigger if exists after_update;

DELIMITER $$
create trigger after_update before update on Koncerty
for each row begin
	set  SQL_SAFE_UPDATES = 0;
    
	update klub set klub.adres = new.adres, klub.nazwa = new.klub where klub.adres = old.adres and klub.nazwa = old.klub;
    update zespol set zespol.nazwa = new.zespol, zespol.czlonkow = new.czlonkow where zespol.nazwa = old.zespol and zespol.czlonkow = old.czlonkow;
	
    set  SQL_SAFE_UPDATES = 1;

end$$
;
DELIMITER ;