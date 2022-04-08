
--a. String functions
--displays ASCII code for first character

SELECT ASCII(SNAME) AS firstcharcode
FROM students;

--Char returns the ASCII number based on the given character
SELECT CHAR(68) AS chrval;

--Adds two String

SELECT CONCAT('DEEPAK', 'C R') AS name;

--or use +

SELECT 'DEEPAK' + 'C R'

--concats the string and adds the given seperator symbol to seperate the values

SELECT CONCAT_WS('*', 'Dlithe','Bootcamp','Program');

--Displays the length of a given string

SELECT DATALENGTH('W3Schools.com');

--Displays the diffrence between 2 string by an int value ranging from 0 to 4 o being the weak similarity and 4 being the highest similarity
SELECT DIFFERENCE('Deepak', 'Deepika');

SELECT DIFFERENCE('Deepak', 'Rohan');

--Extract the stings from the left for a given value
SELECT LEFT('Dlithe Bootcamp', 6) AS Company;

--Formats the given string to lower case
SELECT LOWER('INDIA') as country;

--Formats the given string to upper case
SELECT upper('india') as country;


--Returns string inside sqr brackets
SELECT QUOTENAME('BENGALURU')AS Capital;

--Replaces the a char or a string
SELECT REPLACE('Deepa', 'a', 'u')AS Alias;

SELECT REPLACE('Shridar', 'Shridar','DEEPAK')As 'new name'

--replicates the given string with the given number of times
SELECT REPLICATE('HUSTLE ', 10)as duplicate;


--prints the given string in Reverse order
SELECT REVERSE('DEEPAK')as inverse;

--Extract the stings from the Right for a given value

SELECT RIGHT('Dlithe Bootcamp', 8) AS Program;

--Rtrim,Ltrim and trim will trim the extra white spaces in a string

SELECT rtrim('Deepak      ')AS name;

SELECT ltrim('       Deepak')AS name;

SELECT ltrim('       Deepak       ')AS name;



