create table Persons(
ID int not null,
p_name varchar(20),
age int,
city varchar(20),
constraint chk_person CHECK(age>15)
);

insert into Persons(ID,p_name,age,city)
values(1,"Amit",24,"Dhaka"),(2,"Shourov",20,"Khulna");

create table Students(
ID int not null,
p_name varchar(20),
age int,
city varchar(20),
 CHECK(age>15)
);

insert into Students(ID,p_name,age,city)
values(1,"Amit",24,"Dhaka"),(2,"Shourov",20,"Khulna");


-- Foreign Key
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Per(PersonID)
);

insert into Orders(OrderID,OrderNumber,PersonID)
values(1,101,11),(2,12,20);

create table Per(
PersonID int not null,
p_name varchar(20),
age int,
city varchar(20),
 primary key(PersonID)
);

insert into Per(PersonID,p_name,age,city)
values(1,"Amit",24,"Dhaka"),(2,"Shourov",20,"Khulna");

