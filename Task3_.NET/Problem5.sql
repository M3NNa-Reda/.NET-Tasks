--
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    CONSTRAINT FK_Employees_Departments FOREIGN KEY (dept_id)
        REFERENCES Departments(dept_id)
);
insert into Departments values(101,'Sales');
insert into Departments values(102,'Marketing');
insert into Departments values(103,'IT');


insert into Employees values(1,'Alice',101);
insert into Employees values(2,'Bob',NULL);
insert into Employees values(3,'Charlie',102);
insert into Employees values(4,'Diana',NULL);

SELECT emp_name ,ISNULL(dept_name,'Unassigned')
FROM Employees left join Departments
on Employees.dept_id=Departments.dept_id;
