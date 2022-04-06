--Aggregate functions,group by and order by
--max function with group by clouse

select max(performance),Designation from employees group by Designation

--min function with group by clouse

select min(performance),Designation from employees group by Designation

--count 

select count(Designation) from employees 

--avg with group by clouse

select avg(performance),name from employees group by name

--sum with group by clouse


select sum(performance),Designation from employees group by Designation

--order by where the default format is ascending
select name from employees order by name

--order by where the  format is descending
select name from employees order by name desc



--should use having instead of where clouse when we are working with order by
select avg(performance),designation from employees group by designation having avg(performance)>95 order by avg(performance)


