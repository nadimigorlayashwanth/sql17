create database student;
use student;

create table student(Roll_No int,Name varchar(20),Address varchar(20),PhNo int,Age int);
desc student;
create table student_Course(course_id int,Roll_No int);
desc student_Course;

insert into student values(1,"Harish","Delhi",76710,22);
insert into student values(2,"Pratik","Bihar",8888,20);
insert into student values(3,"Riya","Sulligiri",22334,18);
insert into student values(4,"Deep","Delhi",68787,19);
insert into student values(5,"Sathyahari","Kolkata",34256,24);
insert into student values(6,"Dhanraj","BARNAJAR",67543,20);
insert into student values(7,"Rohit","BALURGAUGHT",70989,19);
insert into student values(8,"Niraj","ALIPUR",678990,24);
SELECT * FROM student;

insert into student_Course values(1,1);
insert into student_Course values(2,2);
insert into student_Course values(2,3);
insert into student_Course values(3,4);
insert into student_Course values(1,5);
insert into student_Course values(4,9);
insert into student_Course values(5,10);
insert into student_Course values(4,11);
select * from student_Course;

/**JOINTS**/
select * from student;
select * from student_Course;


SELECT student.Name,Student.Age,student_Course.course_id from student_Course
inner join student
on student.Roll_No=student_Course.Roll_No;

select student_course.course_id,student.Address,student.PhNo from student
inner join student_course
on student_course.Roll_No=student.Roll_no;

select student_course.course_id,student.Name,student.Age,student.PhNo from student
left join student_course
on student.Roll_No=student_course.Roll_No;

select student_course.course_id,student.Name,student.Age,student.PhNo,student.Address from student
Right join student_course
on student.Roll_No=student_course.Roll_No;

SELECT student.Name, student_course.course_id 
FROM student_course
FULL JOIN student 
ON student.Roll_No = student_course.Roll_No;



select * from student;
select * from student_course;

select * from student
union
select * from student_course;

alter table student drop column PhNo;
alter table student drop column Address;
alter table student drop column Roll_No;

rollback;

select * from student
union
select * from student_course;

create table a(id int);
create table b(id int);
insert into a values(10),(3),(4),(4),(10);
insert into b values(1),(3),(2),(5),(6);

select * from a
union
select * from b;

select * from a
union all
select * from b;







