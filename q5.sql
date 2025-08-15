DELIMITER //

CREATE PROCEDURE SubscriberWatchHistory()
BEGIN
	DECLARE done INT DEFAULT 0;
    DECLARE sub_id INT;
    
    DECLARE sub_cursor CURSOR FOR 
		SELECT SubscriberID 
        FROM WatchHistory;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET done = 1;
	OPEN sub_cursor;
    
    read_loop:LOOP
		FETCH sub_cursor INTO sub_id;
        IF done THEN
			LEAVE read_loop;
		END IF;
        
        CALL GetWatchHistoryBySubscriber(sub_id);
	END LOOP read_loop;
    
    CLOSE sub_cursor;
END //

DELIMITER ;

CALL SubscriberWatchHistory();
    
    