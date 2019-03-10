SET SERVEROUTPUT ON 
CREATE TRIGGER MovieCheck 
	BEFORE INSERT ON StarsIn 
	REFERENCING NEW AS newRow
	FOR EACH ROW 
	BEGIN 
		INSERT INTO MovieStar(name) VALUES (:newRow.StarName); 
        INSERT INTO Movie(title, year, studioname) VALUES  (:newRow.MovieTitle, :newRow.MovieYear, :newRow.MovieTitle);
		DBMS_OUTPUT.PUT_LINE('New Star '||:newRow.StarName|| ' in ' ||:newRow.MovieTitle|| ' movie on ' ||:newRow.MovieYear||'!!'); 
	END MovieCheck; 