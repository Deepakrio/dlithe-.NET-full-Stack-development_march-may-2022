
--1. Triggers
--2. Transactions
--3. Temporary Tables

---------------------Pre Requisites for the task------------------------------------------
create table artist
(
Artist_ID int primary key,
Artist_Name varchar(25),
Albums int,
Label varchar(30),
Net_worth int
)

insert into artist values(100,'Deepak',23,'Anand Audio',50000)
insert into artist values(101,'Rohan',50,'Lyca',60000)
insert into artist values(102,'Sridhar',10,'Lahari Audio',10000)
insert into artist values(103,'Nischitha',20,'T-series',30000)

------------------------------------------------------------------------------------------
--1. Triggers
------------------------------------------------------------------------------------------
use dlithesql

select * from artist

--(i) Insert Trigger
--Creating an insert Trigger on artist Table
CREATE TRIGGER insert_trigger
ON artist
FOR INSERT
AS
BEGIN
	    PRINT 'You cannot insert into artist table'
		ROLLBACK TRANSACTION
END

--Cannot insert records into the artist table
INSERT INTO artist VALUES(104,'Roja',13,'After Math',20000)

DROP TRIGGER insert_trigger



--(ii)Update Trigger

--Creates an update Trigger for artist table
CREATE TRIGGER Update_Trigger
ON artist
FOR UPDATE
AS
BEGIN
    PRINT 'You cannot update into artist table'
    ROLLBACK TRANSACTION
END

--cannot update values into update table
UPDATE artist SET Artist_Name='Rio' WHERE Artist_ID=100


DROP TRIGGER update_trigger

--(iii)Delete Trigger

--creates an Delete trigger
CREATE TRIGGER delete_trigger
ON artist
FOR DELETE
AS
BEGIN
   PRINT 'You cannot delete from artist table'
    ROLLBACK TRANSACTION
END



--Cannot Delete data from artist table
DELETE FROM artist WHERE Artist_ID=100

DROP TRIGGER delete_trigger


--(iv) For all DML Trigger in one query

CREATE TRIGGER All_Trigger
ON artist
FOR INSERT,UPDATE,DELETE
AS
BEGIN
    PRINT 'You cannot PERFORM insert-delete and update OPERATIONS ON artist table'
    ROLLBACK TRANSACTION
END


--Cannot Delete data from artist table
DELETE FROM artist WHERE Artist_ID=100


--cannot update values into update table
UPDATE artist SET Artist_Name='Rio' WHERE Artist_ID=100


--Cannot insert records into the artist table
INSERT INTO artist VALUES(104,'Roja',13,'After Math',20000)

DROP TRIGGER All_Trigger


--(v) Trigger for perticular period of time

CREATE TRIGGER Block_period
on artist
FOR INSERT,UPDATE,DELETE
as
BEGIN
    IF (DATEPART(DW,GETDATE())=4) and (DATEPART(HH,GETDATE())>20)
        BEGIN
            PRINT 'Artists unavailable on Wednesday after 9 p.m'
            ROLLBACK TRANSACTION
        END
END


--Cannot Delete data from artist table
DELETE FROM artist WHERE Artist_ID=100


--cannot update values into update table
UPDATE artist SET Artist_Name='Rio' WHERE Artist_ID=100


--Cannot insert records into the artist table
INSERT INTO artist VALUES(104,'Roja',13,'After Math',20000)

DROP TRIGGER Block_period


----------------------------------------------------------------------------------
--2. Transactions
----------------------------------------------------------------------------------

--(i)COMMIT Transaction

BEGIN TRANSACTION
    insert into artist values(106,'Ameen M',15,'Hindi Records',40000);
    update artist set Label='Disto-kid' where Artist_ID=101;
COMMIT TRANSACTION

select * from artist


--(ii)ROLLBACK Transaction

BEGIN TRANSACTION
    insert into artist values(107,'Rio',34,'D-Series',7600000);
    update artist set Albums=21 where Artist_ID=105;
ROLLBACK TRANSACTION

--(iii)Save point Transaction

BEGIN TRANSACTION
    insert into artist values(108,'venki',30,'D-Series',600000);
    SAVE TRANSACTION New_record
    update artist set Albums=29 where Artist_ID=105;
    select * from artist;
    ROLLBACK TRANSACTION New_record
COMMIT TRANSACTION

---------------------------------------------------------------------------------
--3. Temporary Tables
---------------------------------------------------------------------------------


--(i)Select Data into Temp Table

SELECT Artist_ID,Artist_Name,Albums,Label INTO #artist_list from artist

Select * from #artist_list

--(ii)Creating a Temp Table

CREATE TABLE #artist_income
(
name varchar(25),
income int
)


INSERT INTO #artist_income SELECT Artist_Name,Net_worth from artist

select * from #artist_income
