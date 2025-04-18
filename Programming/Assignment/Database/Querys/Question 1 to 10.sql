CREATE DATABASE ASSIGNMENT2;

CREATE TABLE EMPLOYE(
EMPLOYEE_ID INT PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
SALARY BIGINT, 
JOINING_DATE DATETIME,
DEPARTMENT VARCHAR(30)
);

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(1, "John", "Abraham", 1000000, "2013-01-01", "Banking");

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(2, "Michael", "Clarke", 800000, "2013-01-01", "Insurance");

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(3, "Roy", "Thomas", 700000, "2013-02-01", "Banking");

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(4, "Tom", "Jose", 600000, "2013-02-01", "Insurance");

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(5, "Jerry", "Pinto", 650000, "2013-02-01", "Insurance");

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(6, "Philip", "Mahew", 750000, "2013-01-01", "Services");

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(7, "TestName1", "123", 650000, "2013-01-01", "Services");

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(8, "TestName2", "Lname%", 600000, "2013-02-01", "Insurance");

SELECT * FROM EMPLOYE;

-------------- NOW CREATE INCENTIVE TABLE --------------

CREATE TABLE INCENTIVE1(
EMPLOYEE_REF_ID INT PRIMARY KEY AUTO_INCREMENT,
INCENTIVE_DATE DATETIME,
INCENTIVE_AMOUNT BIGINT,
FOREIGN KEY(EMPLOYEE_REF_ID) REFERENCES EMPLOYE(EMPLOYEE_ID)
);

INSERT INTO INCENTIVE1(EMPLOYEE_REF_ID, INCENTIVE_DATE, INCENTIVE_AMOUNT) VALUES
(1, "2013-02-01", 5000),
(2, "2013-02-01", 3000),
(3, "2013-02-01", 4000),
(4, "2013-01-01", 4500),
(5, "2013-01-01", 3500);

SELECT * FROM INCENTIVE1;


-- QUESTION 3 QUERY --

SELECT FIRST_NAME AS "EMPLOYEE NAME"
FROM EMPLOYE
WHERE FIRST_NAME = 'Tom';


-- QUESTION 4 QUERY --

SELECT FIRST_NAME, JOINING_DATE, SALARY
FROM EMPLOYE;


-- QUESTION 5 QUERY -- 

SELECT * FROM EMPLOYE
ORDER BY FIRST_NAME ASC, SALARY DESC;


-- QUESTION 6 QUERY -- 

SELECT * FROM EMPLOYE
WHERE FIRST_NAME LIKE '%J%';


-- QUESTION 7 QUERY -- 

SELECT DEPARTMENT, MAX(SALARY) AS MAX_SALARY FROM EMPLOYE
GROUP BY DEPARTMENT
ORDER BY MAX_SALARY ASC;

-- QUESTION 9 QUERY -- 

SELECT EMPLOYE.FIRST_NAME, INCENTIVE1.INCENTIVE_AMOUNT FROM EMPLOYE
JOIN INCENTIVE1 ON EMPLOYE.EMPLOYEE_ID = INCENTIVE1.EMPLOYEE_REF_ID
WHERE INCENTIVE1.INCENTIVE_AMOUNT > 3000;


-- QUESTION 10 QUERY -- 

CREATE TABLE VIEWTABLE(
EMPLOYEE_ID INT PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
SALARY BIGINT,
JOINING_DATE DATETIME,
DEPARTMENT VARCHAR(20),
ACTION_PERFORM VARCHAR(30)
);

CREATE TRIGGER INSERT_TABLE AFTER INSERT ON EMPLOYE FOR EACH ROW

INSERT INTO VIEWTABLE (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT, ACTION_PERFORM)
VALUES (NEW.EMPLOYEE_ID, NEW.FIRST_NAME, NEW.LAST_NAME, NEW.SALARY, NEW.JOINING_DATE, NEW.DEPARTMENT, "Data Inserted!");

SELECT * FROM VIEWTABLE;

-- FOR CHECK QUESTION 10 QUERY IS TRUE OR NOT -- 

INSERT INTO EMPLOYE(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(9, "DIYA", "GAJJAR", 600000, "2013-02-01", "Banking");
















