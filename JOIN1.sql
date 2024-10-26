-- Inner Joining for 3 table
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
TeachersID int,
primary key(CourseID),
foreign key(TeachersID) references Teachers(TeachersID)
);
insert into Courses(courseID,course_name)
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

select student.ID as Student_ID, student.std_name as Student_name, courses.course_name,Teachers.Teachersname
from ((student
inner join Courses on student.courseID=Courses.courseID)
inner join Teachers on Courses.TeachersID=Teachers.TeachersID);