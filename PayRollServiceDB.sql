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
