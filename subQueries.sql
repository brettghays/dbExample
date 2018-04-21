/* Selects all classes where teacher first name starts with m */
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


select class_name from Classes
where teacher_ID IN (select teacher_ID from Teachers where first_name like 'm%');