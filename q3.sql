DELIMITER //

CREATE PROCEDURE AddSubscriberIfNotExists(
	IN subName varchar(100)
)
BEGIN 
	DECLARE ID INT;
	IF NOT EXISTS (Select SubscriberName from Subscribers where SubscriberName = subName) THEN
		SELECT MAX(SubscriberID) INTO ID FROM Subscribers;
		
        IF ID IS NULL THEN
			SET ID = 1;
		ELSE
			SET ID = ID + 1;
		END IF;
        
		INSERT INTO Subscribers (SubscriberID, SubscriberName, SubscriptionDate)
		VALUES (ID,subName, CURDATE());
    ELSE
		SELECT CONCAT(subName, ' already exists') AS MESSAGE;
	END IF;
END //

DELIMITER ;



