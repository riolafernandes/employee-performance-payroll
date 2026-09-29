USE sqlproj;

-- Insert departments
INSERT INTO Department (DeptID, DeptName)
VALUES
(1, 'IT'),
(2, 'Finance'),
(3, 'HR'),
(4, 'Marketing'),
(5, 'Learning'),
(6, 'Operations');


-- Insert employees
INSERT INTO Employee (EmpID, EmpName, DepartmentID, HireDate, Salary)
VALUES
(101, 'Riola Fernandes', 1, '2020-01-15', 75000.00),
(102, 'Jane Dsouza', 2, '2019-06-20', 82000.00),
(103, 'Edvin Peter', 1, '2021-03-10', 68000.00),
(104, 'Noel Fernandes', 3, '2022-08-01', 55000.00),
(105, 'Reeva Lobo', 4, '2018-11-12', 72000.00),
(106, 'Lisa Anderson', 5, '2023-02-18', 48000.00),
(107, 'Alan Taylor', 6, '2020-09-25', 65000.00),
(108, 'Taylor Logos', 5, '2021-07-14', 52000.00),
(109, 'Robert Martin', 2, '2017-04-05', 90000.00),
(110, 'Jessica White', 6, '2024-01-08', 58000.00);


-- Insert performance reviews
INSERT INTO Performance (EmpID, ReviewDate, Score)
VALUES
(101, '2022-12-15', 8),
(101, '2023-12-15', 9),
(102, '2023-06-20', 7),
(102, '2024-06-20', 9),
(103, '2023-03-10', 6),
(103, '2024-03-10', 8),
(104, '2023-08-01', 7),
(105, '2022-11-12', 8),
(105, '2023-11-12', 8),
(106, '2024-02-18', 6),
(107, '2023-09-25', 9),
(107, '2024-09-25', 10),
(108, '2023-07-14', 7),
(109, '2022-04-05', 9),
(109, '2023-04-05', 9),
(110, '2024-01-08', 8);
