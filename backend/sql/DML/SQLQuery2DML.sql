--DML
use dlithesql

--droping spesific coloumn
alter table employees drop column phn

--inserting values into employees table
insert into employees values (1,'Deepak','IT')
insert into employees values (2,'Sridhar','HR')
insert into employees values (3,'Venki','Design')
insert into employees values (4,'Rohan','Testing')
insert into employees values (5,'Sangamesh','IT')


-- droping table emp
create table emp
(
ID int,
Name varchar(20),
Designation varchar(10),
phn int
)

drop table emp

-- Adding new column into employees table

alter table employees add age int

-- dropping existing column

alter table employees drop column age

create table emp1
(
id int,
name varchar(20),
age int
)

insert into emp1 values (1,'Deepak',24)
insert into emp1 values (2,'Sridhar',35)
insert into emp1 values (3,'Venki',21)
insert into emp1 values (4,'Rohan',22)
insert into emp1 values (5,'Sangamesh',23)

select * from emp1

truncate table emp1

select * from emp1





