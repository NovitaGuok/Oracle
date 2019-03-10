SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION MyMovie (
    p_title IN Movie.title%TYPE) RETURN NUMBER AS
v_year NUMBER;

BEGIN
    SELECT year INTO v_year FROM movie WHERE title = p_title;
    RETURN v_year;
END MyMovie;
