SET SERVEROUTPUT ON 
CREATE OR REPLACE PROCEDURE Others (    
    p_Name IN MovieStar.name%TYPE,   
    p_Gender IN MovieStar.gender%TYPE,    
    p_BirthDate IN MovieStar.birthDate%TYPE) AS
    NO_NEW_BORN EXCEPTION;
    NO_GENDER EXCEPTION;
    OTHERS EXCEPTION;

BEGIN
    IF p_BirthDate > SYSDATE THEN
        RAISE NO_NEW_BORN;
    ELSIF p_Gender NOT IN ('M', 'F') THEN
        RAISE NO_GENDER;
    ELSE
        INSERT INTO MOVIESTAR (NAME, GENDER, BIRTHDATE) VALUES (p_Name, p_Gender, p_BirthDate);
    END IF;    

EXCEPTION 
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE ('Duplicate value in MovieStar name.');
    WHEN NO_NEW_BORN THEN
        DBMS_OUTPUT.PUT_LINE ('Birthdate can not be later than today.');
    WHEN NO_GENDER THEN
        DBMS_OUTPUT.PUT_LINE ('Gender must be M or F.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE ('An error is occurred.');
END Others; 


