--Create a database and name it collegeDB
CREATE DATABASE collegeDB
--Switch to collegeDB
USE collegeDB
--Create a course table and columns include; courseid, course_name, location
CREATE TABLE course(
courseid CHAR(4) PRIMARY KEY NOT NULL,
course_name VARCHAR(30) NOT NULL,
course_location VARCHAR(16) NOT NULL
);
--Create a student table and columns include; studentid (primary key), name, address, age, courseid (foreign key)
CREATE TABLE student(
studentid CHAR(3) PRIMARY KEY,
std_name VARCHAR(35) NOT NULL,
std_address VARCHAR(45) NOT NULL,
age INT,
courseid CHAR(4),
CONSTRAINT fk_courseid FOREIGN KEY (courseid) REFERENCES course(courseid)
);
--Populate the course table
--C100, Computing, Riverside East
--C200, Accounting, Riverside West
INSERT INTO course(courseid, course_name, course_location)
VALUES ('C100', 'Computing', 'Riverside East'),
('C200', 'Accounting', 'Riverside West');
--Populate the student table
INSERT INTO student(studentid, std_name, std_address, age, courseid)
VALUES ('100', 'Bobby', 'Dundee', 17, 'C100');
--Retrieve data from a table
SELECT * FROM course;
SELECT * FROM student;
--Modify the course table by adding a new column
ALTER TABLE course
ADD tutor_name VARCHAR(35);
--Retrieve data from the course table
SELECT * FROM course;
--Update tutor name
--C100, Tim
--C200, Brian
UPDATE course
SET tutor_name = 'Tim'
WHERE courseid = 'C100';

--The DELETE command removes date from a table
--The DROP command deletes an entire object (e.g. a table or database)

--Remove C200 from course table
DELETE FROM course
WHERE courseid = 'C200';
--Check if C200 has been deleted
SELECT * FROM course;

--Remove the course table altogether
DROP TABLE course; --Could not drop the table because it is referenced as a foreign key