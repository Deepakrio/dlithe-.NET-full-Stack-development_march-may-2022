--1. CONSTRAINTS IN SQL SERVER
--2. IDENTITY

--Creating a table by setting SID as a primary key and using IDENTITY for incrementing purpose.
use dlithesql

create table students 
(
SID int primary key IDENTITY(1,1),
SNAME varchar(25) unique NOT NULL,
AGE int check(AGE>4),
CLASS varchar(25)
)

select * from students

insert into students values('Deepak',10,'4th A sec')
insert into students values('Rohan',11,'5th C sec')
insert into students values('Sridhar',12,'6th B sec')
insert into students values('Sangmesh',14,'8th F sec')
insert into students values('Venki',13,'7th E sec')

--Inserting Values Explicitly to SID

set identity_insert students on;

insert into students (SID,SNAME,AGE,CLASS) values (6,'Rio',12,'6th B sec')

--Rolling back the identity_insert to OFF

set identity_insert students off;

--Selecting current identity

select IDENT_CURRENT('students')

--droping primary key

alter table students drop PK__students__CA195970C1AC627C

--Adding Primary key constraint 

alter table students  add constraint pk_sid primary key(SID)


select * from students

