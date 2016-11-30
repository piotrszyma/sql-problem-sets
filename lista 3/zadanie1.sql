drop procedure if exists rotate;

DELIMITER $$
create procedure rotate()
	begin
		declare num_of_months int;
		declare i int;
        declare month_name text;
        declare article_name text;
        declare j int;
        declare addcolname text;
        declare num_of_articles int;
        declare art_amount int;
        declare getamm text;
        declare actamm int;
        declare addrow text;
        set i = 0;
        select count(*) from (select distinct sprzedaz.Miesiac from sprzedaz) as tab into num_of_months;
        select count(*) from (select distinct sprzedaz.Towar from sprzedaz) as tab into num_of_articles;
        
        drop table if exists obroty;
        
        create table obroty( 
        Towar text);
        
        while i<num_of_months do
            select distinct sprzedaz.Miesiac from sprzedaz limit 1 offset i into month_name; 
            set @addcolname =  concat('alter table obroty add ', month_name, ' text');
            prepare stmt from @addcolname;
            execute stmt;
            deallocate prepare stmt;
			set i = i + 1;
		end while;
        
        set i = 0;
		while i<num_of_articles do

            #Wyciągnij nazwę artykulu (buty)
			select distinct sprzedaz.Towar from sprzedaz limit 1 offset i into article_name;
            
            #Zacznij tworzyć zapytanie "Dodaj (buty, ...)";
			set @addrow =  concat('insert into obroty values ("', article_name, '"');
			
			set j = 0;
            #ilość ^ buty ^ dla poszczególnych miesiący
            while j<num_of_months do				
				set @addrow = concat(@addrow, ',');
				select distinct sprzedaz.Miesiac from sprzedaz limit 1 offset j into month_name; 
                set @getamm = concat('select SUM(sprzedaz.Ilosc) from sprzedaz where sprzedaz.Towar = "', article_name, '" and sprzedaz.Miesiac = "', month_name, '" into @actamm');
  
				prepare stmt from @getamm;
                execute stmt;
                deallocate prepare stmt;
                set @addrow = concat(@addrow, ifnull(@actamm, "null"));
                
				set j = j + 1;
            end while;
            set j = 0;
            set @addrow =  concat(@addrow, ')');
           
            prepare stmt from @addrow;
			execute stmt;
            deallocate prepare stmt;
            
			set i = i + 1;
		end while;
        
	end$$
    ;
DELIMITER ;

call rotate();