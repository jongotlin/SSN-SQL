CREATE FUNCTION get_date_from_social_security_number(social_security_number VARCHAR(11)) RETURNS DATE DETERMINISTIC
BEGIN
   DECLARE y INT;
   IF LEFT(social_security_number, 2) <= LEFT(YEAR(SYSDATE()), 2) THEN
      SET y = CONCAT(20, LEFT(social_security_number, 2));
   ELSE
      SET y = CONCAT(19, LEFT(social_security_number, 2));
   END IF;
   RETURN STR_TO_DATE(CONCAT_WS('-', y, MID(social_security_number, 3, 2), MID(social_security_number, 5, 2)), '%Y-%m-%d');
END;