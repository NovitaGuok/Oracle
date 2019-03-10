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
  starName VARCHAR2(30),
  FOREIGN KEY (movieTitle, movieYear) REFERENCES Movie(title, year)
    ON DELETE CASCADE
);

INSERT INTO Studio VALUES ('Castle Rock Entertainment', 'Burbank, California, USA', 'Alan F. Horn');
INSERT INTO Studio VALUES ('Warner Bros. Pictures', 'Burbank, California, USA', 'Alan F. Horn');
INSERT INTO Studio VALUES ('Arturo Gonzales Producciones', 'Spain', 'Alfredo Fraile');
INSERT INTO Studio VALUES ('Miramax Films', 'Cambridge, Massachusetts, USA', 'Bob Weinstein');
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

INSERT INTO MovieStar VALUES ('Tim Robbins','West Covina, California, USA','M','16/Oct/1958');
INSERT INTO MovieStar VALUES ('Morgan Freeman','Memphis, Tennessee, USA','M','01/Jun/1937');
INSERT INTO MovieStar VALUES ('Bob Gunton','Santa Monica, California, USA','M','15/Nov/1945');
INSERT INTO MovieStar VALUES ('William Sadler','Buffalo, New York, USA','M','13/Apr/1950');
INSERT INTO MovieStar VALUES ('Clancy Brown','Urbanio, Ohio, USA','M','05/Jan/1959');
INSERT INTO MovieStar VALUES ('Marlon Brando','Omaha, Nebraska, USA','M','03/Apr/1924');
INSERT INTO MovieStar VALUES ('Al Pacino','New York City, New York, USA','M','25/Apr/1940');
INSERT INTO MovieStar VALUES ('James Caan','The Bronx, New York, USA','M','26/Mar/1940');
INSERT INTO MovieStar VALUES ('Richard S. Castellano','The Bronx, New York, USA','M','04/Dec/1933');
INSERT INTO MovieStar VALUES ('Robert Duvall','San Diego, California, USA','M','05/Jan/1931');
INSERT INTO MovieStar VALUES ('Diane Keaton','Los Angeles, California, USA','F','05/Jan/1946');
INSERT INTO MovieStar VALUES ('Robert De Niro','New York City, New York, USA','M','17/Aug/1943');
INSERT INTO MovieStar VALUES ('Leonardo DiCaprio','Hollywood, California, USA','M','11/Nov/1974');
INSERT INTO MovieStar VALUES ('Joseph Gordon-Levitt','Los Angeles, California, USA','M','17/Feb/1981');
INSERT INTO MovieStar VALUES ('Ellen Page','Halifax, Nova Scotia, Canada','F','21/Feb/1987');
INSERT INTO MovieStar VALUES ('Tom Hardy','Hammersmith, London, England','M','15/Sep/1977');
INSERT INTO MovieStar VALUES ('Ken Watanabe','Uonuma, Japan','M','21/Oct/1959');
INSERT INTO MovieStar VALUES ('Cillian Murphy','Douglas, Cork, Ireland','M','25/May/1976');
INSERT INTO MovieStar VALUES ('Eli Wallach','Brooklyn, New York, USA','M','07/Dec/1915');
INSERT INTO MovieStar VALUES ('Clint Eastwood','San Fransisco, California, USA','M','31/May/1930');
INSERT INTO MovieStar VALUES ('Lee Van Cleef','Somerville, New Jersey, USA','M','09/Jan/1925');
INSERT INTO MovieStar VALUES ('John Travolta','Englewood, New Jersey, USA','M','18/Feb/1954');
INSERT INTO MovieStar VALUES ('Samuel L. Jackson','Washington, District of Columbia, USA','M','21/Dec/1948');
INSERT INTO MovieStar VALUES ('Tim Roth','London, England','M','14/May/1961');
INSERT INTO MovieStar VALUES ('Bruce Willis','Idar-Oberstein, West Germany','M','19/May/1955');
INSERT INTO MovieStar VALUES ('Liam Neeson','Ballymena, Co. Antrim, Northern Ireland','M','07/Jun/1952');
INSERT INTO MovieStar VALUES ('Ben Kingsley','Scarborough, Yorkshire, England','M','31/Dec/1943');
INSERT INTO MovieStar VALUES ('Ralph Fiennes','Ipswich, Suffolk, England','M','22/Dec/1962');
INSERT INTO MovieStar VALUES ('Brad Pitt','Shawnee, Oklahoma, USA','M','18/Dec/1963');
INSERT INTO MovieStar VALUES ('Gwyneth Paltrow','Los Angeles, California, USA','F','27/Sep/1972');
INSERT INTO MovieStar VALUES ('Tom Hanks','Concord, California, USA','M','09/Jul/1956');
INSERT INTO MovieStar VALUES ('Robin Wright','Dallas, Texas, USA','F','08/Apr/1966');
INSERT INTO MovieStar VALUES ('Gary Sinise','Blue Island, Illinois, USA','M','17/Mar/1955');
INSERT INTO MovieStar VALUES ('Michael Clark Duncan','Chicago, Illinois, USA','M','10/Dec/1957');
INSERT INTO MovieStar VALUES ('Bonnie Hunt','Chicago, Illinois, USA','F','22/Sep/1961');
INSERT INTO MovieStar VALUES ('James Cromwell','Los Angeles, California, USA','M','27/Jan/1940');
INSERT INTO MovieStar VALUES ('Kevin Bacon','Philadelphia, Pennsylvania, USA','M','08/Jul/1958');
INSERT INTO MovieStar VALUES ('Sean Penn','Santa Monica, California, USA','M','17/Aug/1960');
INSERT INTO MovieStar VALUES ('Laurence Fishburne','Augusta, Georgia, USA','M','30/Jul/1961');
INSERT INTO MovieStar VALUES ('Emile Hirsch','Palms, California, USA','M','13/Mar/1985');
INSERT INTO MovieStar VALUES ('James Franco','Palo Alto, California, USA','M','19/Apr/1978');
INSERT INTO MovieStar VALUES ('Josh Brolin','Los Angeles, California, USA','M','12/Feb/1968');
INSERT INTO MovieStar VALUES ('Humphrey Bogart','New York City, New York, USA','M','25/Dec/1899');
INSERT INTO MovieStar VALUES ('Ingrid Bergman','Stockholm, Sweden','F','29/Aug/1915');
INSERT INTO MovieStar VALUES ('Paul Henreid','Trieste, Austria-Hungary','M','10/Jan/1905');
INSERT INTO MovieStar VALUES ('Mary Astor','Quincy, Illinois, USA','F','03/May/1906');
INSERT INTO MovieStar VALUES ('Gladys George','Patten, Maine, USA','F','13/Sep/1900');
INSERT INTO MovieStar VALUES ('Peter Lorre','Rozsahegy, Hungary, Austria-Hungary','M','26/Jun/1904');

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
INSERT INTO StarsIn VALUES ('Inception',2010,'Ken Watanabe');
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