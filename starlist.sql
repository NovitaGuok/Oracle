SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE StarList (
    name Studio.name%TYPE) AS
s_Star Starsin%ROWTYPE;
stars_sum NUMBER;
CURSOR movie_cur IS
    SELECT * FROM STARSIN WHERE MOVIETITLE IN (SELECT TITLE FROM MOVIE WHERE Studioname = name);
BEGIN
SELECT COUNT(STARNAME) INTO stars_sum FROM STARSIN WHERE MOVIETITLE IN (SELECT TITLE FROM MOVIE WHERE Studioname = name);
    OPEN movie_cur;
    LOOP    
        FETCH movie_cur INTO s_Star;
        EXIT WHEN movie_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (s_Star.starname);
    END LOOP;
    CLOSE movie_cur;
    DBMS_OUTPUT.PUT_LINE ('Total: ' || stars_sum || ' movie star(s).');
END StarList;
