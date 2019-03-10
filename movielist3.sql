SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE MovieList3 (
    name Studio.name%TYPE) as
v_movie Movie%ROWTYPE;
CURSOR movie_cur IS
    SELECT * FROM Movie WHERE studioName = name;
BEGIN
    FOR v_movie IN movie_cur LOOP
        DBMS_OUTPUT.PUT_LINE (v_movie.title);
    END LOOP;
END MovieList3;
