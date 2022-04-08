--Return the current date and time

select CURRENT_TIMESTAMP;

--Adds one year to a date and then returns the date

Select dateadd(year, 1, '2022/04/09') as AddDate;

--Return the difference between two date values in a given years

select datediff(year, '2018/09/05', '2022/04/29') as Datediffrence;

--Return a specified part of a date like year,day or a month

select datename(year, '2022/04/09') as Year;
select datename(day, '2022/04/09') as day;
select datename(month, '2022/04/09') as month;

--Returns the current DB system date and time

select getdate();

--returns system date and time

select sysdatetime() as 'Date&time'

--Returns hour parameter of today's
select datename(hour, getdate()) as 'hour';

--Returns minute parameter of today's
select datename(minute, getdate()) as 'minute';

--Returns seconds parameter of today's
select datename(second, getdate()) as 'seconds';