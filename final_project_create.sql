/*SET FOREIGN_KEY_CHECKS = 0;*/
/* DROP DATABASE IF EXISTS FINAL_PROJECT;
CREATE DATABASE FINAL_PROJECT; */
USE FINAL_PROJECT;

DROP TABLE IF EXISTS PROP_T;
DROP TABLE IF EXISTS MTN_PROP_T;
DROP TABLE IF EXISTS BEACH_PROP_T;
DROP TABLE IF EXISTS RENTER_T;
DROP TABLE IF EXISTS ACTIVITIES_T;
DROP TABLE IF EXISTS MTN_ACTIVITY_T;
DROP TABLE IF EXISTS RENTAL_AGREEMENT_T;


CREATE TABLE PROP_T (
PROP_ID				INT NOT NULL,
PROP_STREET			VARCHAR(25),
PROP_CITY			VARCHAR(20),
PROP_STATE			CHAR(2),
PROP_ZIP			VARCHAR(10),
PROP_BEDS			INT(2),
PROP_TYPE			CHAR(1),
CONSTRAINT PROP_PK PRIMARY KEY (PROP_ID)
);

INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (101, '10 Any Street', 'Waterville', 'NH', '03050', '3', 'M');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (102, '15 D Street', 'Waterville', 'NH', '03050', '2', 'M');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (103, '5 Grove Street', 'North Conway', 'NH', '03860', '5', 'M');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (104, '100 Rte 12', 'Lincoln', 'NH', '03251', '4', 'M');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (105, 'Rte 16', 'Jackson', 'NH', '03846', '2', 'M');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (106, '20 Main St', 'Falmouth', 'MA', '02536', '5', 'B');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (107, '15 Central Street', 'Falmouth', 'MA', '02536', '4', 'B');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (108, '5 Seapit Road', 'Falmouth', 'MA', '02536', '2', 'B');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (109, '10 Harbor Ave', 'Falmouth', 'MA', '02536', '3', 'B');
INSERT INTO PROP_T (PROP_ID, PROP_STREET, PROP_CITY, PROP_STATE, PROP_ZIP, PROP_BEDS, PROP_TYPE)
VALUES (110, '70 Galloupes Pt.', 'Swampscott', 'MA', '01907', '1', 'B');


CREATE TABLE MTN_PROP_T (
PROP_ID 		INTEGER		NOT NULL,
CONSTRAINT MTN_PROP_PK PRIMARY KEY (PROP_ID),
CONSTRAINT MTN_PROP_FK FOREIGN KEY (PROP_ID) REFERENCES PROP_T(PROP_ID)
);

INSERT INTO MTN_PROP_T VALUES (101);
INSERT INTO MTN_PROP_T VALUES (102);
INSERT INTO MTN_PROP_T VALUES (103);
INSERT INTO MTN_PROP_T VALUES (104);
INSERT INTO MTN_PROP_T VALUES (105);


CREATE TABLE BEACH_PROP_T (
PROP_ID 		INTEGER		NOT NULL,
BEACH_BLOCKS	INTEGER(2),
CONSTRAINT MTN_PROP_PK PRIMARY KEY (PROP_ID),
CONSTRAINT BEACH_PROP_FK FOREIGN KEY (PROP_ID) REFERENCES PROP_T(PROP_ID)
);

INSERT INTO BEACH_PROP_T VALUES (106, 4);
INSERT INTO BEACH_PROP_T VALUES (107, 2);
INSERT INTO BEACH_PROP_T VALUES (108, 2);
INSERT INTO BEACH_PROP_T VALUES (109, 1);
INSERT INTO BEACH_PROP_T VALUES (110, 0);


CREATE TABLE RENTER_T (
RENTER_ID			INT 	NOT NULL,
RENTER_F_NAME		VARCHAR(15),
RENTER_MI			CHAR(1),
RENTER_L_NAME		VARCHAR(20),
RENTER_STREET		VARCHAR(25),
RENTER_CITY		VARCHAR(20),
RENTER_STATE		CHAR(2),
RENTER_ZIP		VARCHAR(10),
RENTER_PHONE		CHAR(12),
RENTER_EMAIL		VARCHAR(25),
CONSTRAINT RENTER_PK PRIMARY KEY (RENTER_ID)
);

INSERT INTO RENTER_T VALUES 
(1, 'Margaret', 'A', 'Simpson', '505 Amherst Street', 'Nashua', 'NH', '03060', '603 123-4567', 'simpson@comcast.net');
INSERT INTO RENTER_T VALUES 
(2, 'Alan', 'B', 'Beeton', '100 Main Street', 'Nashua', 'NH', '03060', '603 881-1000', 'Beeton@comcast.net');
INSERT INTO RENTER_T VALUES 
(3, 'Thomas', 'G', 'Brown', '10 Daniel Webster', 'Merrimack', 'NH', '03054', '603 881-9000', 'Brown@comncast.net');
INSERT INTO RENTER_T VALUES 
(4, 'Sally', 'A', 'Green', '16 Continental Blvd', 'Merrimack', 'NH', '03054', '603 881-1500', 'Green@comcast.net');
INSERT INTO RENTER_T VALUES 
(5, 'Chris', 'T', 'Lucero', '17 Elm Street', 'Hollis', 'NH', '03049', '603 881-4567', 'Lucero@comcast.net');
INSERT INTO RENTER_T VALUES 
(6, 'Lorenzo', 'T', 'Davis', '22 Hanover Street', 'Manchester', 'NH', '03101', '603 668-2357', 'Davis@comcast.net');
INSERT INTO RENTER_T VALUES 
(7, 'Susan', 'A', 'Martin', '5 Hacket Hill Road', 'Hooksett', 'NH', '03106', '603 668-9623', 'Martin@verizon.net');
INSERT INTO RENTER_T VALUES 
(8, 'Rick', 'J', 'Melton', '100 South Willow Street', 'Manchester', 'NH', '03101', '603 434-1111', 'Melton@verizon.net');
INSERT INTO RENTER_T VALUES 
(9, 'Dick', 'H', 'Gosling', '20 Union Street', 'Manchester', 'NH', '03101', '603 888-5843', 'Gosling@adelphia.net');
INSERT INTO RENTER_T VALUES 
(10, 'Java', 'K', 'Celko', '40 Bridge Street', 'Nashua', 'NH', '03060', '603 881-2000', 'Celko@netway.net');
INSERT INTO RENTER_T VALUES 
(11, 'Alice', 'O', 'OOP', '15 Pearl Street', 'Manchester', 'NH', '03101', '603 668-4567', 'oop@comcast.net');
INSERT INTO RENTER_T VALUES 
(12, 'Java', 'A', 'Script', 'Penny Lane', 'Merrimack', 'NH', '03054', '603 434-8850', 'script@gmail.com');


CREATE TABLE ACTIVITIES_T(
ACTIVITY_ID		CHAR(2)		NOT NULL,
ACTIVITY_NAME	VARCHAR(25),
CONSTRAINT ACTIVITIES_PK PRIMARY KEY (ACTIVITY_ID)
);

INSERT INTO ACTIVITIES_T VALUES ('AS', 'SKIING');
INSERT INTO ACTIVITIES_T VALUES ('H', 'HIKING');
INSERT INTO ACTIVITIES_T VALUES ('SW', 'SWIMMING');
INSERT INTO ACTIVITIES_T VALUES ('SK', 'SKATING');
INSERT INTO ACTIVITIES_T VALUES ('CS', 'CROSS-COUNTRY SKIING');
INSERT INTO ACTIVITIES_T VALUES ('SB', 'SNOWMOBILING');


CREATE TABLE MTN_ACTIVITY_T(
PROP_ID 		INT NOT NULL,
ACTIVITY_ID 	CHAR(2) NOT NULL,
CONSTRAINT MTN_ACTIVITY_PK PRIMARY KEY (PROP_ID, ACTIVITY_ID),
CONSTRAINT MTN_ACTIVITY_FK1 FOREIGN KEY (PROP_ID) REFERENCES PROP_T(PROP_ID),
CONSTRAINT MTN_ACTIVITY_FK2 FOREIGN KEY (ACTIVITY_ID) REFERENCES ACTIVITIES_T(ACTIVITY_ID)
);

INSERT INTO MTN_ACTIVITY_T VALUES (101, 'AS');
INSERT INTO MTN_ACTIVITY_T VALUES (101, 'H');
INSERT INTO MTN_ACTIVITY_T VALUES (101, 'CS');
INSERT INTO MTN_ACTIVITY_T VALUES (102, 'AS');
INSERT INTO MTN_ACTIVITY_T VALUES (102, 'H');
INSERT INTO MTN_ACTIVITY_T VALUES (103, 'AS');
INSERT INTO MTN_ACTIVITY_T VALUES (103, 'H');
INSERT INTO MTN_ACTIVITY_T VALUES (103, 'SW');
INSERT INTO MTN_ACTIVITY_T VALUES (103, 'SK');
INSERT INTO MTN_ACTIVITY_T VALUES (104, 'AS');
INSERT INTO MTN_ACTIVITY_T VALUES (104, 'SK');
INSERT INTO MTN_ACTIVITY_T VALUES (104, 'SB');
INSERT INTO MTN_ACTIVITY_T VALUES (105, 'AS');
INSERT INTO MTN_ACTIVITY_T VALUES (105, 'CS');
INSERT INTO MTN_ACTIVITY_T VALUES (105, 'SK');


CREATE TABLE RENTAL_AGREEMENT_T (
RENTAL_AGREEMENT_ID 	INT 	NOT NULL,
PROP_ID					INT		NOT NULL,
RENTER_ID				INT		NOT NULL,
RENTAL_START_DATE		DATE,
RENTAL_END_DATE			DATE,
RENTAL_WEEKLY_RATE		DECIMAL(10,2),
CONSTRAINT RENTAL_AGREEMENT_PK PRIMARY KEY (RENTAL_AGREEMENT_ID),
CONSTRAINT RENTAL_AGREEMENT_FK1 FOREIGN KEY (PROP_ID) REFERENCES PROP_T(PROP_ID),
CONSTRAINT RENTAL_AGREEMENT_FK2 FOREIGN KEY (RENTER_ID) REFERENCES RENTER_T(RENTER_ID)
);

INSERT INTO RENTAL_AGREEMENT_T VALUES (1001, 101, 1, 20071226, 20080102, 300);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1002, 103, 10, 20071221, 20071228, 230);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1003, 104, 3, 20080115, 20080122, 200);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1004, 105, 6, 20080201, 20080208, 150);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1005, 108, 9, 20080628, 20080712, 400);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1006, 109, 5, 20170423, 20170508, 225);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1007, 106, 4, 20080712, 20080726, 300);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1008, 110, 2, 20080719, 20080802, 500);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1009, 107, 1, 20170523, 20170528, 325);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1010, 103, 7, 20080614, 20080628, 230);
INSERT INTO RENTAL_AGREEMENT_T VALUES (1011, 101, 9, 20080816, 20080830, 300);


DESCRIBE PROP_T;
DESCRIBE MTN_PROP_T;
DESCRIBE BEACH_PROP_T;
DESCRIBE RENTER_T;
DESCRIBE ACTIVITIES_T;
DESCRIBE MTN_ACTIVITY_T;
DESCRIBE RENTAL_AGREEMENT_T;

SELECT * FROM PROP_T ORDER BY PROP_ID ASC;
SELECT * FROM MTN_PROP_T ORDER BY PROP_ID ASC;
SELECT * FROM BEACH_PROP_T ORDER BY PROP_ID ASC;
SELECT * FROM RENTER_T ORDER BY RENTER_ID ASC;
SELECT * FROM ACTIVITIES_T;
SELECT * FROM MTN_ACTIVITY_T ORDER BY PROP_ID ASC;
SELECT * FROM RENTAL_AGREEMENT_T ORDER BY RENTAL_AGREEMENT_ID ASC;
