/* Many to Many Get all students in us history*/

SELECT s.student_id, first_name, last_name
      FROM student_classes sc 
INNER JOIN Students s ON s.student_id = sc.student_id
     WHERE sc.class_id = 31;

/* Many to Many Get all students in algebra*/

SELECT s.student_id, first_name, last_name
      FROM student_classes sc 
INNER JOIN Students s ON s.student_id = sc.student_id
     WHERE sc.class_id = 32;

/* Many to Many Get all students in calculus*/

SELECT s.student_id, first_name, last_name
      FROM student_classes sc 
INNER JOIN Students s ON s.student_id = sc.student_id
     WHERE sc.class_id = 33;

/* Many to Many Get all students in art*/

SELECT s.student_id, first_name, last_name
      FROM student_classes sc 
INNER JOIN Students s ON s.student_id = sc.student_id
     WHERE sc.class_id = 34;

/* Many to Many Get all students in band*/

SELECT s.student_id, first_name, last_name
      FROM student_classes sc 
INNER JOIN Students s ON s.student_id = sc.student_id
     WHERE sc.class_id = 35;

/* Many to Many Get all classes for Brett*/

SELECT c.class_id, class_name
      FROM student_classes sc 
INNER JOIN Classes c ON c.class_id = sc.class_id
     WHERE sc.student_id = 1;

/* Many to Many Get all classes for Megan*/

SELECT c.class_id, class_name
      FROM student_classes sc 
INNER JOIN Classes c ON c.class_id = sc.class_id
     WHERE sc.student_id = 2;

/* Many to Many Get all classes for Carter*/

SELECT c.class_id, class_name
      FROM student_classes sc 
INNER JOIN Classes c ON c.class_id = sc.class_id
     WHERE sc.student_id = 3;

/* Many to Many Get all classes for Kendyl*/

SELECT c.class_id, class_name
      FROM student_classes sc 
INNER JOIN Classes c ON c.class_id = sc.class_id
     WHERE sc.student_id = 4;

/* Many to Many Get all classes for Hadley*/

SELECT c.class_id, class_name
      FROM student_classes sc 
INNER JOIN Classes c ON c.class_id = sc.class_id
     WHERE sc.student_id = 5;