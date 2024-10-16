CREATE DATABASE ASSIGNMENT3;

CREATE TABLE SALSEPERSON(
SNO INT PRIMARY KEY AUTO_INCREMENT,
SNAME VARCHAR(40),
CITY VARCHAR(20),
COMM INT 
);

INSERT INTO SALSEPERSON(SNO, SNAME, CITY, COMM) VALUES
(1001, "Peel", "London", .12),
(1002, "Serres", "San Jose", .13),
(1004, "Motika", "London", .11),
(1007, "Rafkin", "Barrcelona", .15),
(1003, "Axelrod", "New York", .1);

CREATE TABLE CUSTOMER(
CNM INT PRIMARY KEY AUTO_INCREMENT,
CNAME VARCHAR(40),
CITY VARCHAR(20),
RATING BIGINT,
SNO INT,
FOREIGN KEY(SNO) REFERENCES SALSEPERSON(SNO)
);

INSERT INTO CUSTOMER (CNM, CNAME, CITY, RATING, SNO) VALUES 
(201, "Hoffman", "London", 100, 1001),
(202, "Giovanne", "Roe", 200, 1003),
(203, "Liu", "San Jose", 300, 1002),
(204, "Grass", "Barcelona", 100, 1002),
(205, "Clemens", "London", 300, 1007),
(206, "Pereira", "Roe", 100, 1004);

-- QUESTION 12 QUERY --

SELECT * FROM SALSEPERSON;

SELECT * FROM CUSTOMER;


-- QUESTION 14 QUERY --

SELECT SNAME, CITY FROM SALSEPERSON WHERE CITY = 'London' AND COMM > 0.12;


-- QUESTION 15 QUERY --

SELECT * FROM SALSEPERSON WHERE CITY IN ('Barcelona', 'London');


-- QUESTION 16 QUERY --

SELECT * FROM SALSEPERSON WHERE COMM > 0.10 AND COMM < 0.12;


-- QUESTION 17 QUERY -- 

SELECT * FROM CUSTOMER WHERE RATING > 100 OR (RATING <= 100 AND CITY = 'Roe');


-- QUESTION 18 QUERY --

CREATE TABLE SALESPEOPLE(
SALESMAN_ID BIGINT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30),
CITY VARCHAR(20),
COMMISSION INT
);

INSERT INTO SALESPEOPLE(SALESMAN_ID, NAME, CITY, COMMISSION) VALUES 
(5001, "James Hoog", "New York", 0.15),
(5002, "Nail Knite", "Paris", 0.13),
(5005, "Pit Alex", "London", 0.11),
(5006, "Mc Lyon", "Paris", 0.14),
(5007, "Paul Adam", "Rome", 0.13),
(5003, "Lauson Hen", "San Jose", 0.12);

SELECT * FROM SALESPEOPLE;


-- QUESTION 19 QUERY -- 

CREATE TABLE ORDERS(
ORD_NO BIGINT PRIMARY KEY AUTO_INCREMENT,
PURCH_AMT BIGINT,
ORD_DATE DATETIME,
CUSTOMER_ID BIGINT,
SALESMAN_ID BIGINT
);

INSERT INTO ORDERS(ORD_NO, PURCH_AMT, ORD_DATE, CUSTOMER_ID, SALESMAN_ID) VALUES 
(70001, 150.5, "2012-10-05", 3005, 5002),
(70009, 270.65, "2012-09-10", 3001, 5005),
(70002, 65.26, "2012-10-05", 3002, 5001),
(70004, 110.5, "2012-08-17", 3009, 5003),
(70007, 948.5, "2012-09-10", 3005, 5002),
(70005, 2400.6, "2012-07-27", 3007, 5001),
(70008, 5760, "2012-09-10", 3002, 5001),
(70010, 1983.43, "2012-10-10", 3004, 5006),
(70003, 2480.4, "2012-10-10", 3009, 5003),
(70012, 250.45, "2012-06-27", 3008, 5002),
(70011, 75.29, "2012-08-17", 3003, 5007),
(70013, 3045.6, "2012-04-25", 3002, 5001);

SELECT * FROM ORDERS;

SELECT ORD_NO, ORD_DATE, PURCH_AMT FROM ORDERS WHERE SALESMAN_ID = 5001;


-- QUESTION 20 QUERY -- 

CREATE TABLE ITEM_MAST (
    PRO_ID BIGINT PRIMARY KEY AUTO_INCREMENT,
    PRO_NAME VARCHAR(30),
    PRO_PRICE BIGINT,
    PRO_COM INT
);

INSERT INTO ITEM_MAST (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM) VALUES
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP Drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD Drive', 900.00, 12),
(107, 'CD Drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill Cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);

SELECT * FROM ITEM_MAST;

SELECT PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM FROM ITEM_MAST WHERE PRO_PRICE BETWEEN 200 AND 600;


-- QUESTION 21 QUERY --

SELECT AVG(PRO_PRICE) AS AVG FROM ITEM_MAST WHERE PRO_COM = 16;


-- QUESTION 22 QUERY --

SELECT PRO_NAME AS 'Item Name', PRO_PRICE AS 'Price in Rs.' FROM ITEM_MAST;


-- QUESTION 23 QUERY --

SELECT PRO_NAME, PRO_PRICE FROM ITEM_MAST WHERE PRO_PRICE >= 250
ORDER BY PRO_PRICE DESC, PRO_NAME ASC;


-- QUESTION 24 QUERY --

SELECT PRO_COM AS Company_Code, AVG(PRO_PRICE) AS Average_Price FROM ITEM_MAST
GROUP BY PRO_COM;

