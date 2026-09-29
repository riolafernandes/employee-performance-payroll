-- =====================================================
-- EMPLOYEE PERFORMANCE & PAYROLL ANALYTICS
-- Basic Employee Analysis
-- =====================================================

USE sqlproj;


-- =====================================================
-- 1. Employee and Department Overview
-- =====================================================

SELECT
    e.EmpID,
    e.EmpName,
    d.DeptName,
    e.HireDate,
    e.Salary
FROM Employee e
LEFT JOIN Department d
    ON e.DepartmentID = d.DeptID;


-- =====================================================
-- 2. Employee Count by Department
-- =====================================================

SELECT
    d.DeptName,
    COUNT(e.EmpID) AS EmployeeCount
FROM Department d
LEFT JOIN Employee e
    ON d.DeptID = e.DepartmentID
GROUP BY d.DeptName
ORDER BY EmployeeCount DESC;


-- =====================================================
-- 3. Salary Analysis
-- =====================================================

SELECT
    ROUND(AVG(Salary), 2) AS AverageSalary
FROM Employee;


-- =====================================================
-- 4. Employee Count in each Department
-- =====================================================
SELECT
    d.DeptName,
    COUNT(e.EmpID) AS EmployeeCount,
    ROUND(AVG(e.Salary), 2) AS AverageSalary
FROM Department d
LEFT JOIN Employee e
    ON d.DeptID = e.DepartmentID
GROUP BY d.DeptName
ORDER BY AverageSalary DESC;



