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



