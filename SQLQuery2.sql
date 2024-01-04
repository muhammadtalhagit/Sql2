create database classtask1;



-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT not null unique identity,
    DepartmentName VARCHAR(50)
);


INSERT INTO Departments (DepartmentName)
VALUES
    ('HR'),
    ('IT'),
    ('Finance');

	select * from Departments;


-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT not null unique identity,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
	Foreign key (DepartmentID) references Departments(DepartmentID)
);

	select * from Employees;

	INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary)
VALUES
    ('John', 'Doe', 1, 60000.00),
    ('Jane', 'Smith', 2, 55000.00),
    ('Mike', 'Johnson', 1, 65000.00),
    ('Emily', 'Williams', 3, 70000.00),
    ('David', 'Brown', 2, 50000.00),
    ('Sarah', 'Miller', 1, 62000.00),
    ('Chris', 'Wilson', 3, 75000.00),
    ('Anna', 'Jones', 2, 53000.00),
    ('Brian', 'Taylor', 1, 58000.00),
    ('Laura', 'Anderson', 3, 72000.00);


	-- Prjects table 

	create table Projects(
	projectsID int not null unique identity,
	projectName varchar(255) not null,
	EmployeesID int,
    Foreign key (EmployeesID) references Employees(EmployeeID)

	);

	insert into Projects(EmployeesID,projectName) values 
	(1,'Static website'),
	(2,'database'),
	(3,'Dynamic website'),
	(4,'Ecommerce website'),
	(5,'watches web'),
	(6,'Perfumes website'),
	(7,'Ebooks web'),
	(8,'Hospitals web'),
	(9,'covid web');

 select * from Projects;

 truncate table projects;
 -- Now join both tables 

 select * from Departments as d join Employees as e on d.DepartmentID = e.DepartmentID join Projects as p on p.EmployeesID = e.EmployeeID;

 -- q5

 select * from Employees where Salary > 50000;


 -- q6

 select Firstname, LastName, DepartmentName from Departments as d join Employees as e on d.DepartmentID = e.DepartmentID; 

 -- q7 

 select * from Employees where FirstName like 'S%';

 --q8

 select * from Projects as p join Employees as e on p.projectsID = e.EmployeeID;

  select * from Projects as p join Employees as e on p.projectsID = e.EmployeeID where projectName = 'database';

  --q9

  select SUM(Salary) from Employees;

  --q10
   select AVG(Salary) from Departments as d join Employees as e on d.DepartmentID = e.DepartmentID; 


   -- Done 