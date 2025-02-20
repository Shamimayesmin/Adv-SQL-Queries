--

CREATE Table if NOT EXISTS department (
    deptID SERIAL PRIMARY KEY,
    name text not null
);

CREATE TABLE IF NOT EXISTS employee (
    empID SERIAL PRIMARY KEY,
    name text not null,
    email text NOT NULL,
    salary INTEGER NOT NULL,
    joining_date DATE NOT NULL,
    deptID integer not null,
    CONSTRAINT fk_deptID FOREIGN KEY (deptID) REFERENCES department (deptID)
);

CREATE TABLE IF EXISTS people(
    empId SERIAL PRIMARY KEY
)


-- select all fields/rows
SELECT * FROM department;
SELECT * FROM employee

-- select some COLUMN

SELECT empid, name, email, joining_date, salary from employee;

SELECT * FROM employee
WHERE name <> 'Eve' AND salary > 90000 OR name = "Greta"


SELECT * FROM employee
ORDER BY name 
ASC LIMIT 10 OFFSET 2;



SELECT * FROM employee
ORDER BY name 
DESC;


-- Highest salary from employees table
SELECT * FROM employee ORDER BY salary DESC
LIMIT 1;

-- ThIRD HIGHEST SALARY
SELECT * FROM employee ORDER BY salary DESC
LIMIT 1 OFFSET 2;


-- IN, NOT IN, BETWEEN, LIKE
SELECT * FROM employee WHERE empid NOT IN(2,3,5);

SELECT * FROM employee WHERE salary BETWEEN 1000 AND 15000;

-- Like
SELECT * from employee where name like "A%";
SELECT * from employee where name like "%a";
SELECT * from employee where name like "%a%";


-- Specific position
SELECT * from employee where name like "__r%";
SELECT * from employee where name like "__r__";
SELECT * from employee where name like "G%a";




SELECT * FROM department;
SELECT * from employee;
SELECT * from employee INNER JOIN department ON department.departmentid = employee.departmentid;

SELECT * FROM employee LEFT JOIN department ON department.departmentid = employee.departmentid;
SELECT * FROM employee FULL JOIN department ON department.departmentid = employee.departmentid;


SELECT * FROM employee NATURAL JOIN department;
