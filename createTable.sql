create table Students (
    student_ID INT PRIMARY KEY,
    first_name text,
    last_name  text
);

insert into Students (student_id, first_name, last_name) values
(1, 'Brett', 'Hays'),
(2, 'Megan', 'Hays'),
(3, 'Carter', 'Hays'),
(4, 'Kendyl', 'Hays'),
(5, 'Hadley', 'Hays');

create table StudentAddress (
    address_ID INT primary key,
    street_address varchar(100),
    city text,
    zipcode int,
    student_ID INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_ID)
);

insert into StudentAddress (address_ID, street_address, city, zipcode, student_ID) values
(11, '123 Main Street', 'Provo', 84663, 1),
(12, '123 First Street', 'Payson', 84651, 2),
(13, '123 Second Street', 'Spanish Fork', 84652, 3),
(14, '123 Third Street', 'Salem', 84578, 4),
(15, '123 Fourth Street', 'Santaquin', 55468, 5);

create table Teachers (
    teacher_ID INT PRIMARY KEY,
    first_name text,
    last_name text
);

insert into Teachers (teacher_ID, first_name, last_name) values
(21, 'Steve', 'Gideon'),
(22, 'Mark', 'Albert'),
(23, 'Loyd', 'Rennaker'),
(24, 'Mike', 'Stark'),
(25, 'Kyla', 'Morton');

create table Classes (
    class_ID INT primary key,
    class_name text,
    teacher_ID INT,
    FOREIGN KEY (teacher_ID) REFERENCES Teachers(teacher_ID)
);

insert into Classes (class_ID, class_name, teacher_ID) values
(31, 'US History', 21),
(32, 'Algebra', 22),
(33, 'Calculus', 23),
(34, 'Art', 24),
(35, 'Band', 25),
(36, 'Governement', 21),
(37, 'Montana History', 21),
(38, 'Geometry', 22),
(39, 'Algebra 2', 23),
(40, 'Pre Calculus', 23),
(41, 'Art 2', 24),
(42, 'AP Art', 24),
(43, 'Choir', 25);

create table Student_Classes (
    class_ID INT,
    student_ID INT,
    FOREIGN KEY (class_ID) REFERENCES Classes(class_ID),
    FOREIGN KEY (student_ID) REFERENCES STUDENTS(student_ID)
);

insert into Student_Classes (class_ID, student_ID) values
(31, 1),
(33, 1),
(35, 1),
(32, 2),
(34, 2),
(35, 2),
(31, 3),
(34, 3),
(35, 3),
(33, 4),
(34, 4),
(35, 4),
(31, 5),
(34, 5),
(32, 5);


