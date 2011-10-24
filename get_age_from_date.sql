CREATE FUNCTION get_age_from_date(d DATE) RETURNS INT DETERMINISTIC
BEGIN
   RETURN FLOOR((CURDATE() - d)/10000);
END;