DELIMITER $$

CREATE PROCEDURE AddEmployee (
    IN firstName VARCHAR(100),
    IN lastName VARCHAR(100),
    IN email VARCHAR(100),
    IN phone VARCHAR(20),
    IN hireDate DATE,
    IN jobTitle VARCHAR(100),
    IN salary DECIMAL(10, 2),
    IN departmentID INT
)
BEGIN
    INSERT INTO Employees (FirstName, LastName, Email, Phone, HireDate, JobTitle, CurrentSalary, DepartmentID)
    VALUES (firstName, lastName, email, phone, hireDate, jobTitle, salary, departmentID);

    DECLARE newEmployeeID INT;
    SET newEmployeeID = LAST_INSERT_ID();

    INSERT INTO SalaryHistory (EmployeeID, Salary, EffectiveDate)
    VALUES (newEmployeeID, salary, CURDATE());
END$$

DELIMITER ;
