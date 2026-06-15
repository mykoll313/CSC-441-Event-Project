CREATE DATABASE EventProject;

USE EventProject;


CREATE TABLE Events (

event_id INT PRIMARY KEY AUTO_INCREMENT,

event_title VARCHAR(100) NOT NULL,

event_date DATE NOT NULL,

event_time TIME,

event_location VARCHAR(150) NOT NULL,

event_details TEXT NOT NULL

);


CREATE TABLE Registrants (

registrant_id INT PRIMARY KEY AUTO_INCREMENT,

first_name VARCHAR(50) NOT NULL,

last_name VARCHAR(50) NOT NULL

);


CREATE TABLE Registrations (

registration_id INT PRIMARY KEY AUTO_INCREMENT,

event_id INT NOT NULL,

registrant_id INT NOT NULL,

registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

FOREIGN KEY (event_id) REFERENCES Events(event_id),

FOREIGN KEY (registrant_id) REFERENCES Registrants(registrant_id)

);