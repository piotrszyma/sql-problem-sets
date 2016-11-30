drop trigger if exists before_insert

DELIMITER $$
create trigger after_insert before insert on Koncerty 
for each row begin
	declare i bool;
    
    SELECT EXISTS(SELECT * FROM Koncerty WHERE Koncerty.adres = new.adres and Koncerty.czlonkow = new.czlonkow and Koncerty.kiedy = new.kiedy and Koncerty.klub = new.klub and Koncerty.zespol = new.zespol) into i;
    
    if i 
    
    
    end if;

end$$
;
DELIMITER ;

SELECT EXISTS(SELECT * FROM Koncerty WHERE Koncerty.adres = new.adres and Koncerty.czlonkow = new.czlonkow and Koncerty.kiedy = new.kiedy and Koncerty.klub = new.klub and Koncerty.zespol = new.zespol)

