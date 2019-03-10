SET SERVEROUTPUT ON 
CREATE TRIGGER StudioProduct 
    AFTER INSERT ON Movie 
    DECLARE 
        m_length NUMBER := 0; 
    BEGIN 
        SELECT SUM(length) INTO m_length FROM Movie; 
        DBMS_OUTPUT.PUT_LINE('We have '|| m_length ||' minutes of movies!!'); 
END StudioProduct;