DROP DATABASE IF EXISTS Fresher_Training_Management;
CREATE DATABASE Fresher_Training_Management;
USE Fresher_Training_Management;
CREATE TABLE Fresher_Training_Management(
	Trainee_ID TINYINT AUTO_INCREMENT PRIMARY KEY,
	Full_Name  VARCHAR(50) NOT NULL,
	Brith_Date DATE,
	Gender ENUM('male','female','unknow') NOT NULL,
	ET_IQ TINYINT UNSIGNED,
	ET_Gmath TINYINT UNSIGNED,
    ET_English TINYINT UNSIGNED,
    Training_Class VARCHAR(50),
    Evaluation_Notes VARCHAR(100)
);






