-- Inserting data into the Departments table
INSERT INTO Departments (DepartmentName) VALUES ('HR'), ('IT'), ('Sales'), ('Marketing');

-- Inserting data into the Employees table
INSERT INTO Employees (FirstName, LastName, Email, Phone, HireDate, JobTitle, CurrentSalary, DepartmentID) 
VALUES 
('John', 'Doe', 'john.doe@example.com', '555-1234', '2020-01-15', 'HR Manager', 60000, 1),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2021-03-10', 'Software Engineer', 75000, 2),
('Mike', 'Johnson', 'mike.johnson@example.com', '555-9876', '2019-06-25', 'Sales Executive', 50000, 3);
