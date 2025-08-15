DELIMITER //

CREATE PROCEDURE ListAllSubscribers()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sub_name VARCHAR(500);

    DECLARE subscriber CURSOR FOR 
        SELECT SubscriberName FROM Subscribers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET done = 1;

    OPEN subscriber;

    read_loop: LOOP
        FETCH subscriber INTO sub_name;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT sub_name AS SubscriberName;
    END LOOP read_loop;

    CLOSE subscriber;
END //

DELIMITER ;

CALL ListAllSubscribers();

