SET SERVEROUTPUT ON 
CREATE OR REPLACE PROCEDURE AddNewStar (    
    p_Name IN MovieStar.name%TYPE) AS   
BEGIN    
    INSERT INTO MOVIESTAR (NAME) VALUES (p_Name); 

EXCEPTION 
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE ('Duplicate value in MOVIESTAR name.');
END AddNewStar; 



