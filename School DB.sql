CREATE DATABASE school;
CREATE TABLE students(
student_id INT(11) NOT NULL AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
student_age int(11) NOT NULL,
PRIMARY KEY(student_id)
);
CREATE TABLE classes(
class_id INT(11) NOT NULL AUTO_INCREMENT,
class_subject VARCHAR(50) NOT NULL,
class_description VARCHAR(50) NOT NULL,
class_level VARCHAR(50) NOT NULL,
PRIMARY KEY (class_id)
);
CREATE TABLE enrollments(
enrollment_id INT(11) NOT NULL AUTO_INCREMENT,
fk_student_id INT(11) NOT NULL,
fk_class_id INT(11) NOT NULL,
PRIMARY KEY (enrollment_id),
FOREIGN KEY (fk_student_id) REFERENCES students(student_id),
FOREIGN KEY (fk_class_id) REFERENCES classes(class_id)
);
INSERT INTO students(first_name, last_name, student_age) 
VALUES('David', 'Steinhafel', 14), ('Ronald', 'Smith', 16), ('John', 'Johnson', 18);

INSERT INTO classes(class_subject, class_description, class_level)
VALUES('BIOLOGY', 'Biology is the study of life.', 'Freshman'), ('Pre-Calc', 'Pre-requisite for calculus.', 'Senior'), ('Physics', 'Physics is the study of the natural world.', 'Junior');

INSERT INTO enrollments(fk_student_id, fk_class_id)
VALUES(1, 1),(1, 2),(2, 2),(2, 3),(3, 1),(3, 3);
#e.enrollment_id, s.first_name, s.last_name
SELECT * FROM enrollments e JOIN students s ON e.fk_student_id = s.student_id JOIN classes c ON e.fk_class_id = c.class_id;
DESCRIBE enrollments;

