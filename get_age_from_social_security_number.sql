CREATE FUNCTION get_age_from_social_security_number(social_security_number VARCHAR(11)) RETURNS INT DETERMINISTIC
BEGIN
   RETURN get_age_from_date(get_date_from_social_security_number(social_security_number));
END;