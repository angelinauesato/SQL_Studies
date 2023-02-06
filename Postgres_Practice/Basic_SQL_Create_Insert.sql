CREATE TABLE EmployeeDemographics (
    EmployeeID int, 
    FirstName varchar(50), 
    LastName varchar(50), 
    Age int, 
    Gender varchar(50)
);

CREATE TABLE EmployeeSalary (
    EmployeeID int, 
    JobTitle varchar(50), 
    Salary int
);

INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male'),
(1010, NULL, 'California', 42, 'Male');

INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);

--  PostgreSQL DESCRIBE TABLE using information_schema
SELECT 
   table_name, 
   column_name, 
   data_type 
FROM 
   information_schema.columns
WHERE 
   table_name = 'employeedemographics';

-- SELECT everything
SELECT * FROM employeedemographics;

-- SELECT a determined column
SELECT firstname FROM employeedemographics;

SELECT firstname, lastname FROM employeedemographics;

-- Limit 5 rows.
SELECT * FROM employeedemographics
fetch first 5 rows only;

SELECT * FROM employeedemographics
limit 5;

-- DISTINCT - unique value for a determined column.
SELECT DISTINCT(employeeid) FROM employeedemographics;

SELECT DISTINCT(gender) FROM employeedemographics;

-- COUNT -- It will count all the non-null values for a column
SELECT COUNT(employeeid) FROM employeedemographics;

-- AS - Alias for a column
SELECT COUNT(employeeid) AS "Total Employees" FROM employeedemographics;

-- MIN & MAX & AVG - Minimum, Maximum and Average value for a column
SELECT MIN(salary), MAX(salary), AVG(salary) FROM EmployeeSalary;

-- WHERE Statement
-- =, <>, <, >, AND, OR, LIKE, NULL, NOT NULL IN
-- = - Equals
SELECT * FROM EmployeeDemographics
WHERE FirstName = 'Jim';

-- <> - Different or NOT EQUAL
SELECT * FROM EmployeeDemographics
WHERE FirstName = 'Jim';

-- > - greater than
SELECT * FROM EmployeeDemographics
WHERE Age > 30;

-- >= - greater  equals than
SELECT * FROM EmployeeDemographics
WHERE Age >= 30;

-- < - less than
SELECT * FROM EmployeeDemographics
WHERE Age < 32;

-- <= - less equals than
SELECT * FROM EmployeeDemographics
WHERE Age <= 32;

-- <= - less equals than AND some condition
SELECT * FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male';

-- <= - less equals than OR some condition
SELECT * FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male';

-- LIKE - starts with S
SELECT * FROM EmployeeDemographics
WHERE LastName LIKE 'S%';

-- LIKE - contains S
SELECT * FROM EmployeeDemographics
WHERE LastName LIKE '%S%';

-- NULL - First Name is equal NULL value.
SELECT * FROM EmployeeDemographics
WHERE FirstName IS NULL;

-- NOT NULL - First Name is not equal NULL value.
SELECT * FROM EmployeeDemographics
WHERE FirstName IS NOT NULL;

-- IN - SORT item that belongs to a set.
SELECT * FROM EmployeeDemographics
WHERE FirstName IN('Jim', 'Michael')

-- BETWEEN - Sort items that belongs to a range
SELECT * FROM EmployeeDemographics
WHERE AGE BETWEEN 30 AND 40;


-- GROUP BY, ORDER BY
SELECT Gender, COUNT(*)
FROM EmployeeDemographics
GROUP BY Gender;

SELECT Gender, COUNT(*) AS "Total"
FROM EmployeeDemographics
GROUP BY Gender
ORDER BY "Total" DESC;