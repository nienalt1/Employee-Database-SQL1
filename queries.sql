-- Select all employees
SELECT * FROM Employees;

-- Find employees in the IT department
SELECT FirstName, LastName, JobTitle 
FROM Employees 
WHERE DepartmentID = (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'IT');

-- Update an employee's salary
UPDATE Employees 
SET CurrentSalary = 80000 
WHERE Email = 'jane.smith@example.com';

-- Delete an employee
DELETE FROM Employees 
WHERE EmployeeID = 3;
