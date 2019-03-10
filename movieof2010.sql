SET SERVEROUTPUT ON 
CREATE TRIGGER Movieof2010
    AFTER INSERT ON MOVIE
    DECLARE 
        m_count NUMBER := 0; 
    BEGIN 
        SELECT COUNT (year) INTO m_count FROM Movie WHERE year = 2010; 
        IF m_count > 2 then
            RAISE_APPLICATION_ERROR(-2, 'Overload'); 
        END IF;
END Movieof2010;