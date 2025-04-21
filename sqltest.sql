---Create a students table with the following columns:--
create table students(
id int primary key,
name varchar(50)not null,
email varchar(100)unique,
age int,
marks decimal(10,2)
);

insert into students(id,name,email,age,marks)values(1,'ram','ram@gmail.com',20,98);
insert into students(id,name,email,age,marks)values(2,'john','john@gmail.com',21,55);
insert into students(id,name,email,age,marks)values(3,'james','james@gmail.com',22,78);
insert into students(id,name,email,age,marks)values(4,'raj','raj@gmail.com',16,78);
insert into students(id,name,email,age,marks)values(5,'rahul','raj@gmail.com',23,57);
select * from students;


2.
select *
from students
where age >21;

3.
update students
set email='rahul@gmail.com'
where id=5;

select * from students;

4.
delete from students
where age < 18;

select * from students;


5.Find the second highest score student details.
select *
from students 
marks limit 1 offset 0;

----------------------------------------------------------------------------------
create table students2025(
student_id int primary key,
name varchar(50),
age int
);

create table courses101(
course_id int,
student_id int,
course_name varchar(50),
foreign key(student_id)references students2025(student_id)
);

insert into students2025 values(1,'Rahul',22);
insert into students2025 values(2,'Priya',21);
insert into students2025 values(3,'Akash',23);


insert into courses101 values(101,1,'Java');
insert into courses101 values(102,2,'Python');
insert into courses101 values(103,1,'SQL');

select * from students2025;

select * from courses101;


select name,course_name
from students2025,courses101;






