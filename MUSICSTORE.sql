CREATE DATABASE MUSICSTORE
USE MUSICSTORE

CREATE TABLE ARTIST
(
ARTIST_NAME VARCHAR(15) NOT NULL,
GENRE_NAME VARCHAR(12),
SEX CHAR(1),
COUNTRY VARCHAR(12)NOT NULL,
ARTIST_ID INT NOT NULL,
PRIMARY KEY(ARTIST_ID),
EMPLOYEES_ID INT NOT NULL
)

ALTER TABLE ARTIST 
ADD FOREIGN KEY (EMPLOYEES_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID)

ALTER TABLE ARTIST
ADD FOREIGN KEY(GENRE_NAME) REFERENCES GENRE(GENRE_NAME)

CREATE TABLE SONG
(
PRICE FLOAT NOT NULL,
TITLE VARCHAR(15) NOT NULL,
YEAR_RELEASED INT NOT NULL,
SONG_ID VARCHAR(12) NOT NULL,
SONG_GENRE VARCHAR(12),
DURATION VARCHAR(5) NOT NULL,
ARTIST_ID INT NOT NULL,
ALBUM_ID VARCHAR(12),
PRIMARY KEY (SONG_ID),
ARTIST_NAME VARCHAR(15) NOT NULL 
FOREIGN KEY(ARTIST_ID) REFERENCES ARTIST(ARTIST_ID)
)

ALTER TABLE SONG
ADD FOREIGN KEY(SONG_GENRE) REFERENCES GENRE(GENRE_NAME)


CREATE TABLE ALBUM
(
ALBUM_NAME VARCHAR(15) NOT NULL,
ARTIST_NAME VARCHAR(15) NOT NULL,
ALBUM_ID VARCHAR(12) NOT NULL,
PRIMARY KEY(ALBUM_ID),
YEAR_RELEASED INT NOT NULL,
ID_OF_ARTIST INT NOT NULL,
FOREIGN KEY (ID_OF_ARTIST) REFERENCES ARTIST (ARTIST_ID),
GENRE_NAME VARCHAR(12),
ALBUM_PRICE VARCHAR(5) NOT NULL,
SONG_IDs VARCHAR(15), 
FOREIGN KEY(GENRE_NAME) REFERENCES GENRE(GENRE_NAME)
)

CREATE TABLE GENRE
(
GENRE_NAME VARCHAR(12) NOT NULL,
PRIMARY KEY(GENRE_NAME),
SONG_IDS VARCHAR(25),
ALBUM_IDS VARCHAR(12),
)


CREATE TABLE CUSTOMER
(
COUNTRY VARCHAR(12)NOT NULL,
CUSTOMER_ID INT NOT NULL,
PRIMARY KEY (CUSTOMER_ID),
GENDER CHAR(1) NOT NULL,
BIRTH_DATE DATE,
EMAIL VARCHAR(25) NOT NULL,
CUSTOMER_USERNAME VARCHAR(15) NOT NULL,
SONG_ID VARCHAR(12),
ALBUM_ID VARCHAR(12),
FAVOURITE_ARTIST VARCHAR(15),
FAVOURITE_GENRE VARCHAR(12),
FOREIGN KEY (FAVOURITE_GENRE) REFERENCES GENRE(GENRE_NAME)
)


CREATE TABLE EMPLOYEE
(
EMPLOYEE_ID INT NOT NULL,
PRIMARY KEY(EMPLOYEE_ID),
EMPLOYEE_NAME VARCHAR(20) NOT NULL,
SEX CHAR(1) NOT NULL,
ARTIST_REGISTERED INT,
)


INSERT INTO SONG 
VALUES('4.99','love me','2020','1','blues','5:30','763476235','222','lana del blue'),
('2.99','turn it up','2018','2','hip hop','2:20','538872372','NULL','chris yellow'),
('2.30','cocaine','2018','3','hip hop','2:55','538872372','NULL','chris yellow'),
('5.99','heartbreak','2020','4','blues','6:10','763476235','222','lana del blue'),
('3.99','good day','2019','5','pop','4:10','837429832','NULL','justin paper'),
('3.90','home','2016','6','country','3:30','498239924','333','queen'),
('2.90','lets go','2018','7','dance','1:40','329849281','555','pitbull'),
('2.99','sunshine','2019','8','pop','3:40','837429832','NULL','justin paper'),
('6.99','miss you','2020','9','blues','5:50','763476235','222','lana del blue'),
('3.99','florida','2018','10','hip hop','2:44','538872372','NULL','chris yellow'),
('2.30','shake it up','2018','11','dance','1:50','329849281','555','pitbull'),
('2.10','lets party','2018','12','dance','1:30','329849281','555','pitbull'),
('2.20','mountains','2016','13','country','3:50','498239924','333','queen'),
('3.00','azonto','2020','14','afrobeats','3:40','872384719','111','wizkid'),
('3.50','ojuegleba','2020','15','afrobeats','5:00','872384719','111','wizkid'),
('2.10','show me','2020','16','afrobeats','4:40','872384719','111','wizkid'),
('4.10','why','2021','17','soul','6:20','165289329','444','melindiana'),
('5.20','dont leave','2021','18','soul','5:23','165289329','444','melindiana'),
('4.20','save me','2017','19','soul','4:40','165289329','NULL','melinidiana'),
('20.20','10th symphony','1780','20','classical','45:00','836583722','666','mozart'),
('25','4th symphony','1770','21','classical','54:00','836583722','666','mozart'),
('22','1st symphony','1765','22','classical','48:00','387239891','777','beethoven'),
('23','2nd symphony','1780','23','classical','59:00','387239891','777','beethoven'),
('25','5th symphony','1798','24','classical','50:00','387239891','777','beethoven'),
('3','dead and gone','2005','25','rap','4:10','219138282','1515','slim shady'),
('4','on sight','2005','26','rap','3:40','219138282','1515','slim shady'),
('2.5','five bullets','2008','27','rap','2:50','984982402','NULL','fifty quids'),
('3.2','the ghetto','2011','28','rap','2:30','984982402','NULL','fifty quids'),
('4','roadmen','2016','29','grime','3:20','428731273','NULL','stormzy'),
('3.50','eastenders','2018','30','grime','2:40','428731273','NULL','stormzy'),
('5.99','night jazz','1980','31','jazz','6:20','482091900','888','miles morals'),
('6.10','day night','1980','32','jazz','4:50','482091900','888','miles morals'),
('6.30','white morning','1985','33','jazz','3:10','901173981','999','brian davis'),
('3.90','dark days','1985','34','jazz','2:20','901173981','999','brian davis'),
('5.30','lasers','2020','35','instrumental','4;20','801728731','NULL','shadows'),
('3.10','crazy moves','2019','36','instrumental','2:10','817391809','NULL','night owl'),
('7','deep blue','1970','37','rock','7:10','479209109','NULL','the speckles'),
('8','crazy sea','1975','38','rock','6:45','479209109','NULL','the speckles'),
('5.20','lets be wild','1981','39','rock','4:10','739818012','NULL','ladybirds'),
('6.10','born crazy','1985','40','heavy metal','6:50','827398231','1010','red iron'),
('7.50','hell gates','1985','41','heavy metal','7:30','827398231','1010','red iron'),
('9.10','war hogs','1965','42','heavy metal','8:20','982029230','1111','blood hands'),
('7.40','big steam','1965','43','heavy metal','6:05','982029230','1111','blood hands'),
('5.99','blurry dreams','1965','44','heavy metal','7:40','982029230','1111','blood hands'),
('6.40','gain','1990','45','soul','5:50','749802292','NULL','aretha frank'),
('4.10','daily offender','2018','46','grime','4:24','128009380','NULL','mr giggs'),
('2.20','lollipop','2019','47','hip hop','2:10','508939812','414','lil dazzy'),
('1.50','tekashi','2019','48','hip hop','1:40','508939812','1414','lil dazzy'),
('2.40','too late','2016','49','pop','3:10','901801283','NULL','selena'),
('2.10','hey there','2017','50','pop','3:25','901801283','NULL','selena'),
('5.10','raining','2009','51','pop','3:40','749209130','1212','riyamma'),
('4.30','dark weather','2009','52','pop','4:20','749209130','1212','riyamma'),
('3.10','sunny','2009','53','pop','3:50','749209130','1212','riyamma'),
('4.10','snow on me','2009','54','pop','3:20','749209130','1212','riyamma'),
('3.99','la la la','2012','55','R&B','3:10','982981092','NULL','belonce'),
('3.10','dip it','2015','56','R&B','2:10','982981092','NULL','belonce'),
('4.22','rodeo','2016','57','	R&B','3:30','759282983','1313','the weekend'),
('3.99','starboy','2016','58','R&B','3:40','759282983','1313','the weekend'),
('4.10','beauty','2016','59','R&B','3:10','759282983','1313','the weekend'),
('10','hangs','2021','60','rap','1:10','190303033','NULL','mukhlis');

UPDATE SONG
SET SONG_GENRE ='r&b'
WHERE SONG_ID ='57'


INSERT INTO ARTIST
VALUES('wizkid','afrobeats','m','nigeria','872384719','231829810'),
('chris yellow','hip hop','m','us','538872372','231829810'),
('lana del blue','blues','f','uk','763476235','231829810'),
('queen','country','g','us','498239924','231829810'),
('justin paper','pop','m','canada','837429832','297848273'),
('pitbull','dance','m','brazil','329849281','297848273'),
('melindiana','soul','f','uk','165289329','297848273'),
('mozart','classical','m','austria','836583722','297848273'),
('beethoven','rap','m','germany','387239891','297848273'),
('slim shady','rap','m','us','219138282','297848273'),
('fifty quids','grime','m','us','984982402','254726391'),
('stormzy','jazz','m','uk','428731273','297884276'),
('miles morales','jazz','m','us','482091900','297884276'),
('brian davis','instrumental','m','us','901173981','297884276'),
('shadows','instrumental','f','russia','801728731','254726391'),
('night owl','rock','m','russia','817391809','297884276'),
('the speckles','rock','g','us','479209109','297884276'),
('ladybrids','heavy metal','g','uk','739818012','297884276'),
('red iron','heavy metal','m','us','827398231','229289281'),
('blood hands','soul','g','uk','982029230','229289281'),
('aretha frank','grime','f','us','749802292','229289281'),
('mr giggs','hip hop','m','uk','128009380','229289281'),
('lil dazzy','hip hop','m','us','508939812','298234989'),
('selena','pop','f','us','901801283','254726391'),
('riyamma','pop','f','us','749209130','298234989'),
('belonce','r&b','f','us','982981092','298234989'),
('the weeekend','r&b','m','canada','759282983','298234989'),
('mukhlis','rap','m','nigeria','190303033','298234989');


INSERT INTO ALBUM
VALUES('vibes','wizkid','111','2020','872384719','afrobeats','20','14-15-16'),
('my melancholy','lana del blue','222','2020','763476235','blues','15','1-4-9'),
('bohemia','queen','333','2016','498239924','country','5','6-13'),
('life','melindiana','444','2021','165289329','soul','8','17-18'),
('dance','pitbull','555','2019','329849281','dance','5','7-11-12'),
('best of mozart','mozart','666','2015','836583722','classical','35','20-21'),
('beethovens','beethoven','777','2015','387239891','classical','50','22-23-24'),
('sweet jazz','miles morals','888','1980','482091900','jazz','10','31-32'),
('short night','brian davis','999','1985','901173981','jazz','9','33-34'),
('clashes','red iron','1010','1985','827398231','heavy metal','15','40-41'),
('rip it off','blood hands','1111','1965','982029230','heavy metal','20','42-43-44'),
('changes','riyamma','1212','2009','749209130','pop','15','51-52-53-54'),
('famous','the weekend','1313','2016','759282983','R&B','10','57-58-59'),
('colors','lil dazzy','1414','2019','508939812','hip hop','3','47-48'),
('never scared','slim shady','1515','2005','219138282','rap','6','25-26');

INSERT INTO GENRE
VALUES('blues','1-4-9','22'),
('dance','7-11-12-','55'),
('afrobeats','14-15-16','11'),
('country','6-13-','33'),
('pop','5-8-49-50-51-52-53-54','1212-1313'),
('hip hop','2-3-10-47-48','1414'),
('soul','17-18-19-45','44'),
('rap','25-26-27-28-60','1515'),
('instrumental','35-36','NULL'),
('jazz','31-32-33-34','888-999'),
('rock','37-38-39','NULL'),
('heavy metal','40-41-42-43-44','1010-1111'),
('classical','20-21-22-23-24','666-777'),
('grime','29-30-46','NULL'),
('r&b','55-56-57-58-59','1313');



INSERT INTO CUSTOMER
VALUES
('SPAIN','563847292','m','2003-09-03','harrynasty@gmail.com','nastyh','3-7-10-11','NULL','pitbull','dance'),
('BRAZIL','765982732','f','2004-12-19','baddieb@hotmail.com','bbaddie','7-9-11-12-','NULL','pitbull','dance'),
('US','245228739','f','1998-04-05','angelie@gmail.com','angell','NULL','222-444-555','melindiana','soul'),
('UK','839830933','m','2000-12-11','jamesmay@gmail.com','james10','5-6-13-15','NULL','queen','country'),
('US','978493220','f','1998-09-29','jessicad@gmail.com','jessica08','5-8-17-','111-222-','lana del blue','blues'),
('DUBAI','562817391','m','1996-02-25','ziyadhero@gmail.com','zeyad007 ','NULL','111-333-','pitbull','dance'),
('UK','789427827','m','1992-09-04','mutazd00m@yahoo.com','moatzz','2-3-10-11-','111-444-','wizkid','afrobeats'),
('UK','518377381','f','1999-10-19','alexielondn@gmail.com','alexielohan','NULL','222-333','lana del blue','blues'),
('DUBAI','237980287','m','2002-04-15','danielric@yahoo.com','danielrich','2-3-10','NULL','chris yellow','hip hop'),
('CANADA','329898923','f','1999-05-16','maamoon@hotmail.com',  'maymonah', '5-8-', '222' ,'justin paper','pop'),
('US','873243873','m','2001-06-24','richardoo@yahoo.com','riccardo', '3-7-11-14', 'NULL', 'pitbull' ,'dance'),
('US','289593938','f','2004-10-29','christabelle@gmail.com','christie','1-4-9-19-20','NULL','lana del blue','blues'),
('UK','982498223','m','1996-08-22','hammond9@gmail.com', 'hammondy', '2-3-', '333-', 'chris yellow','hip hop'),
('UK','149823985', 'm','2000-03-20', 'darcym@gmail.com', 'micheald', '6-13-14-', 'NULL', 'queen','country'),
('US','984923029','m','1997-03-27','helenobien@gmail.com', 'helenlove', '5', '222-444', 'melindiana','soul'),
('UK','132780034','m','2003-05-16','hagrids@yahoo.com', 'hagridssir', '2-3-6-13-', 'NULL', 'queen','country'),
('US','932784834','f','1999-05-15','charlotee@yahoo.com', 'charlotte01', 'NULL', '111-222-333', 'lana del blue','blues'),
('UK','549238023','m','1970-09-19','liamnes@hotmail.com', 'liamnesson', '39', '1111', 'ladybirds','heavy metal'),
('US', '872349823','m','1982-03-23','noah02@hotmail.com', 'noah02', '22', '888', 'miles morales','jazz'),
('UK','987487223','m','1995-02-27','calebb@gmail.com', 'calebb', 'NULL', '1010-888',' red iron','heavy metal'),
('US','837468723','f','1999-08-23','mia99@gmaul.com', 'mia99', '45','444','melindiana','soul'),
('GERMANY','783589834','m','1965-09-22','williamm65@yahoo.com',' wlliam65','20', '777', 'beethoven','classical'),
('CANADA','873343323','f','1965-04-20','evelyn91@gmail.com', 'evelyn91', '55','1212-444', 'riyamma','pop'),
('US','239892832','m','1998-07-28','benjamin98@gmail.com', 'benjamin98', '28-29', '1515', 'slim shady','rap'),
('US','498123902','f','1972-03-13','madison72@hotmail.com', 'madison72', '45', '333-444', 'aretha frank','soul'),
('SPAIN','109302938','f','2003-04-30','chloe03@gmail.com', 'chloe03', '1-4-17-56', 'NULL', 'belonce','pop'),
('US','901930913','f','1994-05-20','grace94@yahoo.com', 'grace94', '55-56', '1212', 'belonce','r&b'),
('US','102974892','m','2002-01-01','lucas2@gmail.com', 'lucas02', '57-58-59', 'NULL', 'the weekend','r&b'),
('BRAZIL','133193093','m','2001-02-02','daniel01@gmail.com', 'daniel01', 'NULL', '1313-1515', 'the weekend','r&b'),
('CANADA','829982302','f','2001-03-04','ellieo1@gmail.com', 'ellie01', '5-8-', 'NULL', 'NULL','pop'),
('RUSSIA','937923982','m','1997-04-08','levi9@yahoo.com', 'levi97', '35-36', 'NULL', 'shadows','instrumental'),
('UK','289312983','f','1997-04-30','9ora7@gmail.com', 'nora97', '45-19', '444', 'aretha frank','soul'),
('US','742829888','m','2005-06-7','mateoo5@gmail.com', 'mateo05', '47-48-51', 'NULL', 'lil dazzy','hip hop'),
('US','722938298','m','2003-09-08','samuelbig@gmail.com', 'samuel03', '46-57-58', 'NULL', 'the weekend','r&b'),
('US','723989232','m','1990-01-03','joseph0@hotmail.com', 'joseph90', 'NULL', '888-999', 'miles morales','jazz'),
('US','710820120','f','1982-09-02','aria82@hotmail.com', 'aria82', '45', '888-999', 'brian davis','jazz'),
('SPAIN','701293019','f','1998-02-20','luna98@yahoo.com', 'luna98', '56-32-33', '1313',' the weekend','r&b'),
('US','713991301','m','1969-03-30','john69@hotmail.com' ,'john69', 'NULL', '999-66', 'mozart','classical'),
('US','494739209','f','2000-05-15','emma2000@gmail.com', 'emma2000', '49-50', '222-555', 'lana del blue','blues'),
('US','723387294','m','1992-06-16','mathew@yahoo.com', 'mathew92', '39-46', '1515', 'slim shady','rap'),
('UK','874024209','f','1991-07-08','ameliaa@gmail.com','amelia91', '45', '1212',' riyamma','pop'),
('UK','992344020','m','2005-07-07','richardoo@gmail.com', 'richards05', '29-30-50','NULL', 'stormzy','grime'),
('US','598209323','m','2005-09-09','david05@gmail.com', 'david05', '25-47-48', '444', 'lil dazzy','hip hop'),
('GERMANY','579283722','f','1984-10-10','isabella84@yahoo.com', 'isabella84', '45', '666','mozart','classical'),
('US','590238772','m','1978-11-10','luke78@gmail.com', 'luke78', '37-38-39', 'NULL', 'the speckles','heavy metal'),
('UK','598239238','m','2001-10-19','skywalker01@.com' ,'skywalker001', '35', '111-1515', 'blood hands','heavy metal');


INSERT INTO EMPLOYEE
VALUES
('231829810','SOPHIE BRAXTON','F','4'),
('297848273', 'TONY BLAIR', 'M', '6'),
('254726391','MIA LATICIA', 'F','3'),
('297884276','NASIR SABRI', 'M','6'),
('298234989','APRIL LEVIGNE','F','5'),
('229289281','ADAM LEVIGNE','M','4');


SELECT *FROM SONG
SELECT *FROM GENRE
SELECT *FROM CUSTOMER
SELECT *FROM ARTIST
SELECT *FROM ALBUM
SELECT *FROM EMPLOYEE




/* PRICESS */

SELECT SONG_GENRE,PRICE,TITLE,ARTIST_NAME
FROM SONG
WHERE SONG_GENRE = 'hip hop'

SELECT SONG_GENRE, PRICE
FROM SONG
WHERE SONG_GENRE = 'CLASSICAL'


/*YEAR RELEASED   */

SELECT SONG_GENRE, YEAR_RELEASED
FROM SONG
WHERE SONG_GENRE = 'AFROBEATS'

SELECT SONG_GENRE, YEAR_RELEASED
FROM SONG
WHERE SONG_GENRE = 'JAZZ'

SELECT SONG_GENRE, YEAR_RELEASED
FROM SONG
WHERE SONG_GENRE = 'CLASSICAL'

SELECT SONG_GENRE, YEAR_RELEASED
FROM SONG
WHERE SONG_GENRE= 'RAP'

SELECT SONG_GENRE, YEAR_RELEASED
FROM SONG
WHERE SONG_GENRE = 'HEAVY METAL'

SELECT SONG_GENRE, YEAR_RELEASED
FROM SONG
WHERE SONG_GENRE= 'SOUL'

SELECT SONG_GENRE, YEAR_RELEASED
FROM SONG
WHERE SONG_GENRE = 'POP'

SELECT SONG_GENRE, YEAR_RELEASED
FROM SONG
WHERE SONG_GENRE = 'BLUES'




/*DURATION       */
SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE= 'country'


SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE = 'JAZZ'


SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE = 'HEAVY METAL'


SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE = 'ROCK'


SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE = 'R&B'


SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE = 'BLUES'


SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE = 'SOUL'



SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE = 'CLASSICAL'


SELECT SONG_GENRE, DURATION
FROM SONG
WHERE SONG_GENRE = 'POP'


SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG

SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG
WHERE SONG_GENRE = 'CLASSICAL'

SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG
WHERE SONG_GENRE = 'jazz'

SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG
WHERE SONG_GENRE = 'blues'

SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG
WHERE SONG_GENRE = 'soul'

SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG
WHERE SONG_GENRE = 'hip hop'


SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG
WHERE SONG_GENRE = 'pop'


SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG
WHERE SONG_GENRE = 'heavy metal'


SELECT AVG(PRICE) AS 'AVERAGE',MAX(PRICE) AS'MAX', MIN(PRICE) AS'MIN'
FROM SONG
WHERE SONG_GENRE = 'rock'

SELECT COUNTRY,GENDER, FAVOURITE_GENRE
FROM CUSTOMER
WHERE FAVOURITE_GENRE = 'RAP'

SELECT COUNTRY,BIRTH_DATE,GENDER,FAVOURITE_GENRE
FROM CUSTOMER
WHERE FAVOURITE_GENRE = 'CLASSICAL'

SELECT COUNTRY,GENDER,BIRTH_DATE, FAVOURITE_GENRE
FROM CUSTOMER
WHERE FAVOURITE_GENRE = 'HEAVY METAL'

SELECT COUNTRY,GENDER,BIRTH_DATE,FAVOURITE_GENRE
FROM CUSTOMER
WHERE FAVOURITE_GENRE = 'SOUL'

SELECT COUNTRY,GENDER,BIRTH_DATE,FAVOURITE_GENRE
FROM CUSTOMER
WHERE FAVOURITE_GENRE = 'BLUES'

SELECT COUNTRY,GENDER,BIRTH_DATE,FAVOURITE_GENRE
FROM CUSTOMER
WHERE FAVOURITE_GENRE = 'POP'


SELECT COUNTRY,GENDER,BIRTH_DATE
FROM CUSTOMER
WHERE FAVOURITE_GENRE = 'DANCE'

SELECT FAVOURITE_ARTIST,FAVOURITE_GENRE
FROM CUSTOMER
WHERE BIRTH_DATE LIKE '199_______' AND GENDER='M'


SELECT FAVOURITE_ARTIST,FAVOURITE_GENRE
FROM CUSTOMER
WHERE BIRTH_DATE LIKE '199_______' AND GENDER='F'

 SELECT FAVOURITE_ARTIST,FAVOURITE_GENRE
FROM CUSTOMER
WHERE BIRTH_DATE LIKE '200_______' AND GENDER='M'

 SELECT FAVOURITE_ARTIST,FAVOURITE_GENRE
FROM CUSTOMER
WHERE BIRTH_DATE LIKE '200_______' AND GENDER='F'


SELECT PRICE, COUNT(*) AS 'COUNT OF PRICE'
FROM SONG
GROUP BY PRICE
HAVING COUNT(*)>2

SELECT FAVOURITE_ARTIST, COUNT(*) AS 'NO OF TIMES THEY ARE FAVOURITED'
FROM CUSTOMER
GROUP BY FAVOURITE_ARTIST
HAVING COUNT(*)>2

SELECT ALBUM_ID, COUNT(*) AS 'TIMES LISTENED '
FROM CUSTOMER
GROUP BY ALBUM_ID
HAVING COUNT(*)>2

SELECT *FROM CUSTOMER

/*MOST LISTENED SONG*/
SELECT SONG_ID, COUNT(*) as 'TIMES LISTENED'
FROM CUSTOMER
GROUP BY SONG_ID
HAVING COUNT(*)>2

SELECT TITLE,ARTIST_NAME,SONG_GENRE,YEAR_RELEASED
FROM SONG
WHERE SONG_ID= 45

SELECT FAVOURITE_GENRE, COUNT(*) AS 'TIMES FAVOURITED'
FROM CUSTOMER
GROUP BY FAVOURITE_GENRE
HAVING COUNT(*)>2

SELECT BIRTH_DATE,COUNTRY,CUSTOMER_USERNAME 
FROM CUSTOMER
WHERE ALBUM_ID ='NULL'

SELECT BIRTH_DATE,COUNTRY,CUSTOMER_USERNAME
FROM CUSTOMER
WHERE ALBUM_ID != 'NULL'






/* CONSTRAINTSSSSSSS */

ALTER TABLE CUSTOMER
ADD CONSTRAINT AGE_CONSTRAINT1
CHECK (BIRTH_DATE < '2007-09-09');

UPDATE CUSTOMER
SET BIRTH_DATE='2008-09-23'
WHERE CUSTOMER_USERNAME = 'nastyh'	
SELECT *FROM CUSTOMER

ALTER TABLE CUSTOMER 
ADD CONSTRAINT ID_CONSTRAINT
CHECK (CUSTOMER_ID>=100000000)

UPDATE CUSTOMER
SET CUSTOMER_ID = '12345678'
WHERE CUSTOMER_USERNAME ='NASTYH'

SELECT *FROM ARTIST

ALTER TABLE SONG
ADD CONSTRAINT ID_CONSTRAINT1
CHECK (ARTIST_ID>=100000000)

UPDATE SONG
SET ARTIST_ID = '12345678'
WHERE SONG_ID ='1'

ALTER TABLE ARTIST
ADD CONSTRAINT ID_CONSTRAINT2
CHECK (ARTIST_ID>=100000000)

UPDATE ARTIST
SET ARTIST_ID = '12345678'
WHERE ARTIST_NAME ='mr giggs'


ALTER TABLE EMPLOYEE
ADD CONSTRAINT ID_CONSTRAINT3
CHECK (EMPLOYEE_ID>=100000000)

UPDATE EMPLOYEE
SET EMPLOYEE_ID = '12345678'
WHERE EMPLOYEE_NAME ='TONY BLAIR'

SELECT *FROM CUSTOMER

ALTER TABLE ARTIST 
ADD CONSTRAINT GENDER_ARTIST
CHECK (SEX='f' OR SEX='M' OR SEX='g')

UPDATE ARTIST
SET SEX ='Z'
WHERE ARTIST_NAME = 'MR GIGGS'

ALTER TABLE CUSTOMER
ADD CONSTRAINT CUSTOMER_GENDER
CHECK (GENDER='f' OR GENDER='m')

UPDATE CUSTOMER
SET GENDER ='G'
WHERE CUSTOMER_USERNAME = 'angell'




SELECT *FROM ARTIST

/* SET THEORY*/

/* Artists that have been favourited by some customers*/

SELECT ARTIST_NAME,GENRE_NAME
FROM ARTIST
INTERSECT
SELECT FAVOURITE_ARTIST
FROM CUSTOMER

/*ARTISTS THAT HAVE not BEEN FAVOURITED BY ANYONE*/
SELECT ARTIST_NAME
FROM ARTIST
EXCEPT
SELECT FAVOURITE_ARTIST
FROM CUSTOMER


/*triggers*/
CREATE TRIGGER Delete_customer
ON CUSTOMER
AFTER DELETE
AS
BEGIN
SELECT 'CUSTOMER REMOVED'
END
