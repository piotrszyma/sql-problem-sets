drop trigger if exists before_insert;

DELIMITER $$
create trigger before_insert before insert on Koncerty
for each row begin

	#check if row already exists
    if (select count(*) from koncerty where koncerty.adres = new.adres and Koncerty.czlonkow = new.czlonkow and Koncerty.kiedy = new.kiedy and Koncerty.klub = new.klub and Koncerty.zespol = new.zespol) > 0 then
		signal sqlstate '45000' set message_text = 'This row already exists in table';
    end if;
    
    #check if the band is valid
    if (select count(*) from zespol where zespol.nazwa = new.zespol) <> 1 then
		insert into zespol(nazwa, czlonkow) values (new.zespol, new.czlonkow);
	else
		#check the band's number of members
		if (select count(*) from zespol where zespol.nazwa = new.zespol and zespol.czlonkow = new.czlonkow) <> 1 then
			signal sqlstate '45000' set message_text = 'Band with this name has different number of members';
		end if;
    end if;
    
    #check if the club is valid
    if (select count(*) from klub where klub.nazwa = new.klub) <> 1 then
		insert into klub(nazwa, adres) values (new.klub, new.adres);
	else
		#check the club's adress
		if (select count(*) from klub where klub.nazwa = new.klub and klub.adres = new.adres) <> 1 then
			signal sqlstate '45000' set message_text = 'This location is invalid';
		end if;
	end if; 
    
    insert into Koncert(klub, zespol, kiedy) values (new.klub, new.zespol, new.kiedy);
    
end$$
;
DELIMITER ;

drop trigger if exists after_update;

DELIMITER $$
create trigger after_update after update on Koncerty
for each row begin

	set  SQL_SAFE_UPDATES = 0;
    SET foreign_key_checks = 0;
    
	update klub set klub.adres = new.adres, klub.nazwa = new.klub where klub.adres = old.adres and klub.nazwa = old.klub;
    update zespol set zespol.nazwa = new.zespol, zespol.czlonkow = new.czlonkow where zespol.nazwa = old.zespol and zespol.czlonkow = old.czlonkow;

    
    if ((select count(*) from koncerty where koncerty.klub = old.klub) > 0) and ((select count(*) from klub where klub.nazwa = old.klub and klub.adres = old.adres) = 0) then
		insert into klub(nazwa, adres) values (old.klub, old.adres);
	end if;
    
     
    if (select count(*) from koncerty where koncerty.zespol = old.zespol) > 0  and ((select count(*) from zespol where zespol.nazwa = old.zespol and zespol.czlonkow = old.czlonkow) = 0) then
		insert into zespol(nazwa, czlonkow) values (old.zespol, old.czlonkow);
	end if;
    
    
		
	SET foreign_key_checks = 1;
    set  SQL_SAFE_UPDATES = 1;

end$$
;


drop trigger if exists before_delete;

DELIMITER $$
create trigger before_delete before delete on Koncerty
for each row begin

    	SET foreign_key_checks = 0;
	if (select count(*) from Koncerty where Koncerty.zespol = old.zespol and Koncerty.czlonkow = old.czlonkow) = 1 then
		delete from zespol where zespol.nazwa = old.zespol and zespol.czlonkow = old.czlonkow;
	end if; 
    
    if (select count(*) from Koncerty where Koncerty.klub = old.klub and Koncerty.adres = old.adres) = 1 then
		delete from klub where klub.nazwa = old.klub and klub.adres = old.adres;
	end if; 
    	SET foreign_key_checks = 1;

 
    
    

end$$
;

DELIMITER ;