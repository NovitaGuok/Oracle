SET SERVEROUTPUT ON 
CREATE OR REPLACE FUNCTION After50s (    
    p_Name IN STARSIN.StarName%TYPE,
    p_Year IN STARSIN.MovieYear%TYPE) RETURN VARCHAR2 AS  
    v_Star NUMBER := 0;
    v_Cap VARCHAR2(30);
BEGIN    
    SELECT COUNT(STARNAME) INTO v_Star FROM STARSIN WHERE STARSIN.StarName = p_Name AND STARSIN.MovieYear = p_Year; 
    IF v_Star = 0 THEN
        v_Cap := 'Not productive.';
        RETURN (v_Cap); 
    ELSIF v_Star = 1 THEN
        v_Cap := 'Productive year.';
        RETURN (v_Cap); 
    ELSIF v_Star = 2 THEN
        v_Cap := 'Very productive year.';
        RETURN (v_Cap); 
    ELSIF v_Star = 3 THEN
        v_Cap := 'Too productive.';
        RETURN (v_Cap); 
    ELSIF v_Star > 3 THEN
        v_Cap := 'Too much, please.';
        RETURN (v_Cap); 
    END IF;
END After50s;