--b. Math functions

--Returns the absolute value of a given number:

SELECT Abs(-103.4) AS value;

--Trigonometric functions

SELECT sin(0.5);
SELECT cos(0.25);
SELECT tan(0.75);
SELECT cot(0.45);

--Displays avg value from a given column
SELECT AVG(performance) AS AVGPerformance FROM employees;

--converts radian values into degree

SELECT DEGREES(2.8);

--Exponent value
SELECT EXP(2);

--Returns largest int value i.e., less than the given value

SELECT FLOOR(45.25) AS equi;


--Returns largest int value i.e., greater than the given value

SELECT CEILING(43.95) AS CeilValue;

--Return the base-10 logarithm of a given number:

SELECT LOG10(7);

--counts the number of employees
SELECT count(ID) AS LargestPrice FROM employees;

-- displays top performer
SELECT MAX(Performance) AS TOPperformer FROM employees;

-- displays poor performer
SELECT Min(Performance) AS POORperformer FROM employees;

--returns pi value
select pi()

--power function
SELECT POWER(4, 2);

--return the square of a number:

SELECT SQUARE(4);

--calc the total sum
SELECT SUM(performance) AS TotalItemsOrdered FROM employees;

--c. Datetime functions