--1. Primary and Foreign key Constraints
--2. Referential Integrity
--3. Index
--4. Sequences
--5.Views
--6. Synonyms

-----------------------------------------------------------------
--1 Primary and foriegn key constraints 
------------------------------------------------------------------
use dlithesql

--parent table as store
create table store
(
StoreID INT PRIMARY KEY,
Sname VARCHAR(25),
branch varchar(25)
)

insert into store values(1,'Dmart','Bangalore')
insert into store values(2,'Smart','Mysore')
insert into store values(3,'Rel Digital','Delhi')
insert into store values(4,'Total mall','Mumbai')
insert into store values(5,'Garuda','pune')

select * from store

--Child table as owner
create table Owner
(
OID INT PRIMARY KEY,
ONAME VARCHAR(25),
StoreNo INT FOREIGN KEY REFERENCES store(StoreID)
)

insert into Owner values(101,'Radhakrishna',1)
insert into Owner values(102,'Anil Ambani',2)
insert into Owner values(103,'Mukesg Ambani',3)
insert into Owner values(104,'D.k.Shivakumar',4)
insert into Owner values(105,'Goutham Adani',5)

select * from Owner
----------------------------------------------------------------------------------------------------
--2 REFERENTIAL INTEGRITY
--On delete Cascade-On update Cascasde
--If there are any changes done in the parent table then it will reflect the same in the child table
-----------------------------------------------------------------------------------------------------

DELETE FROM store WHERE StoreID=1 --Error

--We should alter the foreign key inorder tp overcome this conflict
alter table Owner drop constraint FK__Owner__StoreNo__71D1E811

alter table Owner add constraint FK__Owner__StoreNo__71D1E811 foreign key(storeNo) references store(StoreID) on delete cascade;

delete from store where StoreID=1 --command Executed

select * from store -- now we can see that data which has storeID as 1 is deleted from the table

select * from Owner -- now we can see that data which has storeID as 1 is deleted from the table

update store set StoreID=1 where StoreID=2 --Erorr

alter table Owner drop constraint FK__Owner__StoreNo__71D1E811 --Dorped constraints

update store set StoreID=1 where StoreID=2 --Executed

select * from store -- Value updated

-----------------------------------------------------------------
--3 Index-clusterd-non clustered and filtered index
-----------------------------------------------------------------

create table student
(
Stu_id INT PRIMARY KEY,
Stu_name VARCHAR(25),
Class varchar(25),
marks INT
)

insert into student values(1,'Deeapk','BE 3rd year',90)
insert into student values(2,'Sridhar','BE 4th year',95)
insert into student values(3,'Rohan','BE 3rd year',94)
insert into student values(4,'Ameen','BE 2nd year',98)
insert into student values(5,'Venkatesh','BE 1st year',91)

select * from student

alter table student drop constraint PK__student__DD8C559998C757FF --Dorped constraints


create clustered index SID on student(stu_id) --cluster created

select stu_id from student -- click on display estimated execution plan

select * from student where marks>93 -- normal query

create index ind_marks on student(marks) where marks>93 -- Filter index created on the given condition

create unique nonclustered index ind_class on student(class) --Error because the values are not unique

create unique nonclustered index ind_studname on student(stu_name)-- executed values are unique

----------------------------------------------------------------------------------------------------------
--4. Sequences
-----------------------------------------------------------------------------------------------------------

-- creating a sequence
create sequence dbo.seqstudent
as int
start with 1
increment by 1

--to view
select * from sys.sequences where name='Seqstudent'

create table seq_stud
(
id int primary key,
name varchar(25),
Branch varchar(25)
)

select next value for dbo.Seqstudent --uses the next available value

insert into seq_stud values(next value for dbo.Seqstudent,'Arun','IT')
insert into seq_stud values(next value for dbo.Seqstudent,'pallavi','Training')
insert into seq_stud values(next value for dbo.Seqstudent,'Sridhar Murthy','HR')
insert into seq_stud values(next value for dbo.Seqstudent,'Shenoy','Project manger')
insert into seq_stud values(next value for dbo.Seqstudent,'Deepak.S','HR')

select * from seq_Stud -- To view the tabel

delete from seq_Stud -- Dropping the table

alter sequence Seqstudent  restart with 1 -- Reseting the sequence

drop sequence seqstudent --Sequence deleted 

---------------------------------------------------------------------------------------------------
--5.Views
---------------------------------------------------------------------------------------------------
--1) Simple view

-- creating a simple view to check the eligiblity for the Scholarship based on marks

create view view_studentclass
as
select stu_id,stu_name,class,marks,iif(marks>92,'eligible','Not-eligible') as Scholarship from student

select * from View_Studentclass -- displays the view

select * from students

select * from employees

--2. COMPLEX VIEW
-- in the complex view am using 3 tables namely student , students and employee this view is used to
-- check the student placement list 

create view View_studplacement
as
select s.stu_id,s.stu_name,s.class,e.ID,e.Designation,e.performance
from student as s full join employees as e on s.Stu_id=e.ID
full join students as s1 on e.ID=s1.SID

select * from View_studplacement

-------------------------------------------------------------------------------------------
--6. Synonyms
------------------------------------------------------------------------------------------
-- creates synonym for the table student and using stud as alias

create synonym stud for dbo.student

-- to view the synonym
select * from stud 

--to delter the synonym if exists
drop synonym if exists stud