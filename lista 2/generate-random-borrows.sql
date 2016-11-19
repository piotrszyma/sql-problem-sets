#InsertRand(IN NumRows INT, IN MinVal INT, IN MaxVal INT)
drop procedure if exists InsertRand;
DELIMITER ; ;

DELIMITER $$
CREATE PROCEDURE InsertRand()
    BEGIN
		DECLARE n INT DEFAULT 0;
        DECLARE i INT;
        DECLARE j INT;
        SELECT COUNT(*) FROM czytelnik INTO n;
        SET j = 1;
        START TRANSACTION;
        WHILE j <= n DO
        SET i = 1;
			WHILE i <= 30 DO
				INSERT INTO wypozyczyl(ksiazka, czytelnik, biblioteka, data_wypozyczenia)  VALUES ((SELECT FLOOR(RAND() * 50) + 1) , j, (SELECT FLOOR(RAND() * 5) + 1), (SELECT DATE(NOW() - INTERVAL FLOOR(RAND() * 1000) DAY)));
				SET i = i + 1;
			END WHILE;
            SET j = j + 1;
		END WHILE;
        COMMIT;
    END$$
DELIMITER ;

CALL InsertRand();