------------------UC1-CreateDatabase with name  Payroll service-------
Create DataBase Payroll_Service
use Payroll_Service
select db_name() as CurrentDatabase

-------------UC2-Creating the Table for the database-----
Create Table Employee_Payroll
(
id int identity,
Name varchar(50),
salary float,
startdate date
);
select *from Employee_Payroll;

-------UC3-Create Employee PayRoll data as a part of the crud operation------
insert into Employee_Payroll (Name, salary, startdate) values
('Dhoni', 8000000.00, '2005-07-25'),
('Dawan', 5000000.00, '2008-03-22'),
('Smrithi', 3000000.00, '2018-05-15'),
('kaur', 200000.00, '2016-02-03');


---------UC4-Retrive Data from Employee payRoll--------
select *from Employee_Payroll;

------UC5-Retrive the employee salary of the particular employee----
select salary from Employee_Payroll where Name='Dhoni';
select *From Employee_Payroll where startdate between CAST('2008-01-1' as date) and getdate();


----------UC6 Add gender to Employee Payroll table and update the rows to retrive the correct gender---
Alter table Employee_Payroll add Gender char(1);
Update Employee_Payroll set Gender = 'M' where id in (5, 6);
Update Employee_payroll set Gender = 'F' where id in (7,8);

-------UC7-- find sum, average, min, max and number of male and female employees--------
select sum(Salary) as sumsalary,Gender from Employee_payroll group by Gender;
select avg(Salary) as avgsalary,Gender from Employee_payroll group by Gender; 
select max(Salary) as maxsalary,Gender from Employee_payroll group by Gender; 
select min(Salary) as minsalary,Gender from Employee_payroll group by Gender; 
select count(Name) as EmployeeCount,Gender from employee_payroll group by Gender;  


