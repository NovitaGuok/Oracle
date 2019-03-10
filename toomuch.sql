SET SERVEROUTPUT ON 
CREATE TRIGGER TooMuch
    AFTER INSERT ON Movie 
    DECLARE 
        m_length NUMBER := 0; 
    BEGIN 
        SELECT SUM(length) INTO m_length FROM Movie; 
        IF m_length > 10000 then
            RAISE_APPLICATION_ERROR(-10000, 'The minutes is exceeded!!!'); 
        END IF;
END TooMuch;