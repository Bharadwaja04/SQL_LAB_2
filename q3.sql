DELIMITER //

CREATE PROCEDURE AddSubscriberIfNotExists(
	IN subName varchar(100)
)
BEGIN 
	IF NOT EXISTS (Select SubscriberName from Subscribers where SubscriberName = subName) THEN
    INSERT INTO Subscribers (SubscriberName, SubscriptionDate)
    VALUES (subName, CURDATE());
    ELSE
		SELECT CONCAT(subName, ' already exists') AS MESSAGE;
	END IF;
END //

DELIMITER ;

CALL AddSubscriberIfNotExists('John Doe');
