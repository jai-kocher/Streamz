CREATE TABLE MOVIE
(
    MOVIE_ID INT PRIMARY KEY,
    MOVIE_NAME VARCHAR(100),
    LANG VARCHAR(20),
    MOVIE_YEAR INT,
    STUDIO VARCHAR(20),
    DIRECTOR_ID INT,
    RENT_COST FLOAT(2),
    BUY_COST FLOAT(2),
    BOXOFFICE FLOAT(2),
    SYNOPSIS VARCHAR(1000)
);
--DROP TABLE RENTAL CASCADE;

CREATE TABLE ACTOR
(
    ACTOR_ID INT PRIMARY KEY,
    ACTOR_NAME VARCHAR(20),
    GENDER VARCHAR(1),
    RATING FLOAT(2)
);

CREATE TABLE DIRECTOR
(
    DIRECTOR_ID INT PRIMARY KEY,
    DIRECTOR_NAME VARCHAR(20),
    GENDER VARCHAR(1)  
);

CREATE TABLE RENTAL
(
    MEMBER_ID INT,
    MOVIE_ID INT,
    DAYS INT,
    QUALITY VARCHAR(5),
    START_DATE DATE,
    EXPIRY DATE,
    TOTAL_COST FLOAT(2),
    PRIMARY KEY(MEMBER_ID,MOVIE_ID)
);

CREATE TABLE BUY
(
    MEMBER_ID INT,
    MOVIE_ID INT,
    TOTAL_COST FLOAT(2),
    PRIMARY KEY(MEMBER_ID,MOVIE_ID)
);

CREATE TABLE MEMBER
(
    MEMBER_ID INT PRIMARY KEY,
    MEMBER_NAME VARCHAR(20),
    --GENDER VARCHAR(1),
    PHNO VARCHAR(10),
    --ADDRESS VARCHAR(50),
    EMAIL VARCHAR(20),
	USERNAME VARCHAR(15),
	PASSWD VARCHAR(15),
    BALANCE FLOAT(2)
);


CREATE TABLE MOVIE_CAST
(
    ACTOR_ID INT,
    MOVIE_ID INT,
    ROLE VARCHAR(20),
    PRIMARY KEY(ACTOR_ID,MOVIE_ID)
);

CREATE TABLE GENRE
(
    GENRE_ID INT PRIMARY KEY,
    GENRE_NAME VARCHAR(15)
);

CREATE TABLE GENRE_TYPE
(
    GENRE_ID INT,
    MOVIE_ID INT,
    PRIMARY KEY(GENRE_ID,MOVIE_ID)
);

INSERT INTO MOVIE VALUES(1,'DOCTOR STRANGE - IN THE MULTIVERSE OF MADNESS','ENGLISH',2022,'MARVEL',1,50.0,600.0,936,'Dr Stephen Strange casts a forbidden spell that opens a portal to the multiverse. However, a threat emerges that may be too big for his team to handle.');
INSERT INTO MOVIE VALUES(2,'THOR : LOVE AND THUNDER','ENGLISH',2022,'MARVEL',2,48.0,600.0,NULL,'Thor embarks on a journey unlike anything he''s ever faced -- a quest for inner peace. However, his retirement gets interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods.');
INSERT INTO MOVIE VALUES(3,'PINOCCHIO','ENGLISH',2022,'DISNEY',3,50.0,700.0,NULL,'Pinocchio is an upcoming American musical fantasy film directed by Robert Zemeckis from a screenplay by Zemeckis and Chris Weitz. ');
INSERT INTO MOVIE VALUES(4,'AQUAMAN','ENGLISH',2018,'DC',4,50.0,600.0,1100,'Half-human, half-Atlantean Arthur is born with the ability to communicate with marine creatures. He goes on a quest to retrieve the legendary Trident of Atlan and protect the water world.');
INSERT INTO MOVIE VALUES(5,'STAR WARS','ENGLISH',1977,'20TH CENT.FOX',5,52.0,700.0,779,'Princess Leia gets abducted by the insidious Darth Vader. Luke Skywalker then teams up with a Jedi Knight, a pilot and two droids to free her and to save the galaxy from the violent Galactic Empire.');
INSERT INTO MOVIE VALUES(6,'CHARLIE AND THE CHOCOLATE FACTORY','ENGLISH',2005,'WARNER BROS',6,50.0,650.0,474,'Charlie, a young boy from an impoverished family, and four other kids win a tour of an amazing chocolate factory run by an imaginative chocolatier, Willy Wonka, and his staff of Oompa-Loompas.');
INSERT INTO MOVIE VALUES(7,'AVATAR','ENGLISH',2009,'20TH CENT.FOX',7,53.0,700.0,2800,'Jake, who is paraplegic, replaces his twin on the Na''vi inhabited Pandora for a corporate mission. After the natives accept him as one of their own, he must decide where his loyalties lie.');
INSERT INTO MOVIE VALUES(8,'LAMB','ENGLISH',2021,'SPARK FILM AND TV',8,52.0,640.0,3,'In rural Iceland, a childless couple discover a strange and unnatural newborn in their sheep barn. They decide to raise her as their own, but sinister forces are determined to return the creature to the wilderness that birthed her.');
INSERT INTO MOVIE VALUES(9,'SONIC THE HEDGEHOG','ENGLISH',2020,'PARAMOUNT PICTURES',9,50.0,600.0,319,'After settling in Green Hills, Sonic is eager to prove that he has what it takes to be a true hero. His test comes when Dr. Robotnik returns with a new partner, Knuckles, in search of a mystical emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.');
INSERT INTO MOVIE VALUES(15,'BEETLEJUICE','ENGLISH',1988,'WARNER BROS',6,54.0,670.0,74,'When the deceased couple Adam and Barbara are unsuccessful in scaring away a family that has moved into their old home, they seek the help of bio-exorcist Betelgeuse.');
INSERT INTO MOVIE VALUES(11,'SEVEN','ENGLISH',1995,'NEW LINE CINEMA',11,53.0,720.0,327,'A serial killer begins murdering people according to the seven deadly sins, and it is up to a detective who is about to retire and another who just moved to the city to bring him to justice.');
INSERT INTO MOVIE VALUES(12,'MEMENTO','ENGLISH',2000,'NEW MARKET',12,52.0,700.0,40,'Leonard Shelby, an insurance investigator, suffers from anterograde amnesia and uses notes and tattoos to hunt for the man he thinks killed his wife, which is the last thing he remembers.');
INSERT INTO MOVIE VALUES(13,'SHUTTER ISLAND','ENGLISH',2010,'PARAMOUNT',13,54.0,800.0,294,'Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place');
INSERT INTO MOVIE VALUES(14,'THE SIXTH SENSE','ENGLISH',1999,'WALT DISNEY',14,50.0,670.0,672,'Malcolm Crowe, a child psychologist, starts treating a young boy who acts as a medium of communication between the former and a slew of unhappy spirits.');
INSERT INTO MOVIE VALUES(16,'INCEPTION','ENGLISH',2010,'WARNER BROS',12,53.0,600.0,836,'Cobb steals information from his targets by entering their dreams. Saito offers to wipe clean Cobb''s criminal history as payment for performing an inception on his sick competitors son.');
INSERT INTO MOVIE VALUES(17,'SHAWSHANK REDEMPTION','ENGLISH',1994,'COLOMBIA PICTURES',15,54.0,600.0,28,'Andy Dufresne, a successful banker, is arrested for the murders of his wife and her lover, and is sentenced to life imprisonment at the Shawshank prison. He becomes the most unconventional prisoner.');
INSERT INTO MOVIE VALUES(18,'THE DEPARTED','ENGLISH',2006,'WARNER BROS',13,54.0,600.0,291,'An undercover agent and a spy constantly try to counter-attack each other in order to save themselves from being exposed in front of the authorities. Meanwhile, both try to infiltrate an Irish gang.');
INSERT INTO MOVIE VALUES(19,'THE IMITATION GAME','ENGLISH',2014,'STUDIO CANAL',16,53.0,570.0,230,'Alan Turing, a British mathematician, joins the cryptography team to decipher the German enigma code. With the help of his fellow mathematicians, he builds a machine to crack the codes.');
INSERT INTO MOVIE VALUES(20,'SILENCE OF THE LAMBS','ENGLISH',1991,'STRONG HEART',17,56.0,790.0,272.2,'Clarice Starling, an FBI agent, seeks help from Hannibal Lecter, a psychopathic serial killer and former psychiatrist, in order to apprehend another serial killer who has been claiming female victims.');
INSERT INTO MOVIE VALUES(21,'HANNIBAL','ENGLISH',2001,'UNIVERSAL PICTURES',18,54.0,750.0,87,'Dr Hannibal Lecter, who was arrested for cannibalism, now lives at an unknown location under a new identity. One of the victims, Mason Verger, makes an elaborate plan to find him and avenge himself.');

INSERT INTO DIRECTOR VALUES(1,'SAM RAIMI','M');
INSERT INTO DIRECTOR VALUES(2,'TAIKA WAITITI','F');
INSERT INTO DIRECTOR VALUES(3,'ROBERT ZEMECKIS','M');
INSERT INTO DIRECTOR VALUES(4,'JAMES WAN','M');
INSERT INTO DIRECTOR VALUES(5,'GEORGE LUCAS','M');
INSERT INTO DIRECTOR VALUES(6,'TIM BURTON','M');
INSERT INTO DIRECTOR VALUES(7,'JAMES CAMERON','M');
INSERT INTO DIRECTOR VALUES(8,'VALDIMAR JOHANNESON','M');
INSERT INTO DIRECTOR VALUES(9,'JEFF FOULER','M');
INSERT INTO DIRECTOR VALUES(10,'TIM BURTON','M');
INSERT INTO DIRECTOR VALUES(11,'DAVID FINCHER','M');
INSERT INTO DIRECTOR VALUES(12,'CHRISTOPHER NOLAN','M');
INSERT INTO DIRECTOR VALUES(13,'MARTIN SCORSESE','M');
INSERT INTO DIRECTOR VALUES(14,'M NIGHT SHYAMALAN','M');
INSERT INTO DIRECTOR VALUES(15,'FRANK DARABONT','M');
INSERT INTO DIRECTOR VALUES(16,'MORTEN TYLDUM','M');
INSERT INTO DIRECTOR VALUES(17,'JONATHAN DEMME','M');
INSERT INTO DIRECTOR VALUES(18,'RIDDLEY SCOTT','M');

INSERT INTO ACTOR VALUES(1,'BENEDICT CUMBERBATCH','M',9.2);
INSERT INTO ACTOR VALUES(2,'ELIZABETH OLSEN','F',9.4);
INSERT INTO ACTOR VALUES(3,'NATALIE PORTMAN','F',9.0);
INSERT INTO ACTOR VALUES(4,'CHRIS HEMSWORTH','M',9.2);
INSERT INTO ACTOR VALUES(5,'CHRIS PRATT','M',8.6);
INSERT INTO ACTOR VALUES(6,'TOM HANKS','M',9.1);
INSERT INTO ACTOR VALUES(7,'JASON MOMOA','M',9.2);
INSERT INTO ACTOR VALUES(8,'AMBER HEARD','F',9.8);
INSERT INTO ACTOR VALUES(9,'MARK HAMILL','M',8.8);
INSERT INTO ACTOR VALUES(10,'HARISSON FORD','M',9.0);
INSERT INTO ACTOR VALUES(11,'JOHNNY DEPP','M',9.3);
INSERT INTO ACTOR VALUES(12,'DEEP ROY','M',8.5);
INSERT INTO ACTOR VALUES(13,'SAM WORTHINGTON','M',8.7);
INSERT INTO ACTOR VALUES(14,'NOOMI RAPACE','F',7.5);
INSERT INTO ACTOR VALUES(15,'INGVAR SIGGURDSON','M',8.0);
INSERT INTO ACTOR VALUES(16,'BEN SCHWARTZ','M',9.6);
INSERT INTO ACTOR VALUES(17,'JAMES MARTEL','M',8.8);
INSERT INTO ACTOR VALUES(18,'ALEC BALDWIN','M',8.9);
INSERT INTO ACTOR VALUES(19,'GEENA DAVIS','F',9.0);
INSERT INTO ACTOR VALUES(20,'MORGAN FREEMAN','M',9.9);
INSERT INTO ACTOR VALUES(21,'BRADD PITT','M',9.2);
INSERT INTO ACTOR VALUES(22,'GUY PIERCE','M',9.3);
INSERT INTO ACTOR VALUES(23,'CARRIE ANNE MOSS','F',9.0);
INSERT INTO ACTOR VALUES(24,'LEONARDO DICAPRIO','M',9.9);
INSERT INTO ACTOR VALUES(25,'EMILY MORTIMER','F',9.2);
INSERT INTO ACTOR VALUES(26,'MARK RUFFALO','M',9.5);
INSERT INTO ACTOR VALUES(27,'BRUCE WILLIS','M',8.8);
INSERT INTO ACTOR VALUES(28,'TONI COLLETTE','F',9.1);
INSERT INTO ACTOR VALUES(29,'JOSEPH GORDON LEVITT','M',9.2);
INSERT INTO ACTOR VALUES(30,'TIM ROBBINS','M',9.4);
INSERT INTO ACTOR VALUES(31,'MATT DAMON','M',9.1);
INSERT INTO ACTOR VALUES(32,'KEIRA KNIGHTLY','F',9.4);
INSERT INTO ACTOR VALUES(33,'ANTHONY HOPKINS','M',9.5);
INSERT INTO ACTOR VALUES(34,'JODIE FOSTER','F',9.0);
INSERT INTO ACTOR VALUES(35,'JULIANNE MOORE','F',8.5);

INSERT INTO MOVIE_CAST VALUES(1,1,'STEPHEN STRANGE');
INSERT INTO MOVIE_CAST VALUES(2,1,'WANDA MAXIMOFF');
INSERT INTO MOVIE_CAST VALUES(3,2,'JANE FOSTER'); 
INSERT INTO MOVIE_CAST VALUES(4,2,'THOR');
INSERT INTO MOVIE_CAST VALUES(5,2,'PETER QUILL');
INSERT INTO MOVIE_CAST VALUES(6,3,'GEPPETTO');
INSERT INTO MOVIE_CAST VALUES(7,4,'ARTHUR');
INSERT INTO MOVIE_CAST VALUES(8,4,'MERA');
INSERT INTO MOVIE_CAST VALUES(9,5,'LUKE SKYWALKER');
INSERT INTO MOVIE_CAST VALUES(10,5,'HAN SOLO');
INSERT INTO MOVIE_CAST VALUES(11,6,'WILLY WONKA');
INSERT INTO MOVIE_CAST VALUES(12,6,'OOMPA LOOMPA');
INSERT INTO MOVIE_CAST VALUES(13,7,'JAKE SULLY');
INSERT INTO MOVIE_CAST VALUES(14,8,'MARIA');
INSERT INTO MOVIE_CAST VALUES(15,8,'MAN ON TV');
INSERT INTO MOVIE_CAST VALUES(16,9,'SONIC');
INSERT INTO MOVIE_CAST VALUES(17,9,'TOM');
INSERT INTO MOVIE_CAST VALUES(18,15,'ADAM');
INSERT INTO MOVIE_CAST VALUES(19,15,'BARBARA');
INSERT INTO MOVIE_CAST VALUES(20,11,'SOMERSET');
INSERT INTO MOVIE_CAST VALUES(21,11,'MILLS');
INSERT INTO MOVIE_CAST VALUES(22,12,'LEONARD');
INSERT INTO MOVIE_CAST VALUES(23,12,'NATALIE');
INSERT INTO MOVIE_CAST VALUES(24,13,'TEDDY DANIELS');
INSERT INTO MOVIE_CAST VALUES(25,13,'CHUCK AULE');
INSERT INTO MOVIE_CAST VALUES(26,13,'RACHEL 1');
INSERT INTO MOVIE_CAST VALUES(27,14,'MALCOM CROWE');
INSERT INTO MOVIE_CAST VALUES(28,14,'LYNN SYER');
INSERT INTO MOVIE_CAST VALUES(29,16,'ARTHUR');
INSERT INTO MOVIE_CAST VALUES(24,16,'COBB');
INSERT INTO MOVIE_CAST VALUES(20,17,'REDDING');
INSERT INTO MOVIE_CAST VALUES(30,17,'ANDY DUFRESNE');
INSERT INTO MOVIE_CAST VALUES(24,18,'BILLY');
INSERT INTO MOVIE_CAST VALUES(31,18,'COLIN');
INSERT INTO MOVIE_CAST VALUES(1,19,'ALAN TURING');
INSERT INTO MOVIE_CAST VALUES(32,19,'JOAN CLARKE');
INSERT INTO MOVIE_CAST VALUES(33,20,'HANNIBAL LECTER');
INSERT INTO MOVIE_CAST VALUES(34,20,'CLARICE STARLING');
INSERT INTO MOVIE_CAST VALUES(33,21,'HANNIVAL LECTER');
INSERT INTO MOVIE_CAST VALUES(35,21,'CLARICE STARLING');

INSERT INTO GENRE VALUES(1,'ACTION');
INSERT INTO GENRE VALUES(2,'ADVENTURE');
INSERT INTO GENRE VALUES(3,'FANTASY');
INSERT INTO GENRE VALUES(4,'SCIENCE FICTION');
INSERT INTO GENRE VALUES(5,'FAMILY');
INSERT INTO GENRE VALUES(6,'HORROR');
INSERT INTO GENRE VALUES(7,'CRIME');
INSERT INTO GENRE VALUES(8,'MYSTERY');
INSERT INTO GENRE VALUES(9,'THRILLER');
INSERT INTO GENRE VALUES(10,'COMEDY');
INSERT INTO GENRE VALUES(11,'DRAMA');
INSERT INTO GENRE VALUES(12,'WAR');

INSERT INTO GENRE_TYPE VALUES(1,1);
INSERT INTO GENRE_TYPE VALUES(2,1);
INSERT INTO GENRE_TYPE VALUES(1,2);
INSERT INTO GENRE_TYPE VALUES(2,2);
INSERT INTO GENRE_TYPE VALUES(3,3);
INSERT INTO GENRE_TYPE VALUES(2,4);
INSERT INTO GENRE_TYPE VALUES(1,4);
INSERT INTO GENRE_TYPE VALUES(4,5);
INSERT INTO GENRE_TYPE VALUES(3,6);
INSERT INTO GENRE_TYPE VALUES(5,6);
INSERT INTO GENRE_TYPE VALUES(1,7);
INSERT INTO GENRE_TYPE VALUES(4,7);
INSERT INTO GENRE_TYPE VALUES(3,8);
INSERT INTO GENRE_TYPE VALUES(6,8);
INSERT INTO GENRE_TYPE VALUES(2,9);
INSERT INTO GENRE_TYPE VALUES(3,9);
INSERT INTO GENRE_TYPE VALUES(7,11);
INSERT INTO GENRE_TYPE VALUES(8,11);
INSERT INTO GENRE_TYPE VALUES(8,12);
INSERT INTO GENRE_TYPE VALUES(9,12);
INSERT INTO GENRE_TYPE VALUES(8,13);
INSERT INTO GENRE_TYPE VALUES(9,13);
INSERT INTO GENRE_TYPE VALUES(6,14);
INSERT INTO GENRE_TYPE VALUES(9,14);
INSERT INTO GENRE_TYPE VALUES(3,15);
INSERT INTO GENRE_TYPE VALUES(10,15);
INSERT INTO GENRE_TYPE VALUES(1,16);
INSERT INTO GENRE_TYPE VALUES(4,16);
INSERT INTO GENRE_TYPE VALUES(7,17);
INSERT INTO GENRE_TYPE VALUES(11,17);
INSERT INTO GENRE_TYPE VALUES(7,18);
INSERT INTO GENRE_TYPE VALUES(11,18);
INSERT INTO GENRE_TYPE VALUES(11,19);
INSERT INTO GENRE_TYPE VALUES(12,19);
INSERT INTO GENRE_TYPE VALUES(6,20);
INSERT INTO GENRE_TYPE VALUES(9,20);
INSERT INTO GENRE_TYPE VALUES(7,21);
INSERT INTO GENRE_TYPE VALUES(9,21);

ALTER TABLE MOVIE ADD RATING FLOAT(2);

UPDATE MOVIE SET RATING=7.5 WHERE MOVIE_ID=1;
UPDATE MOVIE SET RATING=7.5 WHERE MOVIE_ID=3;
UPDATE MOVIE SET RATING=6.8 WHERE MOVIE_ID=4;
UPDATE MOVIE SET RATING=8.6 WHERE MOVIE_ID=5;
UPDATE MOVIE SET RATING=6.7 WHERE MOVIE_ID=6;
UPDATE MOVIE SET RATING=7.8 WHERE MOVIE_ID=7;
UPDATE MOVIE SET RATING=6.3 WHERE MOVIE_ID=8;
UPDATE MOVIE SET RATING=6.5 WHERE MOVIE_ID=9;
UPDATE MOVIE SET RATING=8.6 WHERE MOVIE_ID=11;
UPDATE MOVIE SET RATING=8.4 WHERE MOVIE_ID=12;
UPDATE MOVIE SET RATING=8.2 WHERE MOVIE_ID=13;
UPDATE MOVIE SET RATING=8.2 WHERE MOVIE_ID=14;
UPDATE MOVIE SET RATING=7.5 WHERE MOVIE_ID=15;
UPDATE MOVIE SET RATING=7.6 WHERE MOVIE_ID=16;
UPDATE MOVIE SET RATING=9.3 WHERE MOVIE_ID=17;
UPDATE MOVIE SET RATING=8.5 WHERE MOVIE_ID=18;
UPDATE MOVIE SET RATING=8.0 WHERE MOVIE_ID=19;
UPDATE MOVIE SET RATING=8.6 WHERE MOVIE_ID=20;
UPDATE MOVIE SET RATING=8.5 WHERE MOVIE_ID=21;

ALTER TABLE MOVIE
ADD FOREIGN KEY (DIRECTOR_ID)
REFERENCES DIRECTOR(DIRECTOR_ID);

ALTER TABLE MOVIE_CAST 
ADD FOREIGN KEY (MOVIE_ID)
REFERENCES MOVIE(MOVIE_ID);

ALTER TABLE MOVIE_CAST
ADD FOREIGN KEY (ACTOR_ID)
REFERENCES ACTOR(ACTOR_ID);

ALTER TABLE RENTAL
ADD FOREIGN KEY (MEMBER_ID)
REFERENCES MEMBER(MEMBER_ID);

ALTER TABLE RENTAL
ADD FOREIGN KEY (MOVIE_ID)
REFERENCES MOVIE(MOVIE_ID);

ALTER TABLE BUY 
ADD FOREIGN KEY (MOVIE_ID)
REFERENCES MOVIE(MOVIE_ID);

ALTER TABLE BUY
ADD FOREIGN KEY (MEMBER_ID)
REFERENCES MEMBER(MEMBER_ID);

ALTER TABLE GENRE_TYPE
ADD FOREIGN KEY (GENRE_ID)
REFERENCES GENRE(GENRE_ID);

ALTER TABLE GENRE_TYPE
ADD FOREIGN KEY (MOVIE_ID)
REFERENCES MOVIE(MOVIE_ID);

UPDATE ACTOR SET ACTOR_NAME='LEE MAJDOUB' WHERE ACTOR_ID=17; 
UPDATE MOVIE_CAST SET ROLE='AGENT STONE'WHERE ACTOR_ID=17 AND MOVIE_ID=9;

CREATE TABLE MOVIE_POSTER
(
    MOVIE_ID INT,
    URL VARCHAR(200)
);

ALTER TABLE MOVIE_POSTER
ADD FOREIGN KEY (MOVIE_ID)
REFERENCES MOVIE(MOVIE_ID);

INSERT INTO MOVIE_POSTER VALUES(1,'https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(2,'https://m.media-amazon.com/images/M/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(3,'https://m.media-amazon.com/images/M/MV5BODU3NzY0MjgtMDNhMi00MzIzLTllZDAtZDczOTNjZjljYmFmXkEyXkFqcGdeQWxiaWFtb250._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(4,'https://m.media-amazon.com/images/M/MV5BMjE2MDg1OTg5NF5BMl5BanBnXkFtZTgwMTIwMTg0NjM@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(5,'https://m.media-amazon.com/images/M/MV5BNzg4MjQxNTQtZmI5My00YjMwLWJlMjUtMmJlY2U2ZWFlNzY1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1000_.jpg');
INSERT INTO MOVIE_POSTER VALUES(6,'https://m.media-amazon.com/images/M/MV5BNjcxMjg1Njg2NF5BMl5BanBnXkFtZTcwMjQ4NzMzMw@@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(7,'https://m.media-amazon.com/images/M/MV5BZDA0OGQxNTItMDZkMC00N2UyLTg3MzMtYTJmNjg3Nzk5MzRiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(8,'https://m.media-amazon.com/images/M/MV5BNzYzZTI2YmQtYmZlOS00NDI0LTg5MTktODJkNzc2Yzg0ZmMxXkEyXkFqcGdeQXVyNTQwOTY1MTg@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(9,'https://m.media-amazon.com/images/M/MV5BNzU1ZjllYjAtNDlhYi00ZWZkLWI3ODAtNjU1NzQ1MGJjN2FiXkEyXkFqcGdeQVRoaXJkUGFydHlJbmdlc3Rpb25Xb3JrZmxvdw@@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(11,'https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_FMjpg_UX1000_.jpg');
INSERT INTO MOVIE_POSTER VALUES(12,'https://m.media-amazon.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_FMjpg_UX1000_.jpg');
INSERT INTO MOVIE_POSTER VALUES(13,'https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(14,'https://m.media-amazon.com/images/M/MV5BMWM4NTFhYjctNzUyNi00NGMwLTk3NTYtMDIyNTZmMzRlYmQyXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO MOVIE_POSTER VALUES(15,'https://m.media-amazon.com/images/M/MV5BZDdmNjBlYTctNWU0MC00ODQxLWEzNDQtZGY1NmRhYjNmNDczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_FMjpg_UX1000_.jpg');
INSERT INTO MOVIE_POSTER VALUES(16,'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_FMjpg_UX1000_.jpg');
INSERT INTO MOVIE_POSTER VALUES(17,'https://m.media-amazon.com/images/M/MV5BNTYxOTYyMzE3NV5BMl5BanBnXkFtZTcwOTMxNDY3Mw@@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(18,'https://m.media-amazon.com/images/M/MV5BZjdiMThhY2UtYzkxZC00NDQ4LTlhZTMtMGY5MjgxYzk3MjE1XkEyXkFqcGdeQW1pYnJ5YW50._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(19,'https://m.media-amazon.com/images/M/MV5BOTgwMzFiMWYtZDhlNS00ODNkLWJiODAtZDVhNzgyNzJhYjQ4L2ltYWdlXkEyXkFqcGdeQXVyNzEzOTYxNTQ@._V1_FMjpg_UX1000_.jpg');
INSERT INTO MOVIE_POSTER VALUES(20,'https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg');
INSERT INTO MOVIE_POSTER VALUES(21,'https://image.tmdb.org/t/p/w500/v5wAZwRqpGWmyAaaJ8BBHYuNXnj.jpg');

CREATE TABLE DIRECTOR_PICTURE
(
    DIRECTOR_ID INT PRIMARY KEY,
    URL VARCHAR(200)
);

ALTER TABLE DIRECTOR_PICTURE 
ADD FOREIGN KEY (DIRECTOR_ID)
REFERENCES DIRECTOR(DIRECTOR_ID);

INSERT INTO DIRECTOR_PICTURE VALUES(1,'https://m.media-amazon.com/images/M/MV5BODQ0NjI0NzkzMV5BMl5BanBnXkFtZTYwMDc0ODk1._V1_UY1200_CR120,0,630,1200_AL_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(2,'https://m.media-amazon.com/images/M/MV5BMzk4MDIzNjcwNV5BMl5BanBnXkFtZTgwMTIyMjgwNDI@._V1_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(3,'https://m.media-amazon.com/images/M/MV5BMTgyMTMzMDUyNl5BMl5BanBnXkFtZTcwODA0ODMyMw@@._V1_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(4,'https://m.media-amazon.com/images/M/MV5BMTY5NzExMTQ5N15BMl5BanBnXkFtZTcwNjY1NDQzOQ@@._V1_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(5,'https://m.media-amazon.com/images/M/MV5BMTA0Mjc0NzExNzBeQTJeQWpwZ15BbWU3MDEzMzQ3MDI@._V1_UY264_CR0,0,178,264_AL_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(6,'https://m.media-amazon.com/images/M/MV5BOGJmZDUwMzktYmY2MS00M2IwLWIyNmQtYjJhYjc4NjIyZWM1XkEyXkFqcGdeQXVyMTE1MTYxNDAw._V1_UY1200_CR90,0,630,1200_AL_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(7,'https://m.media-amazon.com/images/M/MV5BMjI0MjMzOTg2MF5BMl5BanBnXkFtZTcwMTM3NjQxMw@@._V1_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(8,'https://m.media-amazon.com/images/M/MV5BMjY0ODVkOTAtNDFkNS00ZGQxLWFhODAtZmRmMjkxYmYyYjJhXkEyXkFqcGdeQXVyMTc4MzI2NQ@@._V1_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(9,'https://m.media-amazon.com/images/M/MV5BZDU0OGEyOTMtYzMwZS00ZmVkLTk5N2QtNGFkNzAxZDIxMTcwXkEyXkFqcGdeQXVyNTkwNjEyNw@@._V1_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(11,'https://m.media-amazon.com/images/M/MV5BMTc1NDkwMTQ2MF5BMl5BanBnXkFtZTcwMzY0ODkyMg@@._V1_UY1200_CR76,0,630,1200_AL_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(12,'https://m.media-amazon.com/images/M/MV5BNjE3NDQyOTYyMV5BMl5BanBnXkFtZTcwODcyODU2Mw@@._V1_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(13,'https://image.tmdb.org/t/p/w500/9U9Y5GQuWX3EZy39B8nkk4NY01S.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(14,'https://m.media-amazon.com/images/M/MV5BMTczMTA5OTMxMl5BMl5BanBnXkFtZTcwMDA4NDg1Mw@@._V1_UY1200_CR585,0,630,1200_AL_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(15,'https://m.media-amazon.com/images/M/MV5BNjk0MTkxNzQwOF5BMl5BanBnXkFtZTcwODM5OTMwNA@@._V1_UY1200_CR168,0,630,1200_AL_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(16,'https://m.media-amazon.com/images/M/MV5BMTgyNDM1ODkzMV5BMl5BanBnXkFtZTcwNTMxMjg0Nw@@._V1_UY1200_CR84,0,630,1200_AL_.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(17,'https://assets.vogue.com/photos/5900e788aa97e92b9546b199/master/w_2560%2Cc_limit/00-lede-demme.jpg');
INSERT INTO DIRECTOR_PICTURE VALUES(18,'https://www.indiewire.com/wp-content/uploads/2021/11/Screen-Shot-2021-11-15-at-8.46.44-AM.png');

CREATE TABLE ACTOR_PICTURE 
(
    ACTOR_ID INT PRIMARY KEY,
    URL VARCHAR(200)
);

ALTER TABLE ACTOR_PICTURE 
ADD FOREIGN KEY (ACTOR_ID)
REFERENCES ACTOR(ACTOR_ID);

INSERT INTO ACTOR_PICTURE VALUES(1,'https://m.media-amazon.com/images/M/MV5BMjE0MDkzMDQwOF5BMl5BanBnXkFtZTgwOTE1Mjg1MzE@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(2,'https://m.media-amazon.com/images/M/MV5BMjEzMjA0ODk1OF5BMl5BanBnXkFtZTcwMTA4ODM3OQ@@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(3,'https://m.media-amazon.com/images/M/MV5BYzU0ZGRhZWItMGJlNy00YzlkLWIzOWYtNDA2NzlhMDg3YjMwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(4,'https://m.media-amazon.com/images/M/MV5BOTU2MTI0NTIyNV5BMl5BanBnXkFtZTcwMTA4Nzc3OA@@._V1_UY1200_CR85,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(5,'https://m.media-amazon.com/images/M/MV5BNDU1NjU0MzA5NF5BMl5BanBnXkFtZTgwNTg5OTY2MjI@._V1_UY1200_CR129,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(6,'https://m.media-amazon.com/images/M/MV5BMTQ2MjMwNDA3Nl5BMl5BanBnXkFtZTcwMTA2NDY3NQ@@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(7,'https://m.media-amazon.com/images/M/MV5BODJlNWQ4ZjUtYjRhNi00NGQ1LWE3YTItYjRmZGI3YzI4YTEyXkEyXkFqcGdeQXVyMTA2MDIzMDE5._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(8,'https://upload.wikimedia.org/wikipedia/commons/9/9a/Amber_Heard_by_Gage_Skidmore.jpg');
INSERT INTO ACTOR_PICTURE VALUES(9,'https://m.media-amazon.com/images/M/MV5BOGY2MjI5MDQtOThmMC00ZGIwLWFmYjgtYWU4MzcxOGEwMGVkXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_UY1200_CR753,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(10,'https://m.media-amazon.com/images/M/MV5BMTY4Mjg0NjIxOV5BMl5BanBnXkFtZTcwMTM2NTI3MQ@@._V1_UY1200_CR88,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(11,'https://image.tmdb.org/t/p/w500/ilPBHd3r3ahlipNQtjr4E3G04jJ.jpg');
INSERT INTO ACTOR_PICTURE VALUES(12,'https://m.media-amazon.com/images/M/MV5BMTczNjk4OTY5MV5BMl5BanBnXkFtZTcwOTcxMjgyMQ@@._V1_UY1200_CR165,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(13,'https://m.media-amazon.com/images/M/MV5BMTc5NTMyMjIwMV5BMl5BanBnXkFtZTcwNTMyNjYwMw@@._V1_UY1200_CR112,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(14,'https://m.media-amazon.com/images/M/MV5BMTUyNzg3NDkyN15BMl5BanBnXkFtZTgwOTg2NjA2ODE@._V1_UY1200_CR133,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(15,'https://m.media-amazon.com/images/M/MV5BMDliM2Y0ZGItMmUzYi00OTgyLTgyNWMtNmQ5NDAwMzk2M2FjXkEyXkFqcGdeQXVyNDg2MzE2MTU@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(16,'https://m.media-amazon.com/images/M/MV5BYzlkZDE3NjktNDNjOC00YWFjLTg3NTAtMWVmZDlmYmY2NGI3XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY1200_CR85,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(17,'https://m.media-amazon.com/images/M/MV5BNzk4NTMwZDMtNzQ3Ny00ZjFmLTk3OTAtZTI4M2U2MmNhMWFhXkEyXkFqcGdeQXVyMjQwNTc1MTU@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(18,'https://m.media-amazon.com/images/M/MV5BMjE1Njg4MzY3M15BMl5BanBnXkFtZTcwNTY3MjE3NA@@._V1_UY1200_CR85,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(19,'https://image.tmdb.org/t/p/w500/bx9ufx5cS7FfHDFFeT71syBh428.jpg');
INSERT INTO ACTOR_PICTURE VALUES(20,'https://m.media-amazon.com/images/M/MV5BMTc0MDMyMzI2OF5BMl5BanBnXkFtZTcwMzM2OTk1MQ@@._V1_UY1200_CR85,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(21,'https://m.media-amazon.com/images/M/MV5BMjA1MjE2MTQ2MV5BMl5BanBnXkFtZTcwMjE5MDY0Nw@@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(22,'https://m.media-amazon.com/images/M/MV5BMTgyNzc2NzY3Nl5BMl5BanBnXkFtZTgwNTMzMzAwMjE@._V1_UY1200_CR85,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(23,'https://m.media-amazon.com/images/M/MV5BMTYxMjgwNzEwOF5BMl5BanBnXkFtZTcwNTQ0NzI5Ng@@._V1_UY1200_CR138,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(24,'https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_UY1200_CR130,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(25,'https://m.media-amazon.com/images/M/MV5BMTM2NjIzMDg3NV5BMl5BanBnXkFtZTcwNDQ5MzczNA@@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(26,'https://image.tmdb.org/t/p/w500/z3dvKqMNDQWk3QLxzumloQVR0pv.jpg');
INSERT INTO ACTOR_PICTURE VALUES(27,'https://image.tmdb.org/t/p/w500/caX3KtMU42EP3VLRFFBwqIIrch5.jpg');
INSERT INTO ACTOR_PICTURE VALUES(28,'https://image.tmdb.org/t/p/w500/lzXRh16qe4HHeBN6tMyw0DHvaMn.jpg');
INSERT INTO ACTOR_PICTURE VALUES(29,'https://m.media-amazon.com/images/M/MV5BMTY3NTk0NDI3Ml5BMl5BanBnXkFtZTgwNDA3NjY0MjE@._V1_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(30,'https://m.media-amazon.com/images/M/MV5BMTI1OTYxNzAxOF5BMl5BanBnXkFtZTYwNTE5ODI4._V1_UY1200_CR151,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(31,'https://m.media-amazon.com/images/M/MV5BMTM0NzYzNDgxMl5BMl5BanBnXkFtZTcwMDg2MTMyMw@@._V1_UY1200_CR132,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(32,'https://m.media-amazon.com/images/M/MV5BMTYwNDM0NDA3M15BMl5BanBnXkFtZTcwNTkzMjQ3OA@@._V1_UY1200_CR112,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(33,'https://m.media-amazon.com/images/M/MV5BMTg5ODk1NTc5Ml5BMl5BanBnXkFtZTYwMjAwOTI4._V1_UY1200_CR115,0,630,1200_AL_.jpg');
INSERT INTO ACTOR_PICTURE VALUES(34,'https://image.tmdb.org/t/p/w500/accqyi0hQzsUU1pYsOrWo2Qh9TV.jpg');
INSERT INTO ACTOR_PICTURE VALUES(35,'https://m.media-amazon.com/images/M/MV5BMTM5NDI1MjE2Ml5BMl5BanBnXkFtZTgwNDE0Nzk0MDE@._V1_UY1200_CR117,0,630,1200_AL_.jpg');

SELECT * FROM ACTOR_PICTURE;

