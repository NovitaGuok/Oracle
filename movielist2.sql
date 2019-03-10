SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE MovieList2 (
    name Studio.name%TYPE) as
v_movie Movie%ROWTYPE;
CURSOR movie_cur IS
    SELECT * FROM Movie WHERE studioName = name;
BEGIN
    OPEN movie_cur;
    FETCH movie_cur INTO v_movie;
    WHILE movie_cur%FOUNDLOOP
        DBMS_OUTPUT.PUT_LINE (v_movie.title);
        FETCH movie_cur INTO v_movie;
    END LOOP;
    CLOSE movie_cur;
END MovieList2;
