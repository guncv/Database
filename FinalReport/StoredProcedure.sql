-- 1 --
CREATE or REPLACE PROCEDURE updateNameFromUserId(userId VARCHAR(36),firstName VARCHAR(64),
    lastName VARCHAR(64))
language plpgsql
AS $$
BEGIN
	UPDATE users
	SET first_name = firstName
	WHERE user_id = userId;
	
	UPDATE users
	SET last_name = lastName
	WHERE user_id = userId;
END;
$$

CALL updateNameFromUserId('user1','Gun','Cv')

-- 2 --
CREATE OR REPLACE procedure closeAccommodation(accommodationId VARCHAR(10))
language plpgsql
AS $$
BEGIN
	DELETE FROM feedback
	WHERE accommodation_id = accommodationId;
	
	DELETE FROM reserve
	WHERE accommodation_id = accommodationId;
	
	DELETE FROM accommodation
	WHERE accommodation_id = accommodationId;
END;
$$

CALL closeAccommodation('acc2');
