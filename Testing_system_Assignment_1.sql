DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE `Department`(
	Department_ID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    Department_Name VARCHAR(50) NOT NULL UNIQUE KEY
);

CREATE TABLE `Position`(
	Position_ID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Position_Name ENUM('Dev','Test','Serum Master','PM')-- ENUM co can default khong?
);

CREATE TABLE `Account` (
	Account_ID SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(50) NOT NULL,
    User_Name  VARCHAR(50) NOT NULL,
    Full_Name VARCHAR(100) NOT NULL,
    Department_ID TINYINT UNSIGNED ,
    Position_ID TINYINT UNSIGNED,
    Create_Date DATE
    );
    
CREATE TABLE `Group`(
	Group_ID TINYINT UNSIGNED,
	Group_Name VARCHAR(100),
	Creator_ID SMALLINT UNSIGNED,
	Create_Date DATE
    );
    
CREATE TABLE `Group_Account`(
	Group_ID TINYINT,
	Account_ID SMALLINT UNSIGNED ,
	Join_Date DATE
);

CREATE TABLE `Type`(
	Type_ID TINYINT UNSIGNED,
	Type_Name ENUM('Essay','Multiple-Choise')
);

CREATE TABLE `Category_Question`(
	Category_ID TINYINT UNSIGNED,
    Category_Name VARCHAR(50)
);

CREATE TABLE `Question`(
	Question_ID SMALLINT UNSIGNED,
	Content VARCHAR(500),
	Category_ID TINYINT UNSIGNED,
	Type_ID TINYINT UNSIGNED,
	Creator_ID SMALLINT UNSIGNED,
	Create_Date DATE
);

CREATE TABLE `Answer`(
	Answer_ID SMALLINT UNSIGNED,
    Content VARCHAR(500),
	Question_ID SMALLINT UNSIGNED,
	isCorrect VARCHAR(20)
);


CREATE TABLE `Exam`(
	Exam_ID TINYINT UNSIGNED,
    `Code` VARCHAR(20),
    Title VARCHAR(100),
    Category_ID TINYINT UNSIGNED,
    Duration TIME,-- Cho nay de hoi(de Time hay Varchar thi chinh xac)
    Creator_ID SMALLINT UNSIGNED,
    Create_Date DATE
);

CREATE TABLE `Exam_Question`(
	Exam_ID TINYINT UNSIGNED,
    Question_ID SMALLINT UNSIGNED
);





    
    