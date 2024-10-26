create table Student_info
(
ID int not null,
std_name varchar(20),
dept varchar(20) default "CSE"
);
insert into Student_info(ID,std_name,dept)
values(2102043,'Amit',' '),(2102008,'Shourov',' ');
insert into Student_info(ID,std_name,dept)
values(2102045,'Utal');

select * from student_info;
create table Student_info1
(
ID int not null,
std_name varchar(20),
dept varchar(20)
);
alter table student_info1
alter dept set default 'CSE';

alter table student_info1
alter dept drop default;

-- Inner Joining for 2 table
-- Table1
create table student(
ID int not null,
std_name varchar(20),
courseID int,
primary key(ID),
foreign key(courseID) references Courses(courseID)
);
insert into student(ID,std_name,courseID)
values(2102043,'Amit',101),(2102044,'Porag',103),(2102045,'Utal',103),(2102046,'Shouvo',104),(2102047,'Hasib',105);

-- Table 2
create table Courses(
courseID int not null,
course_name varchar(20),
primary key(CourseID)
);
insert into Courses(courseID,course_name)
values(101,'C'),(102,'C++'),(103,'DBMS'),
(104,'Python'),(105,'JAVA');

select student.ID as Student_ID, student.std_name as Student_name, courses.course_name
from student
inner join Courses on student.courseID=courses.courseID;


-- Inner Joining for 3 table
-- Table1
create table student1(
ID int not null,
std_name varchar(20),
courseID int,
primary key(ID),
foreign key(courseID) references Courses(courseID)
);
alter table student1
add column TeachersID int
;
delete TeachersID
 from Teachers;
insert into student1(ID,std_name,courseID)
values(2102043,'Amit',101),(2102044,'Porag',103),(2102045,'Utal',103),(2102046,'Shouvo',104),(2102047,'Hasib',105);

-- Table 2
create table Courses1(
courseID int not null,
course_name varchar(20),
TeachersID int,
primary key(CourseID),
foreign key(TeachersID) references Teachers(TeachersID)
);
insert into Courses1(courseID,course_name)
values(101,'C'),(102,'C++'),(103,'DBMS'),
(104,'Python'),(105,'JAVA');

-- Table3
create table Teachers(
TeachersID int not null,
Teachersname varchar(20),
primary key(TeachersID)
);
insert into Teachers(TeachersID,Teachersname)
values(1,'A'),(2,'B'),(3,'C'),
(4,'D'),(5,'E');

select student1.ID as Student_ID, student1.std_name as Student_name, courses1.course_name,Teachers.TeachersID
from ((student1
inner join Courses1 on student1.courseID=courses1.courseID)
inner join Teachers on Teachers.TeachersID=Courses1.CourseID);
