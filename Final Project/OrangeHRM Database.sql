/*
DDL(data definition language) - helps define what kind of data will be stored in the database
DML(data manipulation language) - helps insert, update and delete data from the database
DQL(data query language) - helps retrieve information from the database 
*/

-- creating a database
create database OrangeHRM;
show databases;

-- creating a table with columns
create table users(
userId int not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
username varchar(50) not null,
dateOfBirth date not null,
userRole varchar(30) not null
);

create table job(
number int(30) not null auto_increment primary key,
jobTitles varchar(100) not null,
payGrades varchar(100) not null,
employmentStatus varchar(100) not null,
jobCategories varchar(100) not null,
workShifts varchar(100) not null
);

-- renaming the table
alter table users rename to adminUsers;

-- adding a new column to the table
alter table adminUsers 
add column address varchar(100);

-- updating a column in the table + creating a primary key
alter table adminUsers modify userId int not null auto_increment primary key;
alter table job modify payGrades char(50) not null;

-- deleting a column with drop
alter table adminUsers drop column address;

-- insert information into the table - one line
insert into adminUsers(userId, firstName, lastName, userName, dateOfBirth, userRole)
values(1, 'John', 'Doe', 'JohnDoe1', '1980-05-30', 'Admin');

-- insert information into the table - multiple lines
insert into adminUsers(userId, firstName, lastName, userName, dateOfBirth, userRole)
values(2, 'Darren', 'Phillips', 'DarrenPhillips34', '1975-11-02', 'ESS'),
(3, 'Maria', 'Popescu', 'mariapopescu20', '1990-01-15', 'Admin'),
(4, 'Narcia', 'Aders', 'narciaadesrs12', '1987-10-03', 'ESS');

insert into adminUsers(userId, firstName, lastName, userName, dateOfBirth, userRole)
values (5, 'George', 'Sand', 'georgesand1', '1982-03-03', 'ESS'),
(6, 'Dan', 'Cars', 'dancars11', '1993-05-01', 'Admin'),
(7, 'Emile', 'Dorane', 'emiledorane44', '1991-07-21', 'ESS'),
(8, 'Jason', 'Mallow', 'jasonmallow10', '1988-02-03', 'ESS'),
(9, 'Eduardo', 'Salana', 'eduardosalana2', '1984-09-29', 'Admin'),
(10, 'Tracy', 'Adams', 'tracyadams3', '1976-04-25', 'ESS');

insert into job(number, jobTitles, payGrades, employmentStatus, jobCategories, workShifts)
values(1, 'Chief Financial Officer', 'Grade 1', 'Full-time(5 years)', 'Banking', 'Day'),
(2, 'Senior Manager', 'Grade 1', 'Full-time(15 years)', 'Engineering', 'Day'),
(3, 'Gardener', 'Grade 5', 'Part-time(2 years)', 'Farming, fishing and forestry', 'Twilight'),
(4, 'Nurse', 'Grade 2', 'Full-time(10 years)', 'Health and medicine', 'Day'),
(5, 'Veterinarian', 'Grade 3', 'Full-time(8 years)', 'Health and medicine', 'Day'),
(6, 'Lawyer', 'Grade 1', 'Full-time(12 years)', 'Law and public policy', 'Day'),
(7, 'Sales Associate', 'Grade 4', 'Part-time(6 years)', 'Sales', 'Twilight'),
(8, 'Marketing Assistant', 'Grade 3', 'Full-time(3 years)', 'Business, management and administration', 'Day'),
(9, 'Art curator', 'Grade 2', 'Full-time(7 years)', 'Arts, culture and entertainment', 'Day'),
(10, 'Journalist', 'Grade 2', 'Full-time(9 years)', 'Communications', 'Day');

desc adminUsers;

-- updating information in the table on multiple lines
update adminUsers set firstName = 'Seth',
userName = 'SethDoe23'
where lastName = 'Doe';
update adminUsers set lastName = 'Clinton',
userName = 'mariaclinton2',
dateOfBirth = '1968-06-04',
userRole = 'ESS'
where firstName = 'Popescu';

update job set jobTitles = 'Financial Manager',
employmentStatus = 'Full-time(7 years)'
where jobCategories = 'Banking';

-- select all columns from the table
select * from adminUsers;
select * from job;

-- select one column from the table
select jobTitles, jobCategories from job;
select firstName, lastName, dateOfBirth from adminUsers;

-- select certain values from the table using 'Where', 'And', 'Or', 'Not'
select * from adminUsers where firstName = 'Maria';
select * from job where number = '6' and workShifts = 'Day';
select * from job where payGrades = 'Grade 5' or jobTitles = 'Sales Associate';
select * from adminUsers where userRole is not null;

-- select certain values from the table using 'Like'
select * from adminUsers where firstName like '%r%';
select * from adminUsers where username like '%0';
select * from job where jobTitles like 'S%';
select * from adminUsers where dateOfBirth like '197%';

-- aggregate functions
SELECT count(*) from adminUsers;
select min(payGrades) from job;
select max(dateOfBirth) from adminUsers;
select sum(number) from job;
select avg(userId) from adminUsers;

-- adding a new column to the table
alter table adminUsers 
add column city varchar(100);

-- updating column
update adminUsers set city = 'Toronto' where firstName = 'Seth';
update adminUsers set city = 'Bucharest' where firstName = 'Darren';
update adminUsers set city = 'New York' where firstName = 'Maria';
update adminUsers set city = 'Rome' where firstName = 'Narcia';
update adminUsers set city = 'Ciudad de Mexico' where firstName = 'George';
update adminUsers set city = 'Budapest' where firstName = 'Dan';
update adminUsers set city = 'Paris' where firstName = 'Emile';
update adminUsers set city = 'Madrid' where firstName = 'Jason';
update adminUsers set city = 'London' where firstName = 'Eduardo';
update adminUsers set city = 'Cairo' where firstName = 'Tracy';

-- 'group by' clause
select count(userId), city FROM adminUsers GROUP BY city;
select count(number), workShifts FROM job GROUP BY workShifts;

-- joins
select * from adminUsers cross join job;
select * from adminUsers right join job on adminUsers.userId = job.number;
select * from adminUsers left join job on adminUsers.userId = job.jobTitles;

-- delete function
-- deleting a column
alter table adminUsers drop userRole;

-- deleting the date inside the table but not the table itself
truncate table job;

-- deleting the table with all its data
drop table adminUsers;









