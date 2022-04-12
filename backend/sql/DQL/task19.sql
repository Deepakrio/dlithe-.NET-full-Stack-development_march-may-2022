--1. Sub-Queries
--2. Functions
--3. Grouping Sets, Rollup, Cube and Coalesce
--4. Stored Procedures

----------------------------------------------------------------------------
--1. Sub Queries
----------------------------------------------------------------------------

-- Creating a new table

use dlithesql

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

-- to view the table
select * from artist

--Selects only artist with the networth greater than or equal to 30000
SELECT * 
   FROM artist 
   WHERE Artist_ID IN (SELECT Artist_ID 
         FROM artist 
         WHERE Net_worth >= 30000) ;

---------------------------------------------------------------------------
--(ii) Insert Sub Query
---------------------------------------------------------------------------
-- creating table with no data
create table artist_clone
(
Artist_ID int primary key,
Artist_Name varchar(25),
Albums int,
Label varchar(30),
Net_worth int
)

--Inserting values into the artist_clone table
INSERT INTO artist_clone
   SELECT * FROM artist
   WHERE Artist_ID IN (SELECT Artist_ID
   FROM artist) ;

-- view the data inside artist_clone table
   select * from artist_clone
-----------------------------------------------------------------------------
--(iii)Update sub-Query
-----------------------------------------------------------------------------
-- updating the networth of the artists who have Albums greater than or equal to 23
UPDATE artist
   SET Net_worth = Net_worth * 0.5
   WHERE Albums IN (SELECT Albums FROM artist_clone
      WHERE Albums >= 23 );

--view updated values
	  select * from artist
----------------------------------------------------------------------------------
--(iv) Delete sub-Query
----------------------------------------------------------------------------------

DELETE FROM artist_clone
   WHERE Albums IN (SELECT Albums FROM artist
      WHERE Albums <21 );

--view remaining artists
	  	  select * from artist_clone
-----------------------------------------------------------------------------------
--(v) From Sub-Query
-----------------------------------------------------------------------------------
select a.Artist_ID,a.Artist_name from
(select count(Artist_ID) as Total_Artist from artist_clone) as ar, artist as a
where a.Artist_ID = ar.Total_Artist

-----------------------------------------------------------------------------
--2. Functions
-----------------------------------------------------------------------------

--Functions performs a set of operations or actions 
--There are two types of functions
--(i) System defined functions
--(ii) User defined functions

--User Defined functions
--(i). Scalar
--(ii). Inline table valued
--(iii). Multi statement table valued

--(i) Scalar function

-- calculating (a+b)^2
create function formula(@a int,@b int)
returns int
as
begin
    return @a*@a+(2*(@a*@b))+@b*@b
end

--call the function
select dbo.formula(2,2) as Result

drop function dbo.formula


--(ii) Inline table valued function
-- returns a table - It has no begin and end section

create function fun_getalbums(@artid int)
returns table
as
return(select * from artist where Artist_ID=@artid)


--calling inline table valued function passing the artid value as 100
select * from fun_getalbums(100)

--(iii). Multi statement table valued
--MULTI STATEMENT TABLE VALUED

create function fun_getlabel()
returns @table Table (a_id int,Aname varchar(25),album int,Alabel varchar(25),Networth int)
as
begin
    insert into @table
    select Artist_ID,Artist_Name,Albums,Label,Net_worth from artist where Label = 'Anand Audio';
    return
end

--call the multi-statement table valued function displays the record with label anand audio
select * from fun_getlabel()

------------------------------------------------------------------------------------------------------
--3. Grouping Sets, Rollup, Cube and Coalesce
------------------------------------------------------------------------------------------------------
--(i)Grouping sets 

-- Displays the details of Record label holding number of Albums
select Label,COUNT(Albums) as TotalAlbums from artist
group by GROUPING SETS
(
(Label,Albums)
)

--------------------------------------------------------------------------------------------------------
--(ii) Rollup
---------------------------------------------------------------------------------------------------------

Select Label as Record_labels,sum(Net_worth) as Total_Profit from artist group by rollup(Label);

-------------------------------------------------------------------------------------------------
--(iii)coalesce
-------------------------------------------------------------------------------------------------

--Replaces the first NULL value to All_Label

Select coalesce(Label,'All_Label') as Record_label,sum(Albums) as TotalAlbums
from artist group by rollup(Label);

--------------------------------------------------------------------------------------------------
--(iv)Cube
--------------------------------------------------------------------------------------------------
insert into artist values(103,'Nischitha',20,'T-series',30000)


Select coalesce(Label,'All_Label') as Record_label,sum(Albums) as TotalAlbums
from artist group by cube(Label);

---------------------------------------------------------------------------------------
--4. Stored Procedures
---------------------------------------------------------------------------------------

select * from artist

--procedure with no parameter
create procedure proc_Topartist
as
begin
    select * from artist where Albums>30;
end

--execute procedure
exec proc_Topartist


--Input Parameters
create procedure sp_artistlabel(@label varchar(25))
as
begin
    select * from artist where Label=@label  
end


exec sp_artistlabel @label='Lyca'

--Output Parameter

--displays the least number of albums 
create procedure sp_lessalbum(@album int OUTPUT)
as
begin
    select  @album=min(Albums) from artist 
end


Declare @answer int
exec sp_lessalbum @answer OUTPUT 
print @answer 