/* Add grade column */
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

alter table Students
add column grade text;

