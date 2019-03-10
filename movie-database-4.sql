CREATE TABLE Studio
( name VARCHAR2(30),
  address VARCHAR2(50),
  pres VARCHAR2(30),
  PRIMARY KEY (name)
);

CREATE TABLE Movie
( title VARCHAR2(50),
  year NUMBER(4),
  length NUMBER(3),
  inColor CHAR(1),
  studioName VARCHAR2(30),
  PRIMARY KEY (title, year)
);

CREATE TABLE MovieStar 
( name VARCHAR2(30), 
  birthplace VARCHAR2(50), 
  gender CHAR(1), 
  birthdate DATE,
  PRIMARY KEY (name)
);

CREATE TABLE StarsIn
( movieTitle VARCHAR2(50),
  movieYear NUMBER(4),
  starName VARCHAR(30),
  PRIMARY KEY (movieTitle, movieYear, starName)
);

INSERT INTO Studio VALUES ('Castle Rock Entertainment', 'Burbank, California, USA', 'Alan F. Horn');
INSERT INTO Studio VALUES ('Paramount Pictures', 'Hollywood, California, USA', 'Brad Grey');
INSERT INTO Studio VALUES ('Warner Bros. Pictures', 'Burbank, California, USA', 'Alan F. Horn');
INSERT INTO Studio VALUES ('Arturo Gonzales Producciones', 'Spain', 'Alfredo Fraile');
INSERT INTO Studio VALUES ('Miramax Films', 'Cambridge, Massachusetts, USA', 'Bob Weinstein');
INSERT INTO Studio VALUES ('Universal Pictures', 'Universal City, California, USA', 'Ronald Meyer');
INSERT INTO Studio VALUES ('New Line Cinema', 'Robertson Blvd, Los Angeles, California, USA', 'Toby Emmerich');
INSERT INTO Studio VALUES ('Focus Features', 'Oxford House, London, United Kingdom', 'Ronald Meyer');

INSERT INTO Movie VALUES ('The Shawshank Redemption',1994,142,'Y','Castle Rock Entertainment');
INSERT INTO Movie VALUES ('The Godfather',1972,175,'Y','Paramount Pictures');
INSERT INTO Movie VALUES ('The Godfather: Part II',1974,200,'Y','Paramount Pictures');
INSERT INTO Movie VALUES ('Inception',2010,148,'Y','Warner Bros. Pictures');
INSERT INTO Movie VALUES ('The Good, the Bad and the Ugly',1966,161,'Y','Arturo Gonzales Producciones');
INSERT INTO Movie VALUES ('Pulp Fiction',1994,154,'Y','Miramax Films');
INSERT INTO Movie VALUES ('Schindler List',1993,195,'N','Universal Pictures');
INSERT INTO Movie VALUES ('Se7en',1995,127,'Y','New Line Cinema');
INSERT INTO Movie VALUES ('Forrest Gump',1994,142,'Y','Paramount Pictures');
INSERT INTO Movie VALUES ('The Green Mile',1999,189,'Y','Castle Rock Entertainment');
INSERT INTO Movie VALUES ('Apollo 13',1995,140,'Y','Universal Pictures');
INSERT INTO Movie VALUES ('Mystic Rivers',2003,138,'Y','Warner Bros. Pictures');
INSERT INTO Movie VALUES ('Milk',2008,128,'Y','Focus Features');
INSERT INTO Movie VALUES ('Casablanca',1942,102,'N','Warner Bros. Pictures');
INSERT INTO Movie VALUES ('The Maltese Falcon',1941,101,'N','Warner Bros. Pictures');

INSERT INTO MovieStar VALUES ('Tim Robbins','West Covina, California, USA','M',TO_DATE('16/10/1958','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Morgan Freeman','Memphis, Tennessee, USA','M',TO_DATE('01/06/1937','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Bob Gunton','Santa Monica, California, USA','M',TO_DATE('15/11/1945','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('William Sadler','Buffalo, New York, USA','M',TO_DATE('13/04/1950','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Clancy Brown','Urbanio, Ohio, USA','M',TO_DATE('05/01/1959','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Marlon Brando','Omaha, Nebraska, USA','M',TO_DATE('03/04/1924','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Al Pacino','New York City, New York, USA','M',TO_DATE('25/04/1940','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('James Caan','The Bronx, New York, USA','M',TO_DATE('26/03/1940','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Richard S. Castellano','The Bronx, New York, USA','M',TO_DATE('04/12/1933','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Robert Duvall','San Diego, California, USA','M',TO_DATE('05/01/1931','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Diane Keaton','Los Angeles, California, USA','F',TO_DATE('05/01/1946','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Robert De Niro','New York City, New York, USA','M',TO_DATE('17/08/1943','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Leonardo DiCaprio','Hollywood, California, USA','M',TO_DATE('11/11/1974','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Joseph Gordon-Levitt','Los Angeles, California, USA','M',TO_DATE('17/02/1981','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Ellen Page','Halifax, Nova Scotia, Canada','F',TO_DATE('21/02/1987','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Tom Hardy','Hammersmith, London, England','M',TO_DATE('15/09/1977','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Cillian Murphy','Douglas, Cork, Ireland','M',TO_DATE('25/05/1976','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Eli Wallach','Brooklyn, New York, USA','M',TO_DATE('07/12/1915','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Clint Eastwood','San Fransisco, California, USA','M',TO_DATE('31/05/1930','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Lee Van CleeF','Somerville, New Jersey, USA','M',TO_DATE('09/01/1925','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('John Travolta','Englewood, New Jersey, USA','M',TO_DATE('18/02/1954','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Samuel L. Jackson','Washington, District of Columbia, USA','M',TO_DATE('21/12/1948','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Bruce Willis','Idar-Oberstein, West Germany','M',TO_DATE('19/05/1955','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Liam Neeson','Ballymena, Co. Antrim, Northern Ireland','M',TO_DATE('07/06/1952','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Ben Kingsley','Scarborough, Yorkshire, England','M',TO_DATE('31/12/1943','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Ralph Fiennes','Ipswich, Suffolk, England','M',TO_DATE('22/12/1962','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Brad Pitt','Shawnee, Oklahoma, USA','M',TO_DATE('18/12/1963','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Gwyneth Paltrow','Los Angeles, California, USA','F',TO_DATE('27/09/1972','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Tom Hanks','Concord, California, USA','M',TO_DATE('09/07/1956','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Robin Wright','Dallas, Texas, USA','F',TO_DATE('08/04/1966','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Gary Sinise','Blue Island, Illinois, USA','M',TO_DATE('17/03/1955','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Michael Clark Duncan','Chicago, Illinois, USA','M',TO_DATE('10/12/1957','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Bonnie Hunt','Chicago, Illinois, USA','F',TO_DATE('22/09/1961','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('James Cromwell','Los Angeles, California, USA','M',TO_DATE('27/01/1940','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Kevin Bacon','Philadelphia, Pennsylvania, USA','M',TO_DATE('08/07/1958','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Sean Penn','Santa Monica, California, USA','M',TO_DATE('17/08/1960','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Laurence Fishburne','Augusta, Georgia, USA','M',TO_DATE('30/07/1961','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Emile Hirsch','Palms, California, USA','M',TO_DATE('13/03/1985','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('James Franco','Palo Alto, California, USA','M',TO_DATE('19/04/1978','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Josh Brolin','Los Angeles, California, USA','M',TO_DATE('12/02/1968','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Humphrey Bogart','New York City, New York, USA','M',TO_DATE('25/12/1899','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Ingrid Bergman','Stockholm, Sweden','F',TO_DATE('29/08/1915','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Paul Henreid','Trieste, Austria-Hungary','M',TO_DATE('10/01/1905','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Mary Astor','Quincy, Illinois, USA','F',TO_DATE('03/05/1906','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Gladys George','Patten, Maine, USA','F',TO_DATE('13/09/1900','DD/MM/YYYY'));
INSERT INTO MovieStar VALUES ('Peter Lorre','Rozsahegy, Hungary, Austria-Hungary','M',TO_DATE('26/06/1904','DD/MM/YYYY'));

INSERT INTO StarsIn VALUES ('The Shawshank Redemption',1994,'Tim Robbins');
INSERT INTO StarsIn VALUES ('The Shawshank Redemption',1994,'Morgan Freeman');
INSERT INTO StarsIn VALUES ('The Shawshank Redemption',1994,'Bob Gunton');
INSERT INTO StarsIn VALUES ('The Shawshank Redemption',1994,'William Sadler');
INSERT INTO StarsIn VALUES ('The Shawshank Redemption',1994,'Clancy Brown');
INSERT INTO StarsIn VALUES ('The Godfather',1972,'Marlon Brando');
INSERT INTO StarsIn VALUES ('The Godfather',1972,'Al Pacino');
INSERT INTO StarsIn VALUES ('The Godfather',1972,'James Caan');
INSERT INTO StarsIn VALUES ('The Godfather',1972,'Richard S. Castellano');
INSERT INTO StarsIn VALUES ('The Godfather',1972,'Robert Duvall');
INSERT INTO StarsIn VALUES ('The Godfather: Part II',1974,'Al Pacino');
INSERT INTO StarsIn VALUES ('The Godfather: Part II',1974,'Robert Duvall');
INSERT INTO StarsIn VALUES ('The Godfather: Part II',1974,'Diane Keaton');
INSERT INTO StarsIn VALUES ('The Godfather: Part II',1974,'Robert De Niro');
INSERT INTO StarsIn VALUES ('Inception',2010,'Leonardo DiCaprio');
INSERT INTO StarsIn VALUES ('Inception',2010,'Joseph Gordon-Levitt');
INSERT INTO StarsIn VALUES ('Inception',2010,'Ellen Page');
INSERT INTO StarsIn VALUES ('Inception',2010,'Tom Hardy');
INSERT INTO StarsIn VALUES ('Inception',2010,'Cillian Murphy');
INSERT INTO StarsIn VALUES ('The Good, the Bad and the Ugly',1966,'Eli Wallach');
INSERT INTO StarsIn VALUES ('The Good, the Bad and the Ugly',1966,'Clint Eastwood');
INSERT INTO StarsIn VALUES ('The Good, the Bad and the Ugly',1966,'Lee Van Cleef');
INSERT INTO StarsIn VALUES ('Pulp Fiction',1994,'John Travolta');
INSERT INTO StarsIn VALUES ('Pulp Fiction',1994,'Samuel L. Jackson');
INSERT INTO StarsIn VALUES ('Pulp Fiction',1994,'Tim Roth');
INSERT INTO StarsIn VALUES ('Pulp Fiction',1994,'Bruce Willis');
INSERT INTO StarsIn VALUES ('Schindler List',1993,'Liam Neeson');
INSERT INTO StarsIn VALUES ('Schindler List',1993,'Ben Kingsley');
INSERT INTO StarsIn VALUES ('Schindler List',1993,'Ralph Fiennes');
INSERT INTO StarsIn VALUES ('Se7en',1995,'Brad Pitt');
INSERT INTO StarsIn VALUES ('Se7en',1995,'Morgan Freeman');
INSERT INTO StarsIn VALUES ('Se7en',1995,'Gwyneth Paltrow');
INSERT INTO StarsIn VALUES ('Forrest Gump',1994,'Tom Hanks');
INSERT INTO StarsIn VALUES ('Forrest Gump',1994,'Robin Wright');
INSERT INTO StarsIn VALUES ('Forrest Gump',1994,'Gary Sinise');
INSERT INTO StarsIn VALUES ('The Green Mile',1999,'Tom Hanks');
INSERT INTO StarsIn VALUES ('The Green Mile',1999,'Michael Clark Duncan');
INSERT INTO StarsIn VALUES ('The Green Mile',1999,'Bonnie Hunt');
INSERT INTO StarsIn VALUES ('The Green Mile',1999,'James Cromwell');
INSERT INTO StarsIn VALUES ('Apollo 13',1995,'Tom Hanks');
INSERT INTO StarsIn VALUES ('Apollo 13',1995,'Gary Sinise');
INSERT INTO StarsIn VALUES ('Apollo 13',1995,'Kevin Bacon');
INSERT INTO StarsIn VALUES ('Mystic Rivers',2003,'Sean Penn');
INSERT INTO StarsIn VALUES ('Mystic Rivers',2003,'Tim Robbins');
INSERT INTO StarsIn VALUES ('Mystic Rivers',2003,'Kevin Bacon');
INSERT INTO StarsIn VALUES ('Mystic Rivers',2003,'Laurence Fishburne');
INSERT INTO StarsIn VALUES ('Milk',2008,'Sean Penn');
INSERT INTO StarsIn VALUES ('Milk',2008,'Emile Hirsch');
INSERT INTO StarsIn VALUES ('Milk',2008,'James Franco');
INSERT INTO StarsIn VALUES ('Casablanca',1942,'Humphrey Bogart');
INSERT INTO StarsIn VALUES ('Casablanca',1942,'Ingrid Bergman');
INSERT INTO StarsIn VALUES ('Casablanca',1942,'Paul Henreid');
INSERT INTO StarsIn VALUES ('The Maltese Falcon',1941,'Humphrey Bogart');
INSERT INTO StarsIn VALUES ('The Maltese Falcon',1941,'Mary Astor');
INSERT INTO StarsIn VALUES ('The Maltese Falcon',1941,'Gladys George');
INSERT INTO StarsIn VALUES ('The Maltese Falcon',1941,'Peter Lorre');