CREATE OR REPLACE PROCEDURE MaxLength (
    name Studio.name%TYPE) AS
v_movie Movie%ROWTYPE;
CURSOR movie_cur IS
    SELECT * FROM MOVIE WHERE LENGTH = (SELECT MAX(LENGTH) FROM MOVIE WHERE studioName = name);
BEGIN
    OPEN movie_cur;
    LOOP
        FETCH movie_cur INTO v_movie;
        EXIT WHEN movie_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (v_movie.title);
    END LOOP;
    CLOSE movie_cur;
END MaxLength;


