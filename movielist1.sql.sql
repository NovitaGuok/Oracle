CREATE OR REPLACE PROCEDURE MovieList (
    name Studio.name%TYPE) as
v_movie Movie%ROWTYPE;
CURSOR movie_cur IS
    SELECT * FROM Movie WHERE studioName = name;
BEGIN
    OPEN movie_cur;
    LOOP
        FETCH movie_cur INTO v_movie;
        EXIT WHEN movie_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (v_movie.title);
    END LOOP;
    CLOSE movie_cur;
END MovieList;
