--Aggregate functions
--max function

select max(performance),Designation from employees group by Designation

--min function

select min(performance),Designation from employees group by Designation

--count

select count(Designation) from employees 
--avg

select avg(performance),name from employees group by name

--sum


select sum(performance),Designation from employees group by Designation 


