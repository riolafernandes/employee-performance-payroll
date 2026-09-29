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
-- 4. Employee Count and Average Salary in each Department
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

-- =====================================================
-- 5. Employee earnings more thsn Average Salary 
-- Nested Queries
-- =====================================================
SELECT
    EmpName,
    Salary
FROM Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
)
ORDER BY Salary DESC;

-- =====================================================
-- TENURE ANALYSIS
-- How many years have employees worked in the company (Tenure)
-- =====================================================
SELECT
    EmpName,
    HireDate,
    TIMESTAMPDIFF(
        YEAR,
        HireDate,
        CURRENT_DATE()
    ) AS TenureYears
FROM Employee
ORDER BY TenureYears DESC;

-- =====================================================
-- TENURE ANALYSIS
-- Longesy Tenure - Timestampdiff using Limit
-- =====================================================

SELECT
    EmpName,
    HireDate,
    TIMESTAMPDIFF(
        YEAR,
        HireDate,
        CURRENT_DATE()
    ) AS TenureYears
FROM Employee
ORDER BY HireDate
LIMIT 1;

-- =====================================================
-- PERFORMANCE ANALYSIS
-- Average Performance Score in each department
-- =====================================================
SELECT
    d.DeptName,
    ROUND(AVG(p.Score), 2) AS AveragePerformanceScore
FROM Department d
JOIN Employee e
    ON d.DeptID = e.DepartmentID
JOIN Performance p
    ON e.EmpID = p.EmpID
GROUP BY d.DeptName
ORDER BY AveragePerformanceScore DESC;


-- =====================================================
-- PERFORMANCE ANALYSIS
-- Average Performance Score of 8 or higher
-- =====================================================

SELECT
    e.EmpName,
    ROUND(AVG(p.Score), 2) AS AverageScore
FROM Employee e
JOIN Performance p
    ON e.EmpID = p.EmpID
GROUP BY e.EmpID, e.EmpName
HAVING AVG(p.Score) >= 8
ORDER BY AverageScore DESC;
