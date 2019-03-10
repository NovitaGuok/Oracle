SET SERVEROUTPUT ON 
CREATE TRIGGER StarCheck 
	BEFORE INSERT ON StarsIn 
	REFERENCING NEW AS newRow 
	FOR EACH ROW 
	BEGIN 
		INSERT INTO MovieStar(name) VALUES (:newRow.StarName); 
		DBMS_OUTPUT.PUT_LINE('New Star '||:newRow.StarName||'!!'); 
	END StarCheck; 