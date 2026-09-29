USE sqlproj;

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(15,2),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DeptID)
);

CREATE TABLE Performance (
    EmpID INT,
    ReviewDate DATE,
    Score INT CHECK (Score BETWEEN 1 AND 10),
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);
