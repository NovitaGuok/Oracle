SET SERVEROUTPUT ON 
CREATE OR REPLACE PROCEDURE NoNewBorn2 (
    p_Name IN Moviestar.Name%TYPE,
    p_BirthDate IN MovieStar.birthDate%TYPE) AS
    NO_NEW_BORN EXCEPTION;
BEGIN    
    IF p_BirthDate > SYSDATE THEN
        RAISE NO_NEW_BORN;
    ELSE
        INSERT INTO MOVIESTAR (NAME, BIRTHDATE) VALUES (p_Name, p_BirthDate); 
    END IF;
EXCEPTION 
    WHEN NO_NEW_BORN THEN
        DBMS_OUTPUT.PUT_LINE ('Birthdate can not be later than today.');
END NoNewBorn2; 


