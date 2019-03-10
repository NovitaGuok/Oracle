SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION NotProductive (
    p_Name IN STARSIN.StarName%TYPE,
    p_Year IN STARSIN.MovieYear%TYPE) RETURN VARCHAR2 AS
    n_NAME NUMBER := 0;
    n_YEAR VARCHAR2(30);
    NOT_PRODUCTIVE EXCEPTION;
    TOO_MUCH EXCEPTION;

BEGIN
    SELECT COUNT(STARNAME) INTO n_Name FROM STARSIN WHERE STARSIN.StarName = p_Name AND STARSIN.MovieYear = p_Year;
        IF n_Name = 1 THEN
            n_Year := 'Productive Year.';
            RETURN (n_YEAR);
        ELSIF n_NAME = 2 THEN
            n_Year := 'Very Productive Year.';
            RETURN (n_YEAR);
        ELSIF n_NAME = 0 THEN
            RAISE NOT_PRODUCTIVE;
        ELSE
            RAISE TOO_MUCH;
        END IF;
EXCEPTION
    WHEN NOT_PRODUCTIVE THEN
        DBMS_OUTPUT.PUT_LINE ('This movie star is not productive.');
        RETURN(n_YEAR);
    WHEN TOO_MUCH THEN
        DBMS_OUTPUT.PUT_LINE ('The number of movies is too high.');
        RETURN(n_YEAR);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE ('An error is occured.');
        RETURN(n_YEAR);
END NotProductive;