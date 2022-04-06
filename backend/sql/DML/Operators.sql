--Operators(relational,logical,like,in,not in,between and)

use dlithesql

select * from employees

--Relational Operator

select * from employees where Designation ='IT' 

select * from employees where id <= 3

select * from employees where id >= 3

select * from employees where id > 2

select * from employees where id < 4

select * from employees where id != 2

--logical operators

select * from employees where id=1 and designation='IT'

select * from employees where id=1 or designation='IT'

--like

--Displays names starting with D

select * from employees where name like 'D%'

--Displays names ending with R

select * from employees where name like '%R'

--Displays names containg second letter as E

select * from employees where name like '_E%'

--Displays names which start from D and has minimum of 3 characters

select * from employees where name like 'D__%'

--Displays names which will be starting from letter S and letter D

select * from employees where name like '[SD]%';

--Displays names ranging from letter D to letter S

select * from employees where name like '[D-S]%';

--Not like

select * from employees where name not like '[D-S]%';

alter table employees ADD performance int;

update employees set performance = 98 where ID=1
update employees set performance = 97 where ID=2
update employees set performance = 96 where ID=3
update employees set performance = 99 where ID=4
update employees set performance = 98 where ID=5

--in 
--Displays employees where the designations are Design and Testing

select * from employees where Designation in ('Design' , 'Testing')

--not in
--Displays employees who are not belong to IT and HR Department

select * from employees where Designation not in ('IT' , 'HR')


--between and
--Selects employees where the performance ranges between 95 and 100

select * from employees where performance between 95 and 100




