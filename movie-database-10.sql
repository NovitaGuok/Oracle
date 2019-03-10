CREATE TABLE Movie
( title VARCHAR2(50),
  year NUMBER(4),
  length NUMBER(3),
  inColor CHAR(1),
  studioName VARCHAR2(30),
  PRIMARY KEY (title, year)
);

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