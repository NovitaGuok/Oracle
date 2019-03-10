SET SERVEROUTPUT ON 
CREATE OR REPLACE PROCEDURE NoNewBorn (
    p_Name IN Moviestar.Name%TYPE,
    p_BirthDate IN MovieStar.birthDate%TYPE) AS
    NO_NEW_BORN EXCEPTION;
BEGIN    
    IF p_BirthDate > SYSDATE THEN
        RAISE NO_NEW_BORN;
    END IF;
EXCEPTION 
    WHEN NO_NEW_BORN THEN
        DBMS_OUTPUT.PUT_LINE ('Birthdate can not be later than today.');
END NoNewBorn;  