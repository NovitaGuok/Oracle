SET SERVEROUTPUT ON 
CREATE OR REPLACE PROCEDURE NoGender (    
    p_Name IN MovieStar.Name%TYPE,
    p_Gender IN MovieStar.gender%TYPE) AS
    NO_GENDER EXCEPTION;
BEGIN     
    IF p_Gender = 'M' THEN
        INSERT INTO MOVIESTAR (NAME, GENDER) VALUES (p_Name, p_Gender);
    ELSIF 
        p_Gender = 'F' THEN
        INSERT INTO MOVIESTAR (NAME, GENDER) VALUES (p_Name, p_Gender);
    ELSE 
        RAISE NO_GENDER;
    END IF;
EXCEPTION 
    WHEN NO_GENDER THEN
        DBMS_OUTPUT.PUT_LINE ('Gender must be M or F.');
END NoGender; 


