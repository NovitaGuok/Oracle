SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE MovieList4 (
    name Studio.name%TYPE) as
    v_movie Movie%ROWTYPE;
    c_movie NUMBER;
    s_length NUMBER;
CURSOR movie_cur IS
    SELECT * FROM Movie WHERE studioName = name;
BEGIN
    SELECT COUNT(TITLE) INTO c_movie FROM MOVIE WHERE MOVIE.StudioName = name;
    SELECT SUM(LENGTH) INTO s_length FROM MOVIE WHERE MOVIE.Studioname = name;
    OPEN movie_cur;
    LOOP
        FETCH movie_cur INTO v_movie;
        EXIT WHEN movie_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (v_movie.title);
    END LOOP;
    CLOSE movie_cur;
        DBMS_OUTPUT.PUT_LINE (name || ' produces ' || c_movie || ' with ' || s_length || ' minutes long in total.');
END MovieList4;


