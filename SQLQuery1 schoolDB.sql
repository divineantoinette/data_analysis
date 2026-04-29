--
CREATE DATABASE schoolDB;
USE schoolDB;
CREATE TABLE course(
courseid CHAR(4),
course_name VARCHAR(15),
c_location VARCHAR(20),
constraint pk_course PRIMARY KEY(courseid)
);
CREATE TABLE student(
student_id CHAR(3),
student_name VARCHAR(30),
student_address VARCHAR(45),
age int,
course_id CHAR(4),
constraint std_pk PRIMARY KEY(student_id),
constraint student_course FOREIGN KEY (course_id) REFERENCES course(courseid)
);
INSERT INTO course(courseid,course_name, c_location)
VALUES('C100', 'Computing', 'Riverside East'),
('C200', 'Accounting', 'Riverside East'),
('C300', 'Pharmacy', 'Riverside West');
INSERT INTO student (student_id,student_name,student_address,age,course_id)
VALUES ('100', 'Bobby Hellen', 'Dundee', 17, 'C100');