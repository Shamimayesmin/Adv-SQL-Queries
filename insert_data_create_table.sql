-- Department table
-- Each department has many employees
CREATE Table Department (
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(50)
);

INSERT into Department values(1,'IT')

DELETE From Department where deptID = 1;

SELECT *from Department

-- Employee table
-- Each employee belongs to a department
CREATE table Employee (
    empID SERIAL PRIMARY KEY,
    empName VARCHAR(50) NOT NULL,
    departmentID INT,
    CONSTRAINT fk_constraint_dept FOREIGN KEY (departmentID) REFERENCES Department (deptID)
);

INSERT into Employee values(1,'Alina',1);

delete from Employee where empID = 1;

SELECT * FROM Employee