------------------------------ALL SQL QUERIES PRACTICAL FILE

---creating the multiple databases.

create database temp1;
create database temp2;
create database temp3;
create database temp4;

-- dropping the database 

drop database temp4;

--creating new database and dropping database 

create database hospital;
drop database hospital;

--creating another database 

create database college;
use college;
create table student(
id int primary key,
name varchar(50),
age int not null
);
--inserting values in the table of created database .

insert into student values(1,'aman',26);
insert into student values(2,'shradha',24);

-- viewing the entire information present in the database .

select*from student;

-- if no exists 

----create database if not exist college;
------if not exist 

-- if exists

drop database if exists temp2;

-- viewing all databases and tables

----show databases;
-----show tables;

drop table student;

-- created another table

create table student(
rollno int primary key,
name varchar(50)
);
---viewing all information present in the table 

select*from student;

---- inserting te values

insert into student values ( 101,'karan');
insert into student values ( 102,'arjun');
insert into student values ( 103,'ram');

--- after inserting the values veiwing all information present in the table.

select*from student;

----inserting new values in the table.

insert into student values ( 104,'shyam');

select*from student;

-----created new database 

create database company;

-------use is the keyword throug which we can use the same database repeatedly.
use company;
-----creating another table.

create table employee(
emp_id int primary key , 
emp_name varchar(50),
emp_salary int
);
--inserting multiple values

insert into employee values (1,'ankita',50000);
insert into employee values (2,'anu',50890);
insert into employee values (3,'nikita',50820);
----viewing alll information present in te table.

select*from employee;

--dropping the table

drop table temp1;

---creating another table

create table temp1(
id int unique
);

---inserting multiple values

insert into temp1 values (101);

----viewing alll information present in te table.

select*from temp1;
----creating multiple table below:

create table temp(
id int primary key , 
name varchar(20),
age int,
city varchar(20)
);

create table temp5(
id int , 
name varchar(20),
age int,
city varchar(20),
primary key (id)
);

create table temp6(
id int primary key , 
name varchar(20),
age int,
city varchar(20),
primary key (id,name)
);
---- the temp6 - this code will throw error as we cannot add the multiple primary keys.

---created new table

create table emp(
id int,
salary int default 25000
);

---inserting multiple values.

insert into emp values (1,'10000');
insert into emp values (1,'50000');
insert into emp values (1,'');
insert into emp values (1,default);
insert into emp values (1,'25000');
----viewing all information present in the table

select*from emp;

---creating new database 

create database college;

---dropping the database 

drop database college;

--after dropping created same database with the same name .

create database college;
use college;
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

--inserted multiple values.

insert into student values (101,'anil',78,'c','pune');
insert into student values (102,'bhumika',93,'a','mumbai');
insert into student values (103,'chetan',85,'b','mumbai');
insert into student values (104,'dhruv',96,'a','delhi');
insert into student values (105,'emanuel',12,'f','delhi');
insert into student values (106,'farah',82,'b','delhi');

----viewing all the information present in te table.

select*from student;

---below we are selecting the particular feild to view in the table by using diffferent methods:

select name , marks from student;

select city from student;

select distinct city from student;

select* from student where marks>80;

select*from student where city = 'mumbai';

select* from student where marks>80 and city = 'mumbai';

select*from student where marks+10>100;

select*from student where marks+5>100;

select*from student where marks = 93;

select*from student where marks >90 and city = 'mumbai'; 

select*from student where marks >90 or city = 'mumbai'; 

select*from student where marks between 80 and 90;

select*from student where city in ('delhi','mumbai');

select*from student where city not in ('delhi','mumbai');

select*from student limit3;

-----select* from student where marks > 75 Limit 3;
-----limit does not work in sql management studio 

select*from student order by city asc;

select*from student order by city desc;

select*from student order by marks asc;

----select*from student order by marks asc limit3;
-----limit does not work in sql management studio 

select*from student order by marks desc;

-----select*from student order by marks asc limit3;
-----limit does not work in sql management studio 

select max(marks) from student ;

select min(marks) from student ;

select avg(marks) from student ;

select count(rollno) from student ;

select city from student group by city;

select city,count(name) from student group by city ;

select city,count(rollno) from student group by city ;

select city , name , count(rollno) from student group by city , name;

select city , avg(marks) from student group by city; 

select city , avg(marks) from student group by city order by city;

select city , avg(marks) from student group by city order by avg(marks);

select city , avg(marks) from student group by city order by avg(marks) desc;

select city , avg(marks) from student group by city order by avg(marks) asc;

select grade  from student group by grade ;

select grade  from student group by grade order by grade asc ;

select grade  from student group by grade order by grade desc;

select grade , count(rollno)
from student 
group by grade 
order by grade;

select grade , count(rollno) from student  group by grade  order by grade;

select count(name), city from student group by city having max(marks)>90;

select count(rollno), city from student group by city having max(marks)>90;

select city from student where grade = 'a' group by city having max(marks) >90;

select city from student where grade = 'a' group by city having max(marks) >93;

select city from student where grade = 'a' group by city having max(marks) >93 order by city asc;

select city from student where grade = 'a' group by city having max(marks) >93 order by city desc;

update student set grade='0' where grade = 'a';

select*from student;

update student set marks = 82 where rollno = 105;

select*from student;

update student set grade = 'b' where marks>80;

select*from student;

update student set grade = 'b' where marks between 80 and 90;

select*from student;

update student set marks = marks+1;

select*from student;

update student set rollno='82' where rollno = 105;

select*from student;

update student set marks = 12 where rollno = 105;

select* from student ;

delete from student where marks < 33;

select* from student ;

----created new database 

create table dept(
id int primary key,
name varchar(50)
);

---inserting multiple values in the table

insert into dept values (101,'english');
insert into dept values (102,'IT');

---viewing all the information present in the table.

select*from student dept;

--updating the particular column of the table.

update dept set id = 103 where id = 102;

update dept set id = 111 where id = 103;

---viewing the information in the table after updation .

select*from dept;

---created the database  (performing join operation)

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key  ( dept_id) references dept(id)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key  ( dept_id) references dept(id)
on update cascade
on delete cascade
);

drop table teacher;

insert into teacher values (101,'adam',101);
insert into teacher values (102,'eve',102);

select* from teacher;

---created the database  (performing join operation)

create database hinduja;
create table pateints(
pateint_id int not null primary key,
pateint_name varchar(20)
);

create table neel(
pateint_id int
foreign key (pateint_id) references pateints,
);

--created thhe database 

create table student1(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

---inserted multiple values.

insert into student1 values (101,'anil',78,'c','pune');
insert into student1 values (102,'bhumika',93,'a','mumbai');
insert into student1 values (103,'chetan',85,'b','mumbai');
insert into student1 values (104,'dhruv',96,'a','delhi');
insert into student1 values (105,'emanuel',12,'f','delhi');
insert into student1 values (106,'farah',82,'b','delhi');

select*from student1;

---adding the new column in the table

alter table student1
ADD age int;

select*from student1;

alter table student1
drop column age;

select*from student1;

alter table student1
add age int not null default 19;

select*from student1;

----alter table student1
---rename to stu;

----alter table student1
---modify age varchar(2);

----alter table student1
----change age stu_age int;

--created database

create table student2(
rollno int not null,
name varchar(10),
marks int,
age int
);

insert into student2 values(108,'gargi',68,100);

select*from student2;

----alter table student2
----change age stu_age int;

drop table student2;

--created database

create table student2(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

--inserted multiple values

insert into student2 values (101,'anil',78,'c','pune');
insert into student2 values (102,'bhumika',93,'a','mumbai');
insert into student2 values (103,'chetan',85,'b','mumbai');
insert into student2 values (104,'dhruv',96,'a','delhi');
insert into student2 values (105,'emanuel',12,'f','delhi');
insert into student2 values (106,'farah',82,'b','delhi');

select*from student2;

---after truncating the table all the information will be lost from the table.

truncate table student2;

select*from student2;

--inserting multiple values.

insert into student2 values (101,'anil',78,'c','pune');
insert into student2 values (102,'bhumika',93,'a','mumbai');
insert into student2 values (103,'chetan',85,'b','mumbai');
insert into student2 values (104,'dhruv',96,'a','delhi');
insert into student2 values (105,'emanuel',12,'f','delhi');
insert into student2 values (106,'farah',82,'b','delhi');

select*from student2;

-----alter table student2
----change name full_name varchar(50);

delete from student where marks<80;

select*from student;

alter table student
drop column grade;

select*from student;

drop table course;

--created the database .

create table studentdata(
id int primary key,
name varchar(50)
);

insert into studentdata values (101,'adam');
insert into studentdata values (102,'bob');
insert into studentdata values (103,'casey');

select*from studentdata;

--created the database 

create table course(
id int primary key,
course varchar(50)
);

insert into course values (102,'english');
insert into course values (105,'maths');
insert into course values (103,'science');
insert into course values (107,'computer science');

select*from course;

select*from studentdata;
select* from course;

---performing various type of joins .

select*from studentdata inner join course on studentdata.id = course.id;

select*from studentdata as s inner join course on s.id = course.id;

select* from studentdata as s inner join course as c on s.id=c.id;

select* from studentdata as s left join course as c on s.id=c.id;

select* from studentdata as s right join course as c on s.id=c.id;

select* from studentdata as s full join course as c on s.id=c.id;

select* from studentdata as s full outer join course as c on s.id=c.id;

---- in the below code we ave used the aliases name.

select*
from studentdata as a
left join course as b 
on a.id = b.id
union
from studentdata as a
right join course as b 
on a.id = b.id;

select*
from studentdata as a 
left join course as b
on a.id = b.id
where b.id is null;

select*
from studentdata as a 
right join course as b
on a.id = b.id
where a.id is null;

select*
from studentdata as a 
full outer join course as b
on a.id = b.id
where b.id is null

select*
from studentdata as a 
full outer join course as b
on a.id = b.id
where a.id is null;

drop table employee;

--created new database .

create table employee(
id int primary key,
name varchar(50),
manager_id int
);

--- inserting multiple values.

insert into employee values (101,'adam',103);
insert into employee values (102,'adam',104);
insert into employee values (103,'adam',null);
insert into employee values (104,'adam',103);

-----veiwing all the information present in the table.

select*from employee;

---performing various types of joins .

select* from employee as a join employee as b on a.id = b.manager_id;

select a.name , b.name from employee as a join employee as b on a.id=b.manager_id;

select a.name as manager_name , b.name from employee as a join employee as b on a.id=b.manager_id;

---performing union & union all operation.

select name from employee
union 
select name from employee

select name from employee
union all
select name from employee

--- performing different aggregate functions on table.

select avg(marks)
from student1;

select name from student1 where marks>60;

select name , marks from student1 where marks>60;

select name ,marks from student1 where marks>(select avg(marks) from student1);

select marks from student1 where marks>(select avg(marks) from student1);

select name from student1 where marks>(select avg(marks) from student1);

select rollno from student1 where rollno%2=0;

select name
from student1
where rollno in (102,104,106);

select name,rollno
from student1
where rollno in (102,104,106);

select name , rollno
from student 
where rollno in(
select rollno 
from student
where rollno % 2 = 0 );

select max (marks) from (select * from student1 where city = ' mumbai') as temp;

select max (marks) from (select * from student1 where city = ' delhi') as temp;

select max(marks) from student1 where city = 'mumbai';

select(select max (marks) from student1) , name from student1;

---creating view.

-----create view view1 as 
-----select rollno,name, marks from student;

---viewing all the information present in the view.

select*from view1;

select*from view1
where marks>90;

---dropping the view.

drop view view1;

select * from view1;

---created the database with the new table .

create database world;
create table city(
id int primary key,
city varchar(50),
age int,
constraint age_check check (age>=5 and city = 'delhi')
);
----created another table.

create table newtab(
age int check (age>=10)
);

drop database collegedata;
drop table student;

---created database 

create database collegedata;
create table student(
rollno int primary key ,
name varchar(20),
marks int not null,
grade varchar(20),
city varchar(20)
);

----inserting multiple values.

insert into student values (1,'ankita',100,'a','mumbai');
insert into student values (2,'shamita',78,'b','pune');
insert into student values (3,'jonson',88,'c','delhi');
insert into student values (4,'asha',90,'d','jharkhand');
insert into student values (5,'amrendra',98,'a','bihar');

---viewing all information present in the table.

select*from student;

select name, marks from student;
select* from student;
select city from student;

---performing various functions on the table.

select distinct city from student; 

select*from student where marks>80;

Select* from student where city = 'mumbai';
Select* from student where marks >75 and city = 'mumbai';

select*from student where marks+10>100;

select*from student where marks = 100 ;

select*from student where marks > 90 ;

Select*from student where marks>50 and city = 'mumbai';

Select*from student where marks>50 or city = 'mumbai';

Select* from student where marks between 50 and 100;

Select*from student where city in ('delhi','mumbai');

Select* from student where city not in ('delhi','mumbai');

Select*from student limit3;

Select*from student Order by city asc;
Select*from student Order by city desc;

Select*from student Order by marks asc;
Select*from student Order by marks desc;

select(marks)from student;
select max(marks) from student;

select min(marks) from student;

select count(name) from student;

select sum(marks) from student;

select avg(marks) from student;

Select city 
From student
Group by city;

Select city , name, count(rollno)
From student
Group by name , city;

Select city , name,avg(marks)
From student
Group by name , city;

Select city, avg(marks) from student group by city order by city;

Select city, avg(marks) from student group by city order by avg (marks) asc;

Select city, avg(marks) from student group by city order by avg (marks) desc;

select grade, count(rollno) from student group by grade order by grade;

drop database employee1;

---created database 

create database employee1;
use employee1;
create table employee1(emp_id int primary key not null,emp_name varchar(20),emp_salary int , emp_dob datetime,
emp_email varchar(20) default 'abc123@gmail.com');

---inserting multiple values.

insert into employee1 values(1,'samiksha tambe',10000,'2004-03-23 04:01:12','samiktambe@gmail.com'),
(2,'ankita mishra',50000,'1999-10-09 03:20:30','anu123@gmail.com.com'),
(3,'komal sharma',45000,'2009-08-20 23:51:18','komal123@gmail.com'),
(4,'shradda jha',23000,'2007-08-20 23:02:18','shradda123@gmail.com'),
(5,'anushka singh',78000,'1999-10-09 03:20:30',default);

---viewing all information present in the table.

select* from employee1;

alter table employee1
add emp_designation varchar(20);

select* from employee1;

---performing various functions on the tbale.

alter table employee1
drop column emp_designation;

select* from employee1;

select emp_id=1
from employee1
where emp_salary>= 78000 and emp_name= 'anushka singh';

select emp_id
from employee1
where emp_salary>= 78000 or emp_name= 'anushka singh';

select emp_id
from employee1
where not emp_name= 'anushka singh';

select* from employee1
where emp_salary in (10000,45000,50000);

select*from employee1
order by emp_name desc;

select emp_name as emp_fullname
from employee1;

select concat (emp_name , emp_email)
from employee1;

select lower (emp_name)
from employee1;

select upper (emp_name)
from employee1;

select replace (emp_name,'samiksha' , 'samu')
from employee1;

select reverse ('samiksha')
from employee1;

select len ('ankita')
from employee1;
select len ('ankita');

select substring(emp_name,1,5)
from employee1;

select ltrim ('      ankita')
select rtrim ('     ankita     ');

select abs ('3');
select abs ('-3');

select (8526/789);

select floor (582213.36/896.36);
select ceiling (23.5);
select (7%3);

select sqrt (159);

select avg (emp_salary) as avg_salary 
from employee1;

select count (emp_name) 
from employee1;

select min (emp_salary) as avg_salary
from employee1;

select avg (emp_salary) as avg_salary 
from employee1;

select max (emp_salary) as avg_salary 
from employee1;

select sum (emp_salary) as avg_salary 
from employee1;

select emp_id, dateadd (day, 15 , emp_dob)
as payout from employee1; 

select emp_id, dateadd (month, 15 , emp_dob)
as payout from employee1; 

select emp_id, dateadd (year, 15 , emp_dob)
as payout from employee1; 

---created database .

create database collegemgmt;
create table student(
rollno int primary key ,
name varchar(20),
marks int not null,
grade varchar(20),
city varchar(20)
);

---inserted multiple values.

insert into student values (1,'ankita',100,'a','mumbai');
insert into student values (2,'shamita',78,'b','pune');
insert into student values (3,'jonson',88,'c','delhi');
insert into student values (4,'asha',90,'d','jharkhand');
insert into student values (5,'amrendra',98,'a','bihar');

---viewing all information present in the table.

select*from student;

----performing various operations on the table.

select name, marks from student;
select* from student;
select city from student;

select distinct city from student; 

select*from student where marks>80;

Select* from student where city = 'mumbai';
Select* from student where marks >75 and city = 'mumbai';

select*from student where marks+10>100;

select*from student where marks = 100 ;

select*from student where marks > 90 ;

Select*from student where marks>50 and city = 'mumbai';

Select*from student where marks>50 or city = 'mumbai';

Select* from student where marks between 50 and 100;

Select*from student where city in ('delhi','mumbai');

Select* from student where city not in ('delhi','mumbai');

Select*from student limit3;

Select*from student Order by city asc;
Select*from student Order by city desc;

Select*from student Order by marks asc;
Select*from student Order by marks desc;

select(marks)from student;
select max(marks) from student;

select min(marks) from student;

select count(name) from student;

select sum(marks) from student;

select avg(marks) from student;

Select city 
From student
Group by city;

Select city , name, count(rollno)
From student
Group by name , city;

Select city , name,avg(marks)
From student
Group by name , city;

---dropping table.

drop table student;

---created table

create table student(
student_id int primary key,
name varchar(20),
major varchar(20)
);

drop table student;

---after dropping created the same table.

create table student(
student_id int,
name varchar(20),
major varchar(20)
primary key (student_id)
);

---describe used to give entire information of the table.
-----describe student;

select*from student;

drop table student;

---performing alter operation .

alter table student
add GPA decimal (3,2);

select*from student;

alter table student drop column GPA;

select*from student;

---after alteration inserting multiple values in the table.

insert into student values(1,'jackson','biology');

select*from student;

insert into student(student_id , name) values (2,'kate');

insert into student(student_id , name) values (3,'clair');

select*from student;

---inserting multiple values.

insert into student values (5,'jackson','biology');
insert into student values (6,'kate','sociology');
insert into student (student_id , name)  values (7,'clair');
insert into student values (8,'jack','biology');
insert into student values (9,'mike','computer science');

---viewing all the information present in the table.

select*from student;

---created table with different functions.

create table student(
student_id int auto_increment,
name varchar(20),
major varchar(20)
primary key (student_id)
);

---inserting multiple values.

insert into student values ('jack','biology');
insert into student values ('mike','computer science');

---viewing all the information present in the table.

select*from student;

---performing various operations on the table.

update student
set major = 'bio'
where major = 'biology';

select*from student;

update student
set major = 'comp sci'
where major = 'computer science';

select*from student;

update student
set major = 'comp sci'
where student_id = 4;

select*from student;

update student
set major = 'biochemistry'
where major = 'bio' or major = 'cemistry';

select*from student;

update student
set name = ' tom' , major = 'undecided'
where student_id = 1;

select*from student;

update student
set major = 'undecided'

select*from student;

---performing deleting operation.

delete from student;

select*from student;

---drop table.

drop table student;

---created table.

create table student(
student_id int,
name varchar(20),
major varchar(20)
primary key (student_id)
);

---inserted multiple values.

insert into student values (1,'jack','biology');
insert into student values (2,'mike','computer science');
insert into student values (3,'jack','biology');
insert into student values (4,'mike','computer science');
insert into student values (5,'mike','computer science');

---viewing all the information present in the table.

select * from student;

---performing various operations .

delete from student 
where student_id = 5;

select * from student;

delete from student
where name = 'tom' and major = 'undecided';

select * from student;

delete from student;

select * from student;

drop table student;

---created table

create table student(
student_id int,
name varchar(20),
major varchar(20)
primary key (student_id)
);

---inserting multiple values.

insert into student values (1,'jack','biology');
insert into student values (2,'mike','computer science');
insert into student values (3,'jack','biology');
insert into student values (4,'mike','computer science');
insert into student values (5,'mike','computer science');

---viewing the entire information present in the table.

select* from student;

---selecting the particular feild from the table.

select name from student;

select name,major from student;

select student.name , student.major from student;

select student.name , student.major from student order by name asc;

select student.name , student.major from student order by name desc;

select student.name , student.major from student order by student_id desc;

select * from student order by major , student_id desc;

select * from student order by major , student_id asc;

select* from student limit2;

---peforming various operations.

select*
from student
order by student_id desc
----limit2;

select*
from student 
where major = 'biology';

select*
from student 
where major = 'biology' or major='chemistry';

select*
from student 
where major = 'cemistry' or name = 'kate';

select*
from student 
where major = 'cemistry';

select*from student;

select*
from student 
where major = 'computer science';

select name , major
from student
where student_id <3;

select name , major
from student
where student_id <3 and name<> 'jack';

select name , major
from student
where name in ('clair' , 'kate' , 'mike');

select name , major
from student
where major in ('biology','cemistry') and student_id > 2;

select name , major
from student
where major in ('biology','computer science') and student_id > 2;

----drop table.

drop table student;

---viewing entire information present in te table.

select*from student;

--created table.

create table employee1(
emp_id int primary key ,
first_name varchar(40),
last_name varchar(40),
birth_day date,
sex varchar(1),
salary int,
super_id int,
branch_id int
);

--inserting values in the table.

insert into employee1 values(100,'david' , 'jhonson','1967-11-17','m','25000400',null , null);

---viewing entire information present in the table.

select*from employee1;

---performing various operations .

update employee1
set branch_id = 1
where emp_id = 100;

---viewing information present in the table.

select*from employee1;

insert into employee1 values(102,'jan','levinson','null','458888','1967-12-05',null,null);

insert into employee1 values (1001,'alfred' , 'kate','1967-12-17','m','250400',null , null);

---viewing information present in the table.

select*from employee1;

insert into  employee1 values(103,'jany' , 'redrick','1999-01-18','m','2400',null , null);

--performing update operation .

update employee1
set branch_id = 2 
where emp_id = 102;

---viewing information present in the table.

select*from employee1;

---inserting multiple values.

insert into employee1 values (104,'ankita' , 'mishra','1999-10-09','m','2400329',null , null);
insert into employee1 values (105,'amrendra' , 'mishra','1967-08-15','m','2400695',null , null);
insert into employee1 values (106,'asha' , 'misra','1970-12-18','f','2445800',null , null);

---viewing information present in the table.

select*from employee1;

---inserting multiple values.

insert into employee1 values (107,'josh' , 'porter','1999-08-15','m','2405',null , null);

---viewing information present in the table.

select*from employee1;

---performing update operation.

update employee1
set branch_id = 3
where emp_id = 106;

---viewing information present in the table.

select*from employee1;

---inserting multiple values.

insert into employee1 values (108,'andy' , 'bernard','1999-08-15','m','2405',null , null);
insert into employee1 values (109,'jim' , 'halpert','1999-08-15','m','2405',null , null);

---viewing information present in the table.

select*from employee1;

---creating table.

create table branch1(
branch1_id int primary key,
branch1_name varchar(40),
mgr_id int,
mgr_start_date date,
foreign key(mgr_id) references employee (emp_id) on delete set null
);

---created another table.

create table branch10(
branch1_id int primary key,
branch1_name varchar(40),
mgr_id int,
mgr_start_date date
);

---inserting multiple values in the table.

insert into branch10 values (101,'corporate',1001,'1987-02-12');

---viewing the entire information present in the table.

select*from branch10;

---inserting multiple values in the table.

insert into branch10 values (102,'scranton','1002','1999-06-25');

---viewing the entire information present in the table.

select*from branch10;

---inserting multiple values in the table.

insert into branch10 values (103,'stanford','1003','1999-06-25');

--created table.

select*from branch10;
alter table employee1
add foreign key (branch_id)
references branch(branch_id)
on delete set null;

---performing alter operation on the table.

alter table employee1
add foreign key (super_id)
references branc(emp_id)
on delete set null;

--created table.

create table client1(
client1_id int primary key,
client1_name varchar(20),
branch1_id int,
foreign key(branch1_id) references branch1 (branch1_id) 
on delete set null
);

--created table.

create table works_with(
emp_id int primary key,
client_id int,
total_sales int,
primary key(emp_id,client_id),
foreign key(emp_id) references employee(emp_id) on delete set null,
foreign key(client_id) references client(client_id) on delete set null
);

--created table.

create table works_with(
emp_id int primary key,
client_id int,
total_sales int,
primary key(emp_id,client_id),
foreign key(emp_id) references employee(emp_id) on delete cascade,
foreign key(client_id) references client(client_id) on delete set cascade
);

---created database 

create database data;
create table branch_supplier1(
id int not null,
name  varchar(20),
product varchar(20)
);

---inserting multiple values.

insert into branch_supplier1 values (101,'ankita mishra','gucci bag');
insert into branch_supplier1 values (102,'nikita jha','bag');
insert into branch_supplier1 values (103,'shamita sheety','perfume');
insert into branch_supplier1 values (104,'asha mishra','laptop');
insert into branch_supplier1 values (105,'shruti jha','iphone');

---viewing entire information present in te table.

select*from branch_supplier1;

---creating table.

create table client20(
id int not null,
name  varchar(20),
product varchar(20),
pro_sold int
);

---inserting multiple values.

insert into client20 values (101,'ankita mishra','gucci bag','25');
insert into client20 values (102,'nikita jha','bag','58');
insert into client20 values (103,'shamita sheety','perfume','89');
insert into client20 values (104,'asha mishra','laptop','89');
insert into client20 values (105,'shruti jha','iphone','69');

---viewing entire information present in te table.

select*from client20;

---creating table.

create table works_with5(
id int not null,
name  varchar(20),
product varchar(20),
total_sales int
);

---inserting multiple values.

insert into works_with5 values (101,'ankita mishra','gucci bag','25');
insert into works_with5 values (102,'nikita jha','bag','59');
insert into works_with5 values (103,'shamita sheety','perfume','69');
insert into works_with5 values (104,'asha mishra','laptop','87');
insert into works_with5 values (105,'shruti jha','iphone','23');

---viewing entire information present in te table.

select*from works_with5;

----selecting particular columns from the table & performing various operations.

select*from branch_supplier1 , client2 , works_with3;

select*
from employee1;

select*
from client2;

select*
from employee1
order by salary;

select*
from employee1
order by salary DESC;

select*
from employee1
order by sex , first_name;

select*
from employee1
order by sex , first_name , last_name;

select*
from employee1
limit5;

select*
from employee1;

select first_name , last_name
from employee1;

select first_name as forename , last_name as surname
from employee1;

select distinct sex
from employee1;

select distinct branch_id
from employee1;

select count(emp_id)
from employee1;

select count(super_id)
from employee1;

select count(emp_id)
from employee1
where sex = 'f' and birth_day >'1970-01-01';

select avg(salary)
from employee1;

select avg(salary)
from employee1
where sex = 'm';

select sum(salary)
from employee1;

select count(sex)
from employee1;

select count(sex)
from employee1
group by sex;

select sum(total_sales) , id
from works_with5
group by id;

select sum(pro_sold) , id
from client20
group by id;

select*
from branch_supplier1
where name like '%llc';

select*
from branch_supplier1
where name like '% label%';

select*
from employee1
where birth_day like '    -10%';

select*
from employee1
where birth_day like '    -02%';

select*
from client20
where name like '%school%';

select first_name from employee1;

select name from branch_supplier1;

select first_name from employee1
union
select name from branch_supplier1;

select first_name from employee1
union
select name from branch_supplier1;

select first_name from employee1
union
select name from branch_supplier1
union
select name from client20;

select first_name as company_names from employee1
union
select name from branch_supplier1
union
select name from client20;

select name from client20
union
select name from branch_supplier1;

select name , id from client20
union
select name , id from branch_supplier1;

select name , client20.id from client20
union
select name , branch_supplier1.id from branch_supplier1;

select salary 
from employee1
union
select total_sales
from works_with5;

insert into branch_supplier1 values (106,'amanda jockey','one plus');

select*from branch_supplier1;

---created table.

create table emp_info50(
emp_id int primary key,
emp_name varchar(20),
emp_salary int
);
---inserting multiple values.

insert into emp_info50 values (1001,'rocky','500000');
insert into emp_info50 values (1002,'rocks','589000');
insert into emp_info50 values (1003,'darky','500250');

---viewing entire information present in the table.

select*from emp_info50;

---created table.

create table emp_data50(
emp_id int primary key,
emp_name varchar(20),
emp_salary int
);

---inserting multiple values.

insert into emp_data50 values (1004,'amanda','58900');
insert into emp_data50 values (1005,'charlie','55400');
insert into emp_data50 values (1006,'sandy','53650');

---viewing entire information present in the table.

select*from emp_data50;

---performing various operations 

select id
from works_with5
where total_sales >30000;

select id
from works_with5
where total_sales >300;

select works_with5.id from works_with5
where works_with5.total_sales > 10;

---subqueries 

select employee1.first_name , employee1.emp_id
from employee1
where emp_id in (
select works_with5.id from works_with5
where works_with5.total_sales > 10
);

select client20.name
from client20
where client20.id = (
select branch_supplier1.id
from branch_supplier1
where branch_supplier1.id = 102
);

select client20.name
from client20
where client20.id = (
select branch_supplier1.id
from branch_supplier1
where branch_supplier1.id = 102
---limit 1
);

---created table.

create table branchinfo(
branchinfo_id int primary key,
branchinfo_name varchar (20),
mgr_id int,
mgr_start_date date,
foreign key(mgr_id) references employee1(emp_id) on delete set null,
);

---viewing entire information present in the table.

select*from branchinfo;

--performing delete operation 

delete from employee1
where emp_id = 102;

---viewing entire information present in the table.

select*from employee1;

---drop table.

drop table branch_supplier1;

---after dropping table viewing entire information present in the table.

select*from branch_supplier1;

---create table

create table branch_supply(
id int,
name varchar(20),
type varchar (20),
primary key(id , name),
foreign key (id) references branch_supply on delete cascade
);

--performing delete operation

delete from branch
where id = 2;

---viewing entire information present in the table.

select*from branch_supply;

---create table.

create table triggertest(
message varchar(100)
);

---used to start and end the code.
---it is used when we are creating stored procedures or triggers.
---it is used to avoid the conflict with the semicolons within sql statements.

---create triggger.
---multiple trigger table with multiple functions are created .

delimiter $$
create
trigger my_trigger before insert 
on employee1
for each row begin
insert into trigger_test values ('added new employee');
end $$
delimiter;

---inserting multiple values.

insert into employee1 values (110,'oscar','martinez','1968-02-19','M',69000,106,3);

---viewing entire information present in the trigger.

select*from trigger_test;

---create trigger

delimiter $$
create
trigger my_trigger before insert 
on employee1
for each row begin
insert into trigger_test values ('new.first_name');
end $$
delimiter;

---inserting multiple values.

insert into employee1 values (110,'kevin','martinez','1968-02-19','M',69000,106,3);


---viewing entire information present in the trigger.

select*from trigger_test;

---creating trigger
---inserting multiple values.

delimiter $$
create 
trigger my_trigger before insert
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

---inserting multiple values.

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

---viewing entire information present in the trigger.

select*from trigger_test;

---creating trigger .

delimiter $$
create 
trigger my_trigger2 before insert
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

---creating trigger

delimiter $$
create 
trigger my_trigger2 before insert
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

--- inserting ,multiple values.

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

---viewing entire information present in the trigger .

select*from trigger_test;

---creating trigger 

delimiter $$
create 
trigger my_trigger2 before update
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

---inserting multiple values.

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

---viewing entire information present in the trigger .

select*from trigger_test;

---create trigger

delimiter $$
create 
trigger my_trigger2 before delete
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

---inserting multiple values.

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

---viewing entire information present in the trigger .

select*from trigger_test;

---create trigger .

delimiter $$
create 
trigger my_trigger2 after delete
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

---inserting multiple values

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

---viewing entire information present in the trigger .

select*from trigger_test;

---creted new database and table.

create database empmanagement;
create table empdatabase(
id int primary key,
name varchar(20),
dept varchar(20),
salary int,
hiredate date
);

---inserting multiple values.

insert into empdatabase values (1, 'John Doe', 'IT','50000', '2023-01-01');
insert into empdatabase values (2, 'Jane Smith', 'HR','89000' ,'2023-02-02');
insert into empdatabase values (3, 'Bob deo', 'Finance','93000' ,'2023-03-10');
insert into empdatabase values (4,'amanda alison','finance','58000','2023-08-15');
insert into empdatabase values (5,'alice brown','marketing','89000','2023-04-20');

----viewing entire information present in the table.

select*from empdatabase;

---performing various operations on the table.

SELECT * FROM empdatabase WHERE Dept = 'IT';

SELECT Name, HireDate FROM empdatabase WHERE HireDate >= DATEADD(MONTH, -6, GETDATE());	

UPDATE empdatabase SET dept = 'New Job Title', Salary = Salary + 5000 WHERE ID = 1;

select*from empdatabase;

CREATE ROLE Manager;
GRANT UPDATE ON empdatabase TO Manager;

select*from empdatabase;

CREATE ROLE Viewer;
GRANT SELECT ON empdatabase TO Viewer;

select*from empdatabase;

---created table.

create table  emp_info10(
empName varchar(20), empID int, empdeptName varchar(20) primary key, emphireDate date, empsalary bigint , jobtitle varchar(20));

---inserting multiple values in the table.

insert into emp_info10 values ('john',10,'IT','2023-01-01','1000000','data analyst');
insert into emp_info10 values ('sam', 20 ,'sales','2024-08-08','1007800','data scientist');
insert into emp_info10 values ('amanda', 30,'HR','2028-12-10','1004700','ML engineer');
insert into emp_info10 values ('ceily',40,'finance','2023-06-04','1000980','tableau developer');
insert into emp_info10 values ('deo',50,'marketing','2021-01-01','1000360','python developer');

----viewing entire information present in the table.

select* from emp_info10;

---create table.

create table emp_info30(
empName varchar(20), empID int, empdeptName varchar(20) primary key, emphireDate date, empsalary bigint , jobtitle varchar(20));

---inserting multiple values.

insert into emp_info30 values ('emma',10,'IT','2003-01-01','1008900','jr. analyst');
insert into emp_info30 values ('mila', 20 ,'operations','2024-08-08','1007800','data scientist');
insert into emp_info30 values ('amanda', 30,'HR','2028-12-10','1004700','ML engineer');
insert into emp_info30 values ('ceily',40,'finance','2023-06-04','1000980','tableau developer');
insert into emp_info30 values ('deo',50,'marketing','2021-01-01','1000360','python developer');

----viewing entire information present in the table.

select*from emp_info30;

---performing different types of joins.

select*from emp_info10 inner join emp_info30 on emp_info10.empID = emp_info30.empID;

---created table.

create table  emp_info100  (emp_Name varchar(22), emp_ID int, emp_deptName varchar(22) primary key, emp_hireDate date, emp_salary bigint , job_title varchar(22));
insert into emp_info100 select * from emp_info100 where emp_Name in (select emp_Name from emp_info100) ;

----viewing entire information present in the table.

select* from emp_info100;

---created table.

create table emp_department1000 (dept_Id int, emp_deptName varchar(22) , foreign key(emp_deptName) references emp_info100 (emp_deptName));
insert into emp_department1000 select * from emp_department1000 where emp_deptName in (select emp_deptName from emp_department1000);

----viewing entire information present in the table.

select* from emp_department1000;

-- inserting multiple values.

insert into emp_info100 values ('ankit',7,'operation','2017-08-20',180060,'analyst'),
('vaishnavi',8,'sales','2016-01-12',1405800,'accountant'),('vanes',9,'support','2021-10-05',19508,'consultant');

---performing joins operations .

select emp_info100.emp_deptName , emp_info100.emp_Name , emp_department1000.dept_Id from emp_info100 inner join emp_department1000 on emp_info100.emp_deptName = emp_department1000.emp_deptName;

---created table

create table employees (
emp_Id int primary key , emp_Name varchar(20) , department varchar(20));

-- inserting multiple values.

insert into employees values(100,'johnson','IT'),(101,'jenelia','sales'),(102,'boby','accounts');
select * from employees;

----viewing entire information present in the table.

select*from employees;

---created table

create  table emptraining_sessions(
session_Id int primary key , dession_Name varchar(20) , session_date date , trainer_Name varchar(20));

-- inserting multiple values.

insert into emptraining_sessions values(1007, 'SQL basics','2023-02-02','ankita');
insert into emptraining_sessions values (1008,'PBS','2023-10-12','sumit');
insert into emptraining_sessions values (1005,'Data Science','2023-09-10','jaya');

----viewing entire information present in the table.

select*from emptraining_sessions;

---performing rename operationm on the table.

exec sp_rename 'emptraining_sessions.decision_name','session_name','column';
select*from emptraining_sessions;

---created table

create table student5(
 student_id int primary key,
 student_name varchar(20)not null,
 Grade char(5)not null,
 marks int);
 
 -- inserting multiple values.

 insert into student5 values(1,'suyog','A',60);
 insert into student5 values(2,'sumit','B',65),(3,'prem','C',55),(4,'vinod','A',68),(5,'pratish','A',85),(6,'sam','B',55),(7,'ram','B',56);
 select * From student5;

 ---performing rename operation 

 EXEC SP_RENAME ‘Student5’ , ‘COLUMN’

 --create database 

create database Customer;
use Customer;
create table Customer(
Cust_id int primary key,
Cust_name varchar(20),
product varchar(10),
price int);

---inserting multiple values.

insert into Customer values(1,'suyog','Mobile',25000),
(2,'sumit','laptop',65000),
(3,'prem','charger',1500),
(4,'vindo','pendrive',200),
(5,'pratish','keyboard',1500),
(6,'ramesh','bakery',100),
(7,'sam','Tshirt',500),
(8,'tom','jeans',1000);

---viewing the entire information present in the table.

select * from Customer;

---drop table.

drop table customer;

create database Customer1;

use Customer1;
create table Customer_Details(
Cust_ID int, Cust_Name varchar(30), Product varchar(20), Price float );

insert into Customer_Details values (1,'ABB', 'BMM TANK', 558850),
(1,'ABB', 'BQH TANK', 320000),
(1,'ABB', 'CTQ TANK', 475400),
(1,'ABB', 'BKK TANK', 685000),
(2,'Alstom', 'Concrette Ballast', 420150),
(2,'Alstom', 'E-Loco Door', 286382),
(3,'AlstomBT', 'Cab Structure', 825855),
(4,'JCB', 'Mounting Plate', 25000),
(4,'JCB', 'Mounting Beam', 87258.7),
(4,'JCB', 'Fan Cowl', 487.5),
(5,'Plasser', 'USP CABIN', 884850),
(5,'Plasser', 'MFI CABIN', 875400),
(5,'Plasser', 'Bracket Filler Rod',480.25),
(2,'Alstom', 'AC Duct', 5880.6);

create database Hospital1;
use Hospital1;

create table Doctor(
Did int primary key,
Dname varchar(20) not null,
Ddepart varchar(10),
Dphone bigint );

insert into Doctor values(1,'Dr Ramesh','MBBS',95959),
(2,'Dr Santosh','BAMS',85285),(3,'Dr Manoj','MBBS',98337),(4,'Dr Rajesh','ORTHO',98741),(5,'Dr Samarth','BUMS',98569),
(6,'Dr Suyog','BAMS',85285),(7,'Dr Sameer','PHSYO',93215),(8,'Dr Ravi','MBBS',87987),(9,'Dr Rohit','GYNC',85478),(10,'Dr Akash','BUMS',85795);

select * from Doctor;

use Hospital1;
create table Patient(
Pid int not null,
Pname varchar(20) not null,
Page int,
check (page >=18),
Plocation varchar(20) default 'kamothe',
Did int,
foreign key(Did) references Doctor(Did));
--- alter operation 

alter table Patient
add Email varchar(20);

alter table Patient
modify Pid varchar(20);

alter table Patient
rename column Pid to Patient_id;

alter table Patient
add mobilenumber bigint;

alter table Patient
drop column Email;

---use truncate to delete complete table;

use Hospital1;

---performing various operations .

update Doctor
set Ddepart='BAMS' ,Dphone=98965
where Did=1;

update Doctor
set Ddepart='BAMS'
where Did=2;

delete from Doctor
where Did=10;

select Did,Dname
from Doctor
where Did=5;

select * from Doctor
where Ddepart='MBBS';

select * from Doctor
where Ddepart LIKE 'M%';

select * from Doctor
where Ddepart LIKE '_U%S';

select * from Doctor
where Ddepart LIKE '__B%';

create table emp1(emp_id int primary key,
emp_firstname varchar(20),
emp_lastname varchar(20),
salary int,
designation varchar(25),
phone_no bigint,
address varchar(20),
email_id varchar(30) unique);

Create Database EMPLOYEE;
use EMPLOYEE;
Create table EMPLOYEE3(
Emp_id  int UNIQUE,
Emp_name varchar (100),
Emp_Salary int ,
Emp_Designation varchar(100),
Phone_number bigint UNIQUE,
Emp_Address varchar (100),
Emp_Email_id varchar (100) UNIQUE);

Insert into EMPLOYEE3 values(1,'AYUSH',25000,'CEO',11111,'MAHARASTRA','ayush@gmail.com'),
(2,'LABONEE',30000,'MANAGER',22222,'MANIPUR','labonee@gmail.com'),
(3,'SUJAL',35000,'EMPLOYEE',33333,'HYDRABAD','sujal@gmail.com'),
(4,'AYUSH',30000,'EMPLOYEE',44444,'KERELA','ayush1@gmail.com'),
(5,'KSHITIJ',60000,'MANAGER',55555,'JHARKHAND','kshitij@gmail.com'),
(6,'MRUNAL',35000,'EMPLOYEE',66666,'ODISHA','mrunal@gmail.com'),
(7,'NIHAL',30000,'EMPLOYEE',77777,'NAGALAND','nihal@gmail.com'),
(8,'ADWAIT',60000,'MANAGER',88888,'PUNJAB','adwait@gmail.com'),
(9,'KRUNAL',35000,'EMPLOYEE',99999,'MAHARASTRA','krunal@gmail.com'),
(10,'SHUBHAM',46000,'EMPLOYEE',10101,'TELANGANA','shubham@gmail.com'),
(11,'SHREYA',25000,'EMPLOYEE',11110,'UTTAR PRADESH','shreya@gmail.com'),
(12,'KSHITIJ',72000,'MANAGER',12121,'WEST BENGAL','kshitij1@gmail.com'),
(13,'JAADU',33000,'EMPLOYEE',13131,'ODISHA','jaadu@gmail.com'),
(14,'NIHAL',30500,'EMPLOYEE',14141,'WEST BENGAL','nihal1@gmail.com'),
(15,'ATHARVA',75000,'MANAGER',15151,'MADHYA PRADESH','atharva@gmail.com');

select * from EMPLOYEE3;

Create table Orders (
	orderId int primary key,
    orderDate datetime,
    productName varchar(20)
);

Insert into Orders values 
(1,'2023-11-01 11:05:00','Pen'),
(2,'2023-05-31 01:15:25','Book'),
(3,'2022-07-18 15:06:18','Laptop'),
(4,'2022-08-19 19:28:14','Pen'),
(5,'2023-08-05 06:18:30','Bottle'),
(6,'2021-06-08 09:19:20','Pen'),
(7,'2023-03-16 11:16:50','Mobile'),
(8,'2021-06-04 16:29:30','Laptop'),
(9,'2020-03-07 23:15:20','Bottle'),
(10,'2021-01-05 10:11:48','Cover');

create database emp_mgnt_DB;
use  emp_mgnt_DB;

create table department
(dept_Id int not null primary key, dept_Name varchar(25) unique);

create table emp_Details
(emp_Id int not null primary key,emp_firstName varchar(22) ,
emp_lastName varchar(25),emp_Age int ,
emp_DOB date,emp_contact bigint,emp_emailId varchar(25) unique,
dept_Id int , foreign key (dept_Id) references department (dept_Id));
alter table emp_Details add emp_gender varchar(20);
select* from emp_Details;
select* from department;

drop table emp_Details;

insert into department values (101,'Mechanical'),(201,'CS'),(255,'EXTC'),
(200,'IT'),(110,'Electrical'),(333,'Production');
insert into emp_Details values 
(1,'Vaibhav','Dhanawade',30,'1994-01-08',8652529551,'vaibhav@gmail.com',101,'Male'),
(2,'Dipali','Dhanawade',25,'1998-10-11',8828521382,'dipali@gmail.com',201,'Female'),
(3,'Virang','Dhanawade',1,'2023-12-06',8652529551,'virang@gmail.com',200,'Male'),
(4,'Vidya','Narne',32,'1992-06-12',8652657262,'vidya@gmail.com',333,'Female'),
(5,'Namrata','Bhilare',28,'1996-09-17',3124576890,'namarata@gmail.com',110,'Female'),
(6,'Suhani','Bhilare',3,'2019-03-08',9805672341,'suhani@gmail.com',255,'Female'),
(7,'Sunil','Bhilare',35,'1990-11-22',8890765234,'sunil@gmail.com',110,'Male'),
(8,'Samarat','Narne',37,'1988-09-12',7568904312,'samarat@gmail.com',333,'Male'),
(9,'Vinmay','Junghare',24,'2000-09-23',9123457690,'vinmay@gmail.com',255,'Male'),
(10,'Vaishnavi','Junghare',22,'2002-12-22',9078564523,'vaishu@gmail.com',255,'Female'),
(11,'Devansh','Narne',7,'2017-05-07',9991234560,'devansh@gmail.com',333,'Male'),
(12,'Nilesh','Gavde',30,'1995-04-15',1234567890,'nilesh@gmail.com',101,'Male'),
(13,'Ivan','Gavde',30,'1995-04-15',1234567890,'ivan@gmail.com',101,'Male'),
(14,'Varad','Gavde',30,'1995-04-15',1234567890,'varad@gmail.com',101,'Male'),
(15,'Arti','Singh',2,30/01/1985,8652529551,'arti@gmail.com',101,'Female'),
(16,'Jeevan','Shete',25,08/01/1994,8652529551,'jeevan@gmail.com',200,'Male'),
(17,'Ayush','More',25,08/01/1994,8652529551,'ayush@gmail.com',201,'Male'),
(18,'Sarika','Dundle',33,11/01/1984,8652529551,'sarika@gmail.com',201,'Female'),
(19,'Akash','Vende',15,20/01/2010,8652529551,'akash@gmail.com',110,'Male'),
(20,'Poonam','Jadhav',40,01/02/1993,8652529551,'poonam@gmail.com',110,'Female');

--performing various operations on the table.

update emp_Details
set emp_DOB='1985-01-30' where emp_Id=15;
update emp_Details
set emp_DOB='1998-04-05' where emp_Id=16;
update emp_Details
set emp_DOB='2002-12-20' where emp_Id=17;
update emp_Details
set emp_DOB='1990-06-11' where emp_Id=18;
update emp_Details
set emp_DOB='1993-07-18' where emp_Id=19;
update emp_Details
set emp_DOB='1992-02-13' where emp_Id=20;
update emp_Details 
set emp_Age=24 where emp_Id=15;
update emp_Details 
set emp_Age=31 where emp_Id=19;
select *from emp_Details where dept_Id=201 ;

create database emp_mgnt_DB;
use  emp_mgnt_DB;

create table department
(dept_Id int not null primary key, dept_Name varchar(25) unique);

create table emp_Details
(emp_Id int not null primary key,emp_firstName varchar(22) ,
emp_lastName varchar(25),emp_Age int ,
emp_DOB date,emp_contact bigint,emp_emailId varchar(25) unique,
dept_Id int , foreign key (dept_Id) references department (dept_Id));
alter table emp_Details add emp_gender varchar(20);
select* from emp_Details;
select* from department;

drop table emp_Details;

insert into department values (101,'Mechanical'),(201,'CS'),(255,'EXTC'),
(200,'IT'),(110,'Electrical'),(333,'Production');
insert into emp_Details values 
(1,'Vaibhav','Dhanawade',30,'1994-01-08',8652529551,'vaibhav@gmail.com',101,'Male'),
(2,'Dipali','Dhanawade',25,'1998-10-11',8828521382,'dipali@gmail.com',201,'Female'),
(3,'Virang','Dhanawade',1,'2023-12-06',8652529551,'virang@gmail.com',200,'Male'),
(4,'Vidya','Narne',32,'1992-06-12',8652657262,'vidya@gmail.com',333,'Female'),
(5,'Namrata','Bhilare',28,'1996-09-17',3124576890,'namarata@gmail.com',110,'Female'),
(6,'Suhani','Bhilare',3,'2019-03-08',9805672341,'suhani@gmail.com',255,'Female'),
(7,'Sunil','Bhilare',35,'1990-11-22',8890765234,'sunil@gmail.com',110,'Male'),
(8,'Samarat','Narne',37,'1988-09-12',7568904312,'samarat@gmail.com',333,'Male'),
(9,'Vinmay','Junghare',24,'2000-09-23',9123457690,'vinmay@gmail.com',255,'Male'),
(10,'Vaishnavi','Junghare',22,'2002-12-22',9078564523,'vaishu@gmail.com',255,'Female'),
(11,'Devansh','Narne',7,'2017-05-07',9991234560,'devansh@gmail.com',333,'Male'),
(12,'Nilesh','Gavde',30,'1995-04-15',1234567890,'nilesh@gmail.com',101,'Male'),
(13,'Ivan','Gavde',30,'1995-04-15',1234567890,'ivan@gmail.com',101,'Male'),
(14,'Varad','Gavde',30,'1995-04-15',1234567890,'varad@gmail.com',101,'Male'),
(15,'Arti','Singh',2,30/01/1985,8652529551,'arti@gmail.com',101,'Female'),
(16,'Jeevan','Shete',25,08/01/1994,8652529551,'jeevan@gmail.com',200,'Male'),
(17,'Ayush','More',25,08/01/1994,8652529551,'ayush@gmail.com',201,'Male'),
(18,'Sarika','Dundle',33,11/01/1984,8652529551,'sarika@gmail.com',201,'Female'),
(19,'Akash','Vende',15,20/01/2010,8652529551,'akash@gmail.com',110,'Male'),
(20,'Poonam','Jadhav',40,01/02/1993,8652529551,'poonam@gmail.com',110,'Female');

---performing various operations on the table.

update emp_Details
set emp_DOB='1985-01-30' where emp_Id=15;
update emp_Details
set emp_DOB='1998-04-05' where emp_Id=16;
update emp_Details
set emp_DOB='2002-12-20' where emp_Id=17;
update emp_Details
set emp_DOB='1990-06-11' where emp_Id=18;
update emp_Details
set emp_DOB='1993-07-18' where emp_Id=19;
update emp_Details
set emp_DOB='1992-02-13' where emp_Id=20;
update emp_Details 
set emp_Age=24 where emp_Id=15;
update emp_Details 
set emp_Age=31 where emp_Id=19;

select *from emp_Details where dept_Id=201 ;
select * from emp_Details where emp_Age >=25;
select * from emp_Details where emp_Age <=25;
select * from emp_Details where emp_Age <=25 and emp_DOB='2023-12-06';
select emp_firstName , emp_lastName, dept_Id  from emp_Details where emp_Age>=25 and emp_DOB='1994-01-08' ;
select *from emp_Details where dept_Id=300;
select *from emp_Details where dept_Id=333;
select emp_firstName from emp_Details where emp_Age  between 15 and 30;
select * from emp_Details where emp_Age  between 1 and 10;
select emp_firstName from emp_Details where emp_gender='female';
select * from emp_Details where emp_gender='male';
select  emp_Age from emp_Details where emp_gender='male';
select * from emp_Details where  emp_gender='male';
select* from emp_Details where emp_Age<=10 and emp_firstName='virang';
select emp_firstName , emp_lastName from emp_Details where emp_Age>=20 or emp_gender='male';
select emp_firstName , emp_lastName from emp_Details where emp_Age>=20 and emp_gender='male';
select emp_firstName,emp_lastName from emp_Details where emp_firstName  like '%y';
select * from emp_Details where emp_firstName  like 'v%';
select * from emp_Details where emp_firstName  like '__p%';
select * from emp_Details where emp_firstName  like 'v__%a';
select upper (dept_Name) from department;
select upper (emp_emailId) from emp_Details;
select length(dept_Name) from department;
select length(emp_emailId) from emp_Details;
select length(emp_lastName) from emp_Details;
select length(emp_firstName) from emp_Details;
select substr(emp_firstName,3,8) from emp_Details;
select substring(emp_lastName,2,5) from emp_Details;
select lower(emp_lastName) from emp_Details;
select lower(emp_firstName) from emp_Details;
select lower(dept_Name) from department;
select reverse(dept_Id) from department;
select reverse(dept_Name) from department;
select reverse(emp_emailId) from emp_Details;
alter table emp_Details 
add column emp_salary double ;
alter table emp_Details drop column emp_salary;
select*from emp_details;
alter table emp_Details add emp_salary float;
update emp_Details
set emp_salary=200000 where emp_Id=1;
update emp_Details
set emp_salary=100000 where emp_Id=2;
update emp_Details
set emp_salary=90000 where emp_Id=3;
update emp_Details
set emp_salary=80000 where emp_Id=4;
update emp_Details
set emp_salary=75000.89 where emp_Id=5;
update emp_Details
set emp_salary=65000 where emp_Id=6;
update emp_Details
set emp_salary=70000.56 where emp_Id=7;
update emp_Details
set emp_salary=50000 where emp_Id=8;
update emp_Details
set emp_salary=25000 where emp_Id=9;
update emp_Details
set emp_salary=20000 where emp_Id=10;
update emp_Details
set emp_salary=10000.40 where emp_Id=11;
update emp_Details
set emp_salary=10000.50 where emp_Id=12;
update emp_Details
set emp_salary=55000 where emp_Id=13;
update emp_Details
set emp_salary=40000.40 where emp_Id=14;
update emp_Details
set emp_salary=35000.60 where emp_Id=15;
insert into emp_Details values(21,'xyz','def',10,'1989-08-05',9412567890,'xyz@gmail.com',200,'Female',30000);
select *from emp_Details order by emp_salary desc;

create database student;
use student;
create table student_info(
student_id int primary key,
student_firstname varchar(20) not null,
student_lastname varchar(20) not null,
student_branch varchar(20) not null);
insert into student_info values(1,'pushpit','mandloi','computer'),
(2,'prateek','jadhav','computer'),
(3,'anuj','sawant','computer'),
(4,'amar','jamadade','computer'),
(5,'shreyash','mali','civil'),
(6,'kaustubh','pital','civil'),
(7,'ranjit','singh','civil'),
(8,'sahil','late','AI'),
(9,'pranav','mokal','AI'),
(10,'sahil','mahale','electrical'),
(11,'yash','bhalrao','electrical'),
(12,'pranay','kasbe','mechanical'),
(13,'sunny','pawshe','mechanical'),
(14,'saurabh','gawade','mechanical'),
(15,'nikhil','mogare','mechanical');
select*from student_info;
select student_id,student_firstname from student_info;
create table stu_info(
id int foreign key references student_info(student_id),
student_firstname varchar(20));

insert into stu_info values(1,'pushpit'),
(2,'prateek'),
(3,'anuj'),
(4,'amar');

select*from stu_info;

alter table student_info
add age int;

select*from student_info;

insert into student_info(student_id,student_firstname,student_lastname,student_branch,age) values (19,'pushpit','mandloi','computer',22);
insert into student_info(student_id,student_firstname,student_lastname,student_branch,age) values (22,'prateek','jadhav','computer',20),
(23,'anuj','sawant','computer',18),
(24,'amar','jamadade','computer',17);

alter table student_info

drop column age;

---performing various operations on the table.

update student_info
set student_branch = 'computer'
where student_id = 5;
select*from student_info;
delete from student_info
where student_id = 6;
select distinct student_id from student_info;
select*from student_info
where student_branch = 'computer';
select student_firstname
from student_info
where student_firstname like'p%';
select student_firstname
from student_info
where student_firstname like'%t';
select student_firstname
from student_info
where student_branch not like 'computer';
select student_id as id
from student_info;
select*from student_info
order by student_branch;
select*from student_info
order by student_branch desc;
select concat(student_firstname,student_lastname) as full_name
from student_info;
select upper(student_firstname)
from student_info;
truncate table stu_info;

create database records;
use records;

create table worker1(
worker_id int primary key,
worker_name varchar(20),
worker_mobilenumber int,
worker_email_id varchar(30) NOT NULL,
worker_joindate datetime,
worker_designation varchar(20) DEFAULT 'abc@gmail.com',
worker_salary int);


insert into worker1 values(1,'amar',8765,'amar@gmail.com','2021-12-01 11:02:02','manager',50000);
insert into worker1 values(2,'pratik',8965,'pratik@gmail.com','2022-11-01 06:03:35','employee',5000);
insert into worker1 values(3,'anuj',3456,'anuj@gmail.com','2021-05-10 05:04:20','case',8000);
insert into worker1 values(4,'pushpit',1234,'pushpit@gmail.com','2020-08-09 04:05:28','food',3000);
insert into worker1 values(5,'shreyash',9546,'shreyash@gmail.com','2023-06-22 03:06:02','nursing',9000);
insert into worker1 values(6,'kaustubh',5467,'kaustubh@gmail.com','2019-05-31 02:07:59','superwisor',5500);
insert into worker1 values(7,'manoj',7489,'manoj@gmail.com','2021-12-01 01:08:06','dataentry',5200);

select*from worker1;

exec sp_rename worker_name, name;

---perfroming various operations 

alter table worker1
drop column worker_salary
select*from worker1;

truncate table worker1
select*from worker1;

update worker1
set worker_name='akash'
where worker_id=1
select*from worker1;

delete from worker1
where worker_id=1
select*from worker1;

select worker_id, worker_name from worker1
where worker_id=7
select*from worker1;

select*from worker1
where worker_salary<=10000;

select*from worker1
order by worker_designation;

select*from worker1
order by worker_name desc;

select worker_designation as worker_name from worker1;

select concat(worker_name, worker_designation) as worker_info from worker1;

select upper(worker_name) from worker1;

select lower(worker_designation) from worker1;

select replace(worker_name, 'amar', 'aaaa') from worker1;

select reverse(worker_mobilenumber) from worker1;

select len(worker_email_id) from worker1;

select substring(worker_designation, 1,3) from worker1;

select ltrim(	worker_mobilenumber) from worker1;

select rtrim(worker_name) from worker1;

select abs(worker_salary) from worker1;

select floor(1.5) from worker1;

select ceiling(555.777) from worker1;

select round(56.99,12) from worker1;

select sqrt(144) from worker1;

select avg(worker_salary) as avg_salary from worker1;

select count(worker_id) from worker1;

select max(worker_salary) from worker1;

select sum(worker_salary) from worker1;

select getdate() from worker1;

select sysdatetime() from worker1;

select worker_name as worker_date from worker1
where worker_id=7;

select worker_id, dateadd(day,10, worker_joindate) as payout from worker1;

select worker_id, datediff(year, '2019-05-31','2021-12-01') as payout from worker1;

create database players;
use players;

create table player3(
player_id int not null,
last_name varchar(20),
first_name varchar(20),
DOB datetime,
fav_game varchar(20),
salery bigint );

insert into player3 values(1,'Jadhav','Pratik','2003-09-02 05:12:29','Cricket',500000);
insert into player3 values(2,'Jamdade','Amar','2003-07-19 07:12:28','Freefire',400000);
insert into player3 values(3,'Sawant','Anuj','2003-07-29 07:13:27','Cricket',300000);
insert into player3 values(4,'Mandloi','Pushpit','2001-06-22 22:13:12','Football',200000);
insert into player3 values(5,'Mali','Shreyash','2003-12-27 08:14:32','volleyball',100000);
insert into player3 values(6,'Sanap','Sanket','2003-09-23 09:15:27','Badminton',50000);
insert into player3 values(7,'Sawant','Soham','2003-10-05 01:15:26','Polo',40000);
insert into player3 values(8,'Toraskar','Rutuja','2003-07-05 11:16:32','Golf',30000);
insert into player3 values(9,'Artificial','Anushka','2001-01-22 12:55:22','Chess',20000);
insert into player3 values(10,'Soni','Princess','2001-10-12 13:16:42','Soccer',10000);
insert into player3 values(11,'Bhalerao','Yash','1999-04-02 14:13:42','Hockey',60000);
insert into player3 values(12,'Mahale','Sahil','2002-06-01 15:12:32','Baseball',50000);
insert into player3 values(13,'Patil','Rohit','2000-12-22 16:17:32','Boxing',550000);
insert into player3 values(14,'Yadav','Rutik','2003-02-02 17:36:22','Cycling',20000);
insert into player3 values(15,'Pilane','Abhishek','2002-08-18 18:46:12','Handball',60000);

select*from player3;

--performing various operations 

select first_name 
from player3
where salery>=60000;

select last_name 
from player3
where salery>=100000 and fav_game= 'cricket';

select player_id 
from player3 
where salery>=300000 or fav_game='cricket';

select*from 
player3
where salery between 100000 and 500000;

select*from
player3 
where salery in(100000,200000,300000);

select*from
player3
where first_name like('pr%');

Alter table player3
add email varchar(30);

alter table player3
Drop column email;

select*from player3;

update player3
set salery=100000 , fav_game='cricket'
where player_id=11;

delete from player3
where player_id=7;

select player_id,first_name from player3;

select distinct last_name from player3;

select*
from player3
where salery=10000;

select*from player3
order by last_name;

select* from player3
order by first_name desc;

select* from player3
order by first_name,fav_game;

select player_id as id
from player3;

select concat('last_name','first_name') as full_name from player3;

select lower('last_name')
from player3;

select upper(first_name)
from player3;

select replace (salery,200000,20)
from player3;

select reverse(last_name)
from player3

select len (first_name)
from player3;

select substring(first_name,1,4)
from player3;

select avg(salery)as avg_sal from player3;

select count(first_name) from player3;

select max(salery) avg_sal from player3;

select min(salery) avg_sal from player3;

select sum (salery) from player3;

select DOB as DOB
from player3
where player_id=1;

select player_id, dateadd(day,10,DOB)as payout from player3;

select player_id, datediff(day,'2003-09-02','2003-09-23')as payout from player3;
select player_id, datediff(month,'2003-09-02','2023-07-29')as payout from player3;
select player_id, datediff(year,'2001-06-22','2003-09-02')as payout from player3;

truncate table player3;

CREATE database studentinformation;

create table student02(stu_id int primary key,student_name varchar(400),student_stream varchar(400), student_percent float,student_grade char(100), student_marks float);

insert into student02 values(1,'Abhisheik Mahtre','Science',51.32,'C',350);
insert into student02 values(2,'Shubham Meshram','Commerce',76.23,'B',600),(3,'Shweta Patil','Arts',88.20,'A',900),
(4,'Shiv Kumar ','Arts',68.20,'B',700),
(5,'Rutuja Patil','Science',40.10,'C',300),
(6,'Rohit Wadkar','Science',74.23,'A',600),
(7,'Omkar Ankat','Science',72.30,'A',550),
(8,'Omkar Ankat','Science',72.30,'A',550),
(9,'Rohit Wadkar','Science',74.23,'A',600),
(10,'Shiv Kumar ','Arts',68.20,'B',700),
(11,'Rohit Wadkar','Science',74.23,'A',600),
(12,'Jayesh Sathe','Comm');

create table student17(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null);

insert into student17 values(1,'anuj','juinagar','anuj05@gmail.com',20);
insert into student17 values(2,'pratik','kalamboli','pratik@gmail.com',17),
(3,'amar','kalamboli1','amar@gmail.com',19);
insert into student17 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student17 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20),
(9,'adi','satara1','adi@gmail.com',19),
(10,'mayur','beed','mayur@gmail.com',23);
insert into student17 values(11,'pravin','rajasthan','',21);

select*from student17;

--performing avrious operations 

update student17
set student_age=20
where student_id=2;

delete 
from student17
where student_id=3;

select student_add,student_age from student17;

alter table student17
add student_no int;

alter table student17
remove student_no int;

alter table student17
drop column student_no;

select*from student17;

truncate table student17;

create table student21(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null);

select*from student21;

insert into student21 values(1,'anuj','juinagar','anuj05@gmail.com',20);
insert into student21 values(2,'pratik','kalamboli','pratik@gmail.com',17),
(3,'amar','kalamboli1','amar@gmail.com',19);
insert into student21 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student21 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20),
(9,'adi','satara1','adi@gmail.com',19),
(10,'mayur','beed','mayur@gmail.com',23);
insert into student21 values(11,'pravin','rajasthan','',21);

select*from student21;

select student_add 
from student21
where student_name='sahil' and student_id=7;

select student_name
from student21
where student_age>=19;

select student_name 
from student21
where not student_age<=21;

select student_name
from student21
where student_age between  19 and 21;

select student_name
from student21
where student_age not between  19 and 21; 

select student_name 
from student21
where student_age in (19,20,21)

select* 
from student21
where student_name like ('a%');

select*
from student21
where student_name like ('%r')

select*
from student21
where student_name like ('m%r')

select* from student21 
order by student_id;

select* from student21 
order by student_id desc;

select student_id as stud_id 
from student21;

select concat (student_id,student_name) as idandname
from student21;

select upper(student_name) from student21;

select replace (student_name,'amar', 'amarjamdhade') from student21;

select len (student_name) from student21;

select reverse(student_name) from student21;

select max(student_age) as age from student21;

select min(student_age) as age from student21;

select avg(student_age) as agw from student21;

select substring(student_name,1,4)
from student21;

create table student22(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null,
admission_date datetime);

insert into student22 values(1,'anuj','juinagar','anuj05@gmail.com',20,'2021-07-03 11:05:08');
insert into student22 values(2,'pratik','kalamboli','pratik@gmail.com',17,'2017-09-8 08:07:09');
insert into student22 values(3,'amar','kalamboli1','amar@gmail.com',19,'2018-03-28, 09:32;21');
insert into student22 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student22 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20);
select*from student22;

select getdate() from student22;

select SYSDATETIME() from student21;

select admission_date as date2
from student22
where student_id=3;

select student_id, DATEADD(day,20,admission_date) as payout from student22;

select student_id, datediff(day,10,admission_date) as payout from student22;

create table student17(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null);

insert into student17 values(1,'anuj','juinagar','anuj05@gmail.com',20);
insert into student17 values(2,'pratik','kalamboli','pratik@gmail.com',17),
(3,'amar','kalamboli1','amar@gmail.com',19);
insert into student17 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student17 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20),
(9,'adi','satara1','adi@gmail.com',19),
(10,'mayur','beed','mayur@gmail.com',23);
insert into student17 values(11,'pravin','rajasthan','',21);

select*from student17;

---performing various operations 

update student17
set student_age=20
where student_id=2;

delete 
from student17
where student_id=3;

select student_add,student_age from student17;

alter table student17
add student_no int;

alter table student17
remove student_no int;

alter table student17
drop column student_no;

select*from student17;

truncate table student17;

create table student21(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null);

select*from student21;

insert into student21 values(1,'anuj','juinagar','anuj05@gmail.com',20);
insert into student21 values(2,'pratik','kalamboli','pratik@gmail.com',17),
(3,'amar','kalamboli1','amar@gmail.com',19);
insert into student21 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student21 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20),
(9,'adi','satara1','adi@gmail.com',19),
(10,'mayur','beed','mayur@gmail.com',23);
insert into student21 values(11,'pravin','rajasthan','',21);
select*from student21;

--performing various operations 

select student_add 
from student21
where student_name='sahil' and student_id=7;


select student_name
from student21
where student_age>=19;

select student_name 
from student21
where not student_age<=21;

select student_name
from student21
where student_age between  19 and 21;

select student_name
from student21
where student_age not between  19 and 21; 

select student_name 
from student21
where student_age in (19,20,21)

select* 
from student21
where student_name like ('a%');

select*
from student21
where student_name like ('%r')

select*
from student21
where student_name like ('m%r')

select* from student21 
order by student_id;

select* from student21 
order by student_id desc;

select student_id as stud_id 
from student21;

select concat (student_id,student_name) as idandname
from student21;

select upper(student_name) from student21;

select replace (student_name,'amar', 'amarjamdhade') from student21;

select len (student_name) from student21;

select reverse(student_name) from student21;

select max(student_age) as age from student21;

select min(student_age) as age from student21;

select avg(student_age) as agw from student21;

select substring(student_name,1,4)
from student21;

create table student22(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null,
admission_date datetime);

insert into student22 values(1,'anuj','juinagar','anuj05@gmail.com',20,'2021-07-03 11:05:08');
insert into student22 values(2,'pratik','kalamboli','pratik@gmail.com',17,'2017-09-8 08:07:09');
insert into student22 values(3,'amar','kalamboli1','amar@gmail.com',19,'2018-03-28, 09:32;21');
insert into student22 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student22 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20);
select*from student22;

select getdate() from student22;

select SYSDATETIME() from student21;

select admission_date as date2
from student22
where student_id=3;

select student_id, DATEADD(day,20,admission_date) as payout from student22;

select student_id, datediff(day,10,admission_date) as payout from student22;

Create database Assignment;
use Assignment;
Create Table Student1(
Student_Id int Primary key,
Student_Name Varchar (100),
Student_Last_Name Varchar (100),
Student_Grade Varchar(10),
Student_Percentage int);

insert into Student1 values
(1,'Ayush','Bagwe','A',93.25),
(2,'Labonee','Kumbhare','B',83.75),
(3,'Kshitij','Satpal','C',79.22),
(4,'Ayush','Bhagat','D',67.54),
(5,'Rishab','Shetty','A',96.32),
(6,'Kirtan','Solanki','C',72.86),
(7,'Atharva','Shinde','D',61.45),
(8,'Rahul','Prabhu','B',86.22),
(9,'Binay','Gupta','C',77.54),
(10,'Jiten','Patel','D',66.32);

select * from Student1;

---performing various operations .

select * from Student1
order by Student_Name;

select * from Student1
order by Student_Name DESC;

select Student_Name as Name
from Student1;

select concat (Student_Name,Student_Last_Name) as Student_Fullname from Student1;

select Lower(Student_Name) as Name from Student1;

select Upper(Student_Name) as Name from Student1;

select Replace(Student_Name,'Ayush','Bagwe') as Name from Student1;

select Reverse(Student_Name) as Name from Student1;

select Len(Student_Name) as Name from Student1;

select Substring(Student_Name,1,4) as Name from Student1;

Select Student_Name
from Student1
where Student_Percentage>=75 and Student_Grade='A';

Select Student_Name
from Student1
where Student_Percentage>=75 or Student_Grade='A';

Select Student_Name
from Student1
where not Student_Grade='A';

Select * 
from Student1
Where Student_Percentage between 75 and 90;

Select *
from Student1
where Student_Percentage in (72,79,86);

select *
from Student1
where Student_Name LIKE 'K%';

select *
from Student1
where Student_Name LIKE '%l';

select *
from Student1
where Student_Name LIKE 'A%a';

select *
from Student1
where Student_Name LIKE '_i%';

select *
from Student1
where Student_Name NOT LIKE 'K%';

Select Max(Student_Percentage) as Maxpercentage from Student1; 

Select Min(Student_Percentage) as Minpercentage from Student1;

Select Sum(Student_Percentage) as Sumpercentage from Student1;

update Student1
set Student_Grade='A',Student_Percentage=75
where Student_Id=4;

update Student1
set Student_Name='Nidhish'
where Student_Id=2;

alter table student1
add student_no int;

alter table student1
drop column student_no;

create database employee;
use employee;
create table employee2(emp_id int primary key not null,emp_name varchar(20),emp_salary int , emp_dob datetime,
emp_email varchar(20) default 'abc123@gmail.com');

insert into employee2 values(1,'samiksha tambe',10000,'2004-03-23 04:01:12','samiktambe@gmail.com'),
(2,'ankita mishra',50000,'1999-10-09 03:20:30','anu123@gmail.com.com'),
(3,'komal sharma',45000,'2009-08-20 23:51:18','komal123@gmail.com'),
(4,'shradda jha',23000,'2007-08-20 23:02:18','shradda123@gmail.com'),
(5,'anushka singh',78000,'1999-10-09 03:20:30',default);

select* from employee2;

---performing various operations .

alter table employee2
add emp_designation varchar(20);

alter table employee2
drop column emp_designation;
select* from employee2;

select emp_id=1
from employee2
where emp_salary>= 78000 and emp_name= 'anushka singh';

select emp_id
from employee2
where emp_salary>= 78000 or emp_name= 'anushka singh';

select emp_id
from employee2
where not emp_name= 'anushka singh';

select* from employee2
where emp_salary in (10000,45000,50000);

select*from employee2
order by emp_name desc;

select emp_name as emp_fullname
from employee2;

select concat (emp_name , emp_email)
from employee2;

select lower (emp_name)
from employee2;

select upper (emp_name)
from employee2;

select replace (emp_name,'samiksha' , 'samu')
from employee2;

select reverse ('samiksha')
from employee2;

select len ('ankita')
from employee2;
select len ('ankita');

select substring(emp_name,1,5)
from employee2;

select ltrim ('      ankita')
select rtrim ('     ankita     ');

select abs ('3');
select abs ('-3');

select (8526/789);

select floor (582213.36/896.36);
select ceiling (23.5);
select (7%3);

select sqrt (159);

select avg (emp_salary) as avg_salary 
from employee2;

select count (emp_name) 
from employee2;

select min (emp_salary) as avg_salary
from employee2;

select avg (emp_salary) as avg_salary 
from employee2;

select max (emp_salary) as avg_salary 
from employee2;

select sum (emp_salary) as avg_salary 
from employee2;

select emp_id, dateadd (day, 15 , emp_dob)
as payout from employee2; 

select emp_id, dateadd (month, 15 , emp_dob)
as payout from employee2; 

select emp_id, dateadd (year, 15 , emp_dob)
as payout from employee2;

create database Employee;
use Employee;

create table Employee2(
EMP_ID int Unique, EMP_Name varchar(30), EMP_Designation varchar(20), Salary int,  Phone_Num bigint Unique, EMP_Address varchar(40) , Email varchar(40));
insert into Employee2 values (1,'Erik Ten Hag','Manager',75000,87484563,' Holland','eriktenhag@manutd.com'),
(2,'Aaron Wan Bissaka','Right Back',50000,84632573,'England','abissaka@manutd.com'),
(3,'Luke Shaw','Left Back',120000,81780583,'England','lukeshaw@manutd.com'),
(4,'Harry Maguire','Centre Back',250000,78928593,'England','hmaguire@manutd.com'),
(5,'Raphael Varane','Centre Back',280000,76076603,'France','rvarane@manutd.com'),
(6,'Victor Lindelof','Centre Back',200000,73224613,'Sweden','vlindelof@manutd.com'),
(7,'Jonny Evans','Centre Back',100000,70372623,'Northern Ireland','jevans@manutd.com'),
(8,'Casemiro','Defensive Mid',375000,85520633,'Brazil','casemiro@manutd.com'),
(9,'Kobbie Mainoo','Defensive Mid',20000,84668643,'England','kmainoo@manutd.com'),
(10,'Bruno Fernandes','Midfielder',425000,82816653,'Portugal','bfernandes@manutd.com'),
(11,'Marcus Rashford','Left Winger',375000,85964663,'England','mrashford@manutd.com'),
(12,'Antony','Right Winger',200000,89112673,'Brazil','antony@manutd.com'),
(13,'Antony Garnacho','Left Winger',75000,83260683,'Argentina','agarnacho@manutd.com'),
(14,'Anthony Martial','Striker',175000,80408693,'France','amartial@manutd.com'),
(15,'Rasmus Hojlund','Striker',250000,84556703,'Denmark','rhojlund@manutd.com'),
(16,'Jadon Sancho','Winger',250000,88704713,'England','jsancho@manutd.com'),
(17,'Christian Eriksen','Midfielder',175000,81852723,'Denmark','ceriksen@manutd.com'),
(18,'Mason Mount','Midfielder',250000,89000733,'England','mmount@manutd.com'),
(19,'Brandon Williams','Left Back',20000,82148743,'England','bwilliams@manutd.com'),
(20,'Diogo Dalot','Right Back',50000,79296753,'Portugal','ddalot@manutd.com'),
(21,'Scott Mctominay','Midfielder',120000,80444763,'Scotland','smctominay@manutd.com');

select *from Employee2;

use Employee;

select *from Employee2;

---performing various operations .

Select count(EMP_ID) from Employee2 group by (EMP_Designation);

Select sum(Salary) from Employee2 where Salary>=25000 group by (EMP_Designation) ;

Select EMP_Designation, sum(Salary)as TotalWage from Employee2 where Salary>=25000 group by (EMP_Designation) order by (TotalWage);

Select EMP_Designation, max(Salary)as MaxWage from Employee2 where Salary>=25000 group by (EMP_Designation) order by (MaxWage);

Select EMP_Designation, min(Salary)as MinWage from Employee2 where Salary>=25000 group by (EMP_Designation) order by (MinWage);

Select EMP_Designation, avg(Salary)as AvgWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (AvgWage);

Select EMP_Designation, sum(Salary)as TotalWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (TotalWage);

Select EMP_Designation, max(Salary)as MaxWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (MaxWage);

Select EMP_Designation, min(Salary)as MinWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (MinWage);

Select EMP_Designation, avg(Salary)as AvgWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (AvgWage);

Select EMP_Designation, sum(Salary)as TotalWage from Employee2  group by (EMP_Designation) having sum(Salary)>=100000 order by (EMP_Designation);

Select EMP_Designation, sum(Salary)as TotalWage from Employee2  group by (EMP_Designation) having max(Salary)<=100000 order by (EMP_Designation);

CREATE TABLE Product1 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    Manufacturer VARCHAR(50),
    ReleaseDate DATE,
    Description TEXT,
    Rating DECIMAL(3, 2),
    DiscountPercent DECIMAL(5, 2)
);
drop table product1;
INSERT INTO Product1 VALUES
(1, 'Laptop', 'Electronics', 1200.00, 50, 'ABC Electronics', '2022-01-15', 'High-performance laptop with the latest specifications.', 4.5, 5.00),
(2, 'Smartphone', 'Electronics', 500.00, 100, 'XYZ Tech', '2022-02-28', 'Feature-rich smartphone with a sleek design.', 4.2, 8.00),
(3, 'Tablet', 'Electronics', 300.50, 30, 'Tech Innovators', '2022-03-10', 'Portable tablet for entertainment and productivity.', 4.0, 10.00),
(4, 'Desk Chair', 'Furniture', 150.80, 20, 'Comfort Furniture', '2022-04-05', 'Ergonomic desk chair for comfortable seating.', 3.8, 15.00),
(5, 'Bluetooth Speaker', 'Electronics', 80.00, 75, 'Sound Tech', '2022-05-20', 'Wireless Bluetooth speaker for music enthusiasts.', 3.3, 7.50),
(6, 'Laptop', 'Electronics', 900.00, 40, 'Tech Innovators', '2022-06-12', 'Mid-range laptop with a sleek design.', 4.0, 12.00),
(7, 'Running Shoes', 'Footwear', 70.90, 60, 'Athletic Gear Inc.', '2022-07-01', 'Comfortable running shoes for fitness enthusiasts.', 3.5, 8.50),
(8, 'Backpack', 'Accessories', 40.00, 90, 'Travel Essentials', '2022-08-15', 'Durable backpack for daily commuting and travel.', 3.2, 10.00),
(9, 'Smartphone', 'Electronics', 550.30, 35, 'Tech Innovators', '2022-09-30', 'Upgraded smartphone with advanced features.', 3.7, 5.00),
(10, 'Dining Table', 'Furniture', 250.00, 15, 'Home Furnishings Co.', '2022-10-10', 'Stylish dining table for modern homes.', 2.6, 7.50),
(11, 'Bluetooth Speaker', 'Electronics', 95.00, 25, 'Sound Tech', '2022-11-05', 'Premium Bluetooth speaker for audiophiles.', 3.4, 10.00),
(12, 'Printed T-Shirt', 'Apparel', 20.00, 120, 'Fashion Trends', '2022-12-20', 'Fashionable printed t-shirt for casual wear.', 4.0, 15.00),
(13, 'Digital Camera', 'Electronics', 350.00, 10, 'Photography Gear', '2023-01-05', 'High-resolution digital camera for photography enthusiasts.', 4.8, 5.00),
(14, 'Laptop', 'Electronics', 1100.00, 15, 'Tech Innovators', '2023-02-15', 'Ultra-thin laptop with powerful specifications.', 2.7, 12.50),
(15, 'Office Desk', 'Furniture', 180.00, 35, 'Office Furniture Ltd.', '2023-03-01', 'Spacious office desk for a productive work environment.', 4.6, 7.50),
(16, 'Bluetooth Speaker', 'Electronics', 120.00, 50, 'Sound Tech', '2023-04-10', 'Compact Bluetooth speaker for on-the-go music.', 4.3, 10.00),
(17, 'Laptop', 'Electronics', 950.00, 20, 'Tech Innovators', '2023-05-20', 'Budget-friendly laptop with reliable performance.', 2.1, 8.00),
(18, 'Bluetooth Speaker', 'Electronics', 65.00, 30, 'Sound Tech', '2023-06-12', 'Portable Bluetooth speaker for outdoor activities.', 3.0, 15.00),
(19, 'Sofa', 'Furniture', 350.00, 12, 'Home Furnishings Co.', '2023-07-01', 'Comfortable sofa for living room relaxation.', 4.7, 5.00);

select * from product1;

create database prod_mgnt;
use prod_mgnt;
create table product(
prod_Id int primary key ,
prod_Name varchar (22) ,
prod_qty int,
prod_price double
);

insert into product value (1,'TV',2000,40000),(2,'mobile',5000,26000),(3,'AC',10000,40000),
(4,'washig machine',10000,50000),(5,'grinder',12000,4000),
(6,'chais',20000,1000),(7,'T shirts',20000,500),(8,'pants',17000,1000),
(9,'bulbs',1000,100),(10,'fans',11000,7500);
select * from product;

Create table Customer (
	CustId int primary key,
    CustName varchar(20) not null,
    Product varchar(20),
    Price int
);

Insert into Customer values (1,'shubham','Laptop',50000), (2,'arya','mobile',25000), (3,'mrunal','keyboard',1500),
		(4,'aniket','bag',2500), (5,'tejal','tiffin',200), (6,'siddhant','notebooks',100),
        (7,'sakshi','mouse',150), (8,'sanket','pen',10), (9,'bhushan','laptop',30000), (10,'aalapi','mobile',20000);

Select * from Customer;

create database student_details;
use student_details;

create table student (student_Id int primary key , name varchar(22) , admission_No int , student_email varchar(22) , phoneNumber bigint);
insert into student values(121, 'ayush' ,4001, 'ayush@gmail.com',987654321),(122, 'meera' ,4002, 'meera@gmail.com',887694321),
(123, 'nilesh' ,4003, 'nilesh@gmail.com',987456789),(124, 'vaibhav' ,4004, 'vaibhav@gmail.com',8652529554),(125, 'neel' ,4005, 'neel@gmail.com',7896453588),
(126, 'ankita' ,4006, 'ankita@gmail.com',7689452344);

select * from student;
create table fees(student_Id int , foreign key(student_Id) references student (student_Id) , course varchar(200) , fees bigint );
insert into fees values (121,'cs',125000),(122,'civil',125000),(123,'mech',125000),(124,'mech',125000),(125,'prod',125000),(126,'EXTC',140000);

select * from fees;

Create database studentFees;
Use studentFees;

Create table Student (
	id int primary key,
    name varchar(20) not null,
    admNo int,
    emailId varchar(30) unique,
    phoneNo bigint unique
);

Insert into student values 
	(1,'Shubham',101,'shubham123@gmail.com',9876543210),
    (2,'Arya',102,'arya@gmail.com',9764318520),
    (3,'Bhushan',103,'bhushan@gmail.com',9638527410),
    (4,'Sanket',104,'sanket12@gmail.com',8978564523),
    (5,'Aniket',105,'aniketp@gmail.com',8520741096),
    (6,'Siddhant',106,'sid213@gmail.com',8798654523),
    (7,'Tejas',107,'tejas@gmail.com',8520741063),
    (8,'Vaibhav',108,'vaibhav@gmail.com',8642791380),
    (9,'Suyog',109,'suyogd@gmail.com',8798321254),
    (10,'Rahul',110,'rahul@gmail.com',9764985220);

Select * from student;

Create table Fees (
	id int,
    foreign key(id) references student(id),
    course varchar(40) not null,
    fees decimal(10,2)
);


Insert into Fees values
	(1,'Data Analytics with AI',125000.50),
    (2,'Data Analytics with AI',120000.75),
    (3,'Full stack development',145000.85),
    (4,'Full stack development',142500.45),
    (5,'Full stack development',138500.50),
    (6,'Data Science',128000),
    (7,'Data Science',132000),
    (8,'Data Science',129000),
    (9,'Data Analytics with AI',127500.5),
    (10,'Data Analytics with AI',11600.85);

Select * from Fees;

Create database studentFees;
Use studentFees;

Create table Student (
	id int primary key,
    name varchar(20) not null,
    admNo int,
    emailId varchar(30) unique,
    phoneNo bigint unique
);

Insert into student values 
	(1,'Shubham',101,'shubham123@gmail.com',9876543210),
    (2,'Arya',102,'arya@gmail.com',9764318520),
    (3,'Bhushan',103,'bhushan@gmail.com',9638527410),
    (4,'Sanket',104,'sanket12@gmail.com',8978564523),
    (5,'Aniket',105,'aniketp@gmail.com',8520741096),
    (6,'Siddhant',106,'sid213@gmail.com',8798654523),
    (7,'Tejas',107,'tejas@gmail.com',8520741063),
    (8,'Vaibhav',108,'vaibhav@gmail.com',8642791380),
    (9,'Suyog',109,'suyogd@gmail.com',8798321254),
    (10,'Rahul',110,'rahul@gmail.com',9764985220);

Insert into student values 
	(11,'Vaibhav',108,'vaibhav12@gmail.com',8642791387),
    (12,'Suyog',109,'suyogd12@gmail.com',8798321255),
    (13,'Rahul',110,'rahul12@gmail.com',9764985221);
    
Select * from student;

Create table Fees (
	id int,
    foreign key(id) references student(id),
    course varchar(40) not null,
    fees decimal(10,2)
);

Insert into Fees values
	(1,'Data Analytics with AI',125000.50),
    (2,'Data Analytics with AI',120000.75),
    (3,'Full stack development',145000.85),
    (4,'Full stack development',142500.45),
    (5,'Full stack development',138500.50),
    (6,'Data Science',128000),
    (7,'Data Science',132000),
    (8,'Data Science',129000),
    (9,'Data Analytics with AI',127500.5),
    (10,'Data Analytics with AI',11600.85);

Select * from Fees;

---Inner Join
Select student.admNo, student.name, fees.course, fees.fees from student inner join fees on student.id = fees.id;

----Self Join
Select s1.name, s1.admNo from student s1, student s2 where s1.id = s2.id;
Select s1.name, s1.admNo from student s1, student s2 where s1.id <> s2.id;
Select f1.id, f2.fees, f2.course from fees f1, fees f2 where f1.id <> f2.id AND f1.course = f2.course;

----------Cross Join
Select student.admNo, student.name, fees.course, fees.fees from student cross join fees where student.id = fees.id;

----------Outer Join
-------Left Outer Join
Select student.admNo, student.name, fees.course, fees.fees from student left outer join fees on student.id = fees.id;

Select student.admNo, student.name, fees.course, fees.fees from student right outer join fees on student.id = fees.id;

Select student.admNo, student.name, fees.course, fees.fees from student full outer join fees on student.id = fees.id;

create table Buildings (Building_name varchar(22)  primary key, capacity int);
insert into Buildings values('le', 24), ('lw', 32), ('2e', 16), ('2w', 20);
drop table Buildings;
select * from Buildings;

create table Employees (role varchar(22), name varchar(22), Building_name varchar(22), foreign key(Building_name) references Buildings (Building_name), years_employed int);
insert into Employees values ('engineer', 'Becky A.', '1e', 4),('engineer', 'Dan B.', '1e', 2),('engineer', 'Sharon F.', '1e', 6),
('engineer', 'Dan M.', '1e', 4),('engineer', 'Malcom S.', '1e', 1),('Artist', 'Tylar S.', '2w', 2);
drop table Employees;
select * from Employees;

-----DQL COMMANDS:
Use Employee;

Select EMP_ID,EMP_Name from Employee;

Select EMP_ID,EMP_Name from Employee where EMP_Designation='Junior Engg';

Select distinct EMP_ID from Employee;

Select*
from Employee
where EMP_ID>=3;

---------DML COMMANDS:

use Student1;
create table Student_Details(
StudentID int Primary Key, StudentName varchar(30), Grade varchar(2), Marks int);
insert into Student_Details values (1,'Mrunal Kurale', 'A', 80),
(2,'Tejas Jadhav', 'A', 79),
(3,'Adil Khan', 'A', 75),
(4,'Ritin Kotian', 'B', 68),
(5,'Anmol Panchal', 'A+', 94),
(6,'Rajesh Patil', 'C', 64),
(7,'Kanchan Barve', 'A', 78),
(8,'Shivali Jadhav', 'A', 82),
(9,'Himanshu Kulkarni', 'B', 74),
(10,'Apurva Kore', 'B', 72);


Select* From Student_Details;

-------performing various operations on table.

Update Student_Details
set Grade='A', Marks='75'
where StudentName='Rajesh Patil';

Update Student_Details
set StudentName='Shivali'
where StudentID='8';

Delete from Student_Details
where StudentID=5;

Delete from Student_Details;

-----------DDL COMMANDS:


use Student1;
create table Student_Details(
StudentID int Primary Key, StudentName varchar(30), Grade varchar(2), Marks int);
insert into Student_Details values (1,'Mrunal Kurale', 'A', 80),
(2,'Tejas Jadhav', 'A', 79),
(3,'Adil Khan', 'A', 75),
(4,'Ritin Kotian', 'B', 68),
(5,'Anmol Panchal', 'A+', 94),
(6,'Rajesh Patil', 'C', 64),
(7,'Kanchan Barve', 'A', 78),
(8,'Shivali Jadhav', 'A', 82),
(9,'Himanshu Kulkarni', 'B', 74),
(10,'Apurva Kore', 'B', 72);


Select* From Student_Details;

------performing various operations on table.

Alter Table Student_Details
add Email varchar(30);

Alter Table Student_Details
alter column StudentName varchar(35);

Alter Table Student_Details
Alter column StudentID, 

---Exec sp_rename StudentID int Primary Key, ID int;

Alter table Student_Details
drop column Email;

Truncate table Student_Details;

Drop table Student_Details;

create database Employee;
use Employee;

create table Employee2(
EMP_ID int Unique, EMP_Name varchar(30), EMP_Designation varchar(20), Salary int,  Phone_Num bigint Unique, EMP_Address varchar(20) , Email varchar(20));
insert into Employee2 values 
(1,Erik Hag,Manager,75000,87484563, Holland,eriktenhag@manutd.com),
(2,Aaron Wan Bissaka,Right Back,50000,84632573,England,abissaka@manutd.com),
(3,Luke Shaw,Left Back,120000,81780583,England,lukeshaw@manutd.com),
(4,Harry Maguire,Centre Back,250000,78928593,England,hmaguire@manutd.com),
(5,Raphael Varane,Centre Back,280000,76076603,France,rvarane@manutd.com),
(6,Victor Lindelof,Centre Back,200000,73224613,Sweden,vlindelof@manutd.com),
(7,Jonny Evans,Centre Back,100000,70372623,Northern Ireland,jevans@manutd.com),
(8,Casemiro,Defensive Mid,375000,85520633,Brazil,casemiro@manutd.com),
(9,Kobbie Mainoo,Defensive Mid,20000,84668643,England,kmainoo@manutd.com),
(10,Bruno Fernandes,Midfielder,425000,82816653,Portugal,bfernandes@manutd.com),
(11,Marcus Rashford,Left Winger,375000,85964663,England,mrashford@manutd.com),
(12,Antony,Right Winger,200000,89112673,Brazil,antony@manutd.com),
(13,Antony Garnacho,Left Winger,75000,83260683,Argentina,agarnacho@manutd.com),
(14,Anthony Martial,Striker,175000,80408693,France,amartial@manutd.com),
(15,Rasmus Hojlund,Striker,250000,84556703,Denmark,rhojlund@manutd.com),
(16,Jadon Sancho,Winger,250000,88704713,England,jsancho@manutd.com),
(17,Christian Eriksen,Midfielder,175000,81852723,Denmark,ceriksen@manutd.com),
(18,Mason Mount,Midfielder,250000,89000733,England,mmount@manutd.com),
(19,Brandon Williams,Left Back,20000,82148743,England,bwilliams@manutd.com),
(20,Diogo Dalot,Right Back,50000,79296753,Portugal,ddalot@manutd.com),
(21,Scott Mctominay,Midfielder,120000,80444763,Scotland,smctominay@manutd.com),

select *from Employee2;

create database Hospital1;
use Hospital1;

create table Doctor(
Did int primary key,
Dname varchar(20) not null,
Ddepart varchar(10),
Dphone bigint );

insert into Doctor values(1,'Dr Ramesh','MBBS',95959),
(2,'Dr Santosh','BAMS',85285),(3,'Dr Manoj','MBBS',98337),(4,'Dr Rajesh','ORTHO',98741),(5,'Dr Samarth','BUMS',98569),
(6,'Dr Suyog','BAMS',85285),(7,'Dr Sameer','PHSYO',93215),(8,'Dr Ravi','MBBS',87987),(9,'Dr Rohit','GYNC',85478),(10,'Dr Akash','BUMS',85795);

select * from Doctor;

use Hospital1;
create table Patient(
Pid int not null,
Pname varchar(20) not null,
Page int,
check (page >=18),
Plocation varchar(20) default 'kamothe',
Did int,
foreign key(Did) references Doctor(Did));

alter table Patient
add Email varchar(20);

alter table Patient
modify Pid varchar(20);

alter table Patient
rename column Pid to Patient_id;

alter table Patient
add mobilenumber bigint;

alter table Patient
drop column Email;

----use truncate to delete complete table;

use Hospital1;

update Doctor
set Ddepart='BAMS' ,Dphone=98965
where Did=1;

update Doctor
set Ddepart='BAMS'
where Did=2;

delete from Doctor
where Did=10;

select Did,Dname
from Doctor
where Did=5;

select * from Doctor
where Ddepart='MBBS';

select * from Doctor
where Ddepart LIKE 'M%';

select * from Doctor
where Ddepart LIKE '_U%S';

select * from Doctor
where Ddepart LIKE '__B%';

use mypract;

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    Manufacturer VARCHAR(100),
    ReleaseDate DATE
);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Manufacturer, ReleaseDate) VALUES
(1, 'Laptop', 'Electronics', 1200.00, 50, 'ABC Electronics', '2022-01-15'),
(2, 'Smartphone', 'Electronics', 500.00, 100, 'XYZ Tech', '2022-02-28'),
(3, 'Tablet', 'Electronics', 300.00, 30, 'Tech Innovators', '2022-03-10'),
(4, 'Desk Chair', 'Furniture', 150.00, 20, 'Comfort Furniture', '2022-04-05'),
(5, 'Bluetooth Speaker', 'Electronics', 80.00, 75, 'Sound Tech', '2022-05-20'),
(6, 'Coffee Maker', 'Appliances', 60.00, 40, 'Kitchen Appliances Co.', '2022-06-12'),
(7, 'Running Shoes', 'Footwear', 70.00, 60, 'Athletic Gear Inc.', '2022-07-01'),
(8, 'Backpack', 'Accessories', 40.00, 90, 'Travel Essentials', '2022-08-15'),
(9, 'LED TV', 'Electronics', 800.00, 25, 'Tech Solutions Ltd.', '2022-09-30'),
(10, 'Dining Table', 'Furniture', 250.00, 15, 'Home Furnishings Co.', '2022-10-10'),
(11, 'Gaming Mouse', 'Electronics', 45.00, 80, 'Gamer Gear Inc.', '2022-11-05'),
(12, 'Printed T-Shirt', 'Apparel', 20.00, 120, 'Fashion Trends', '2022-12-20'),
(13, 'Digital Camera', 'Electronics', 350.00, 10, 'Photography Gear', '2023-01-05'),
(14, 'Toaster', 'Appliances', 30.00, 50, 'Kitchen Essentials', '2023-02-15'),
(15, 'Office Desk', 'Furniture', 180.00, 35, 'Office Furniture Ltd.', '2023-03-01');

select * from product;

------ Alter commands

alter table product
add Quantityordered int;

select * from product;

alter table product
modify column price float;

alter table product
rename column StockQuantity to Availble_Quantities;

alter table product
rename column Availble_Quantities to Available_Quantities;

select * from product;

------performing various operations 

update product
set quantityOrdered = 20
where price > 1000;

update product
set quantityOrdered= 30
where price >= 500 and price <=1000;

update product
set quantityOrdered= 35
where price >= 250 and price <=499;

update product
set quantityOrdered= 40
where price >= 100 and price <=249;

update product
set quantityOrdered= 50
where price >= 1 and price <=99;

select * from product;

-- distinct operator

select distinct category from product;

-- Like operator

select productname from product
where productname like 'c%';				
-- starting from 'c'

select productname from product
where productname like '_a%';			
-- selecting a word which the 2nd alphabet is 'a'

select category from product
where category like '_le_%';

-- between operator
select * from product
where price between 250 and 750;

select productname, category, available_quantities from product
where price between 1 and 500
order by productname;

-- string function

select * from product;
-- concat()
select concat(productname, ' is a ', category, ' product') descriptions from  product
order by concat(productname, ' is a ', category, ' product');

-- length()
select productname, length(productname) len_productname
from product
order by length(productname);

-- substring()
select substr(productname, 1, 3) product, substr(productname, 4,length(productname)) name
from product;

select substr(productname, 1, 3) product, substr(productname, 4,length(productname)) name,
concat(substr(productname, 1, 3), substr(productname, 4,length(productname))) productname
from product
order by concat(substr(productname, 1, 3), substr(productname, 4,length(productname)));

-- upper & lower
select upper(substr(productname, 1, 3)) product, upper(substr(productname, 4,length(productname))) name,
lower(concat(substr(productname, 1, 3), substr(productname, 4,length(productname)))) productname
from product
order by concat(substr(productname, 1, 3), substr(productname, 4,length(productname)));

-- replace
select replace(Manufacturer, 'ABC', 'hp')  Manufacturer from product;
select replace(Manufacturer, 'XYZ', 'i')  Manufacturer from product;

-- Math function
-- abs()
update product
set price = -500.423
where productid=2;

----update operation 

update product
set price= -150.767
where productid=4;

-- abs()
select price, abs(price) from product;

-- ceil()
select price,ceil(price) from product;

-- floor()
select price,floor(price) from product;

-- mod()
select price, quantityordered, mod(price,quantityordered) remainder from product;

-- round()
select price, quantityordered, round(mod(price,quantityordered)) remainder from product;

-- calculating single product approximated value 
select price, quantityordered, abs(round(price/quantityordered)) 'per product' from product
order by round(price/quantityordered);

----DDL queries
----Create
----------Creation of database -- Create database database_name
Create database studentInfo;
Use studentInfo;

----------Creation of table -- Create table table_name ( column_name datatype constraints)
Create table student (
	sFirstName varchar(20) not null,
    sLastName varchar(20),
    sId int primary key,
    sStream varchar(20) not null,
    sAge int,
    sPhone bigint unique,
    sAdmissionDate date,
    sCetMarks float,
    sCatMarks float,
    sFees decimal(7,2)
);

-------Alter
-----------Alter table add column -- Alter table table_name ADD column_name datatype constraints
Alter table student ADD sDob date;

-------Alter table modify column -- Alter table table_name MODIFY column_name datatype constraints
Alter table studentInfo MODIFY sId varchar(10);

------------Alter table rename column -- Alter table table_name RENAME column column_oldname to column_newname;
Alter table studentInfo RENAME column sId to sBatchId;

---------Alter table name -- Alter table table_name RENAME TO new_table_name
ALter table student RENAME TO studentInfo;


--------Drop
-----------Drop database -- Drop database database_name
Drop database studentInfo;

-------Drop table -- Drop table table_name
Drop table studentInfo;

----------Drop column -- Alter table table_name DROP column column_name
Alter table studentInfo Drop column sDob;


-------Truncate -- Truncate table table_name
Truncate table studentInfo;


----------DML queries
-----Insert
-------Insert single value -- Insert into table_name values (col1_value, col2_value)
--------Insert multiple values -- Insert into table_name values (col1_value1, col2_value1),(col1_value2, col2_value2),(col1_value3, col2_value3)
---------Insert values into specific columns -- Insert into table_name (column1_name, column2_name) values (col1_value, col2_value)

Insert into student values
('Shubham','Mapara',1,'Science',25,9876543210,'2016-06-01 09:18:16',75.67,68.5,25000.50),
('Arya','Mapara',2,'Commerce',22,9764318524,'2020-03-20 12:17:20',65.33,80.33,18000.25),
('Bhushan','Mehta',3,'Arts',24,9638527410,'2018-01-01 19:06:06',86.33,70.67,15250.75),
('Sanket','Sule',4,'Science',24,9865327415,'2016-06-01 15:24:20',65.67,68.75,28000.25),
('Aditya','Kapote',5,'Arts',22,8945761520,'2019-06-15 17:48:28',50.35,-10.75,18500.75),
('Shubham','Singh',6,'Commerce',20,8426793158,'2021-12-15 20:20:49',48.67,-15.33,20500.45);


--------Update -- Update table_name SET column_name = value WHERE column_name = values
Update student
SET sFirstName = 'Aniket'
WHERE sId = 5;


-------Delete
------------Delete all record from table -- Delete from table_name
-----------Delete specific record from table -- Delete fro table_name where column_name = value
Delete from student WHERE sFirstName = 'Sanket';
Delete from student;

----------DQL queries
--------Select
----------Selecting all columns -- Select * from table_name
Select * from student;

------------Selecting specific columns -- Select col1_name, col2_name from table_name
Select sId, sPhone from student;

-----------Selecting specific records -- Select col1_name from table_name where col_name = value
Select sAge from student where sId = 4;

---------Selecting distinct values from columns -- Select distinct column_name from table_name
Select distinct sLastName from student;

-------------Operators
--------AND operator
Select * from student
where sAge > 22 AND sStream = 'Science';

----------OR operator
Select * from student
where sLastName = 'Mapara' OR sAge > 23;

----------NOT operator
Select * from student
where NOT sStream = 'Science';

--------BETWEEN operator -- used to select values within a given range
Select * from student
where sFees BETWEEN 10000 and 25000;

--------------IN operator -- used to specify multiple values in a WHERE clause.
Select * from student
where sLastName IN ('Mapara','Sule','Kapote');

----------LIKE operator -- used to search for a specified pattern in a column.
Select * from student
where sPhone LIKE '98%';

Select sFirstName from student
where sFirstName LIKE '_h%';

----------Order By Clause -- used to sort the result-set in ascending or descending order.
Select * from student
order by sAge;

Select * from student
order by sAdmissionDate DESC;

------------Aliases Name
Select sId as StudentRollNumber from student;		-- Aliases are often used to make column names more readable.

----------Built In SQL functions - String function
----------String Function - Concat()
Select concat(sFirstName,sLastName) as studentInfo from student;			-- Adds two or more expressions together

----------String function - Lower()
Select lower(sFirstName) from student;										-- Converts a string to lower-case

------------String function - Upper()
Select upper(sLastname) from student;										-- Converts a string to upper-case

-------String function - Replace()
Select replace(sStream,'Arts','Management') as StreamInfo from student;		-- Replaces all occurrences of a substring within a string, with a new substring

----------String function - Reverse()
Select reverse(sFirstName) from student;									-- Reverses a string and returns the result

-------------String function - Length()
Select length(sStream) from student;										-- Returns the length of a string (in bytes)

--------String function - substring()
Select substring(sStream,1,4) from student;									-- Extracts a substring from a string (starting at any position)
			----OR
Select substr(sFirstName,2,6) from student;									-- Extracts a substring from a string (starting at any position)

---------String function - Ltrim() and Rtrim()
Select ltrim('   Sam');														-- Removes leading spaces from a string
Select rtrim('Sam   ');														-- Removes trailing spaces from a string


-----Built In SQL functions - Math function
----Math function - Abs()
Select abs(sCatMarks) as CatMarks from student;			-- Returns the absolute value of a number

----------Math function - Mod()
Select mod(sAge,3) from student;						-- Returns the remainder of a number divided by another number

-----------Math function - ceiling()
Select ceiling(sCetMarks) from student;					-- Returns the smallest integer value that is >= to a number

-----------Math function - floor()
Select floor(sCatMarks) from student;					-- Returns the largest integer value that is <= to a number

-------------Math function - truncate()
Select truncate(sFees,1) from student;					-- Truncates a number to the specified number of decimal places

--------------Math function - sqrt()
Select sqrt(sFees) from student;						-- Returns the square root of a number


------------Built In SQL functions - Date function

------Select curdate();							-- current date
------Select current_date();						-- current date
--------Select curtime();							-- current time
------Select current_time();						-- current time
-------Select current_timestamp();					-- current date and time
-------Select now();								-- current date and time
-----------Select sysdate();							-- current date and time

Select adddate(sAdmissionDate, Interval 10 day) from student;			-- Adds a time/date interval to a date and then returns the date
Select date_add(sAdmissionDate, Interval 1 quarter) from student;		-- Adds a time/date interval to a date and then returns the date
Select date_sub(sAdmissionDate, Interval 5 month) from student;			-- Subtracts a time/date interval from a date and then returns the date
Select addtime(sAdmissionDate, '3:15:25') from student;					-- Adds a time interval to a time/datetime and then returns the time/datetime

Select date(sAdmissionDate) as AdmissionDate from student;				-- Extracts the date part from a datetime expression
Select datediff('2023-11-01','2022-07-01');								-- Returns the number of days between two date values

Select date_format(sAdmissionDate, "%W %D %M %Y") from student;			-- Formats a date
Select day(sAdmissionDate) from student;								-- Returns the day of the month for a given date
Select dayname(sAdmissionDate) from student;							-- Returns the weekday name for a given date
Select dayofweek(sAdmissionDate) from student;							-- Returns the weekday index for a given date
Select dayofmonth(sAdmissionDate) from student;							-- Returns the day of the month for a given date
Select dayofyear(sAdmissionDate) from student;							-- Returns the day of the year for a given date


---------Built In SQL functions - Aggregate function
------------Aggregate function - avg()
Select avg(sCetMarks) as AverageCetMarks from student;					-- Returns the average value of an expression

----------Aggregate function - count()
Select count(Distinct sLastName) as LastName from student;				-- Returns the number of records returned by a select query

-----------Aggregate function - max() and min()
Select max(sFees) from student;											-- Returns the maximum value in a set of values
Select min(sFees) from student;											-- Returns the minimum value in a set of values

-----------Aggregate function - sum()
Select sum(sCatMarks) as CatScore from student;							-- Calculates the sum of a set of values

create database Showroom1;
use Showroom1;
create table Assi(
Assi_id int primary key,
Assi_name char(20) not null,
Assi_lname char(20),
Assi_Department varchar(20),
Assi_Salery int,
Assi_Mob bigint);

insert into Assi values(101,'Suyog','Desai','Accounts',35000,9594084719),
(102,'Sumit','Gaikwad','Sales',40000,8108457898),
(103,'MAnoj','Pawar','Ssles',40000,9865327845),
(104,'Snehal','Pawar','IT',65000,8528528528),
(105,'Disha','Desai','IT',80000,7894561237),
(106,'Pradnya','Pakhare','Reception',20000,9833704909),
(107,'Dilip','Kamad','Sales',35000,9321540770),
(108,'Rupesh','Lande','Backoffice',25000,9594084747),
(109,'Akash','Munde','Accounts',35000,8652779412),
(110,'Piyush','Ranade','Frontend',28000,457845789);

select * from Assi;

create table customer04(
Cust_id int,
Cust_name varchar(20) not null,
Cust_age int,
Cust_address varchar(20),
assi_id int,
foreign key(Assi_id) references Assi(assi_id));

---performing various operations 

alter table customer04
add Email varchar(20);

alter table customer04
add mob bigint;

alter table customer04
rename column Cust_id to id;

alter table customer04
modify cust_name char(20);

alter table customer04
drop column mob;

drop table customer04;

update Assi
set Assi_salery=50000
where Assi_id=101;

update Assi
Set Assi_mob=989898787
where Assi_id=102;

select * from assi;

select Assi_id, Assi_name from Assi;

select Assi_id,Assi_salery From Assi
where Assi_id=105;

select* from Assi
where Assi_salery>=25000;

select* from Assi
where Assi_salery<=25000;

select* from Assi
where Assi_salery>=40000;

select*
from Assi
where Assi_id LIKE '0%';

select*
from Assi
where Assi_name LIKE 's%o';

select* from assi
order by Assi_name;

select* from assi
order by Assi_name desc;

select* from assi
order by Assi_salery desc;

select concat(Assi_id, Assi_name)as Emp1 from Assi;
select concat(Assi_id)as empinfo from Assi;

select concat(Assi_name,' ',Assi_lname)as Empname from Assi;

select upper(Assi_name)from Assi;

select lower(Assi_name)from Assi;

select reverse(Assi_id)from Assi;

select length(Assi_salery)from Assi;

select substring(Assi_name,1,4)from Assi;
select substring(Assi_name,2,5)from Assi;

create database Store;
use Store;

create table Orders(
order_id int,
order_date datetime,
pro_name varchar(10),
custn varchar(20) not null);

insert into orders values(11,'2023-12-01','pen','suyog');
insert into orders values(12,'2023-12-02','pencil','sumit'),
(13,'2023-12-02','book','prem'),
(14,'2023-12-03','cardboard','disha'),
(15,'2023-12-04','gluestick','poonam'),
(16,'2023-12-05','compassbox','nikita'),
(17,'2023-12-06','pen','vinod'),
(18,'2023-12-07','sketchpen','sahu');

select * from orders;
select curdate() from Orders;
select now() from Orders;
select sysdate() from Orders;

select* from orders;
select order_date as orderdate from orders
where order_id=11;

select* from orders;
select order_id, date_add(order_date,interval 30 day) as payout from orders;
select order_id, date_add(order_date,interval 365 day) as payout from orders;

select datediff('2023-12-06','2023-12-01');
select date(now());

select avg(Assi_salery) as avg_salery from Assi;

select count(Assi_name) from Assi;
select count(Assi_salery) from Assi;

select max(Assi_salery) from Assi;
select min(Assi_salery) from Assi;

select sum(Assi_salery) from Assi;

select * from Assi;
select Assi_name, sum(Assi_salery) from Assi
where Assi_id>1
group by Assi_name;

select Assi_department, sum(Assi_name) from Assi
where Assi_id>1
group by Assi_department;

select Assi_lname, sum(Assi_salery) from Assi
where Assi_id>=1
group by Assi_lname;

select Assi_salery, sum(Assi_name) from Assi
where Assi_id>1
group by Assi_salery;

select Assi_department, sum(Assi_name) from Assi
where Assi_id>1
group by Assi_department
order by Assi_id;

select Assi_name, sum(Assi_salery)from Assi group by Assi_name having sum(Assi_salery)>25000; 
select Assi_lname, sum(Assi_salery) From Assi group by Assi_lname having sum(Assi_salery)<45000;

create database employee_mgnt_DB;
use employee_mgnt_DB;

-------------------------------------------------------------------- DDL and DML

create table emp_info (emp_Name varchar(22), emp_ID int, emp_deptName varchar(22) primary key, emp_hireDate date);
insert into emp_info values ('suhani',1,'production','2019-08-12'),('gauri',2,'admin','2022-12-05'),
('vinamy',3,'civil','2023-09-01'),('virang',4,'medical','2021-12-06'),('shivay',5,'HR','2020-05-05'),('varad',6,'quality','2023-01-08');
select* from emp_info;
drop table emp_info; 

create table emp_department(dept_Id int, emp_deptName varchar(22) , foreign key(emp_deptName) references emp_info (emp_deptName));
insert into emp_department values(101,'production'),(122,'admin'),
(131,'civil'),(105,'medical'),(111,'HR'),(141,'quality');
select* from emp_department;

-------------------------------------------------------------------- DQL

select emp_Name from emp_info where emp_deptName in ('production','admin','civil','medical','HR','quality');
select e.emp_Name, d.emp_deptName from emp_info e  join emp_department d on e.emp_deptName = d.emp_deptName;
select emp_Name,emp_deptName from emp_info;
update emp_info set  emp_hireDate = '2023-10-01' where emp_Name = 'vinamy';
update emp_info set  emp_hireDate = '2023-12-06' where emp_Id = 4 ;
select emp_Name , emp_hireDate  from emp_info where emp_hireDate >= date_sub(curdate(),interval 6 month);

alter table emp_info add emp_salary bigint;
update emp_info set  emp_salary = 8000 where emp_Id = 1 ;
update emp_info set  emp_salary = 12000 where emp_Id = 2 ;
update emp_info set  emp_salary = 11500 where emp_Id = 3 ;
update emp_info set  emp_salary = 12000 where emp_Id = 4 ;
update emp_info set  emp_salary = 12500 where emp_Id = 5 ;
update emp_info set  emp_salary = 9000 where emp_Id = 6 ;
commit;
select * from emp_info;
rollback;
alter table emp_info add job_title varchar(22);

-------------------------------------------------------------------- TCL

begin ;
update emp_info set  job_title = 'jr.office' where emp_Id = 1 ;
update emp_info set  job_title = 'sr.office' where emp_Id = 2 ;
update emp_info set  job_title = 'jr.engineer' where emp_Id = 3 ;
update emp_info set  job_title = 'Manager' where emp_Id = 4 ;
update emp_info set  job_title = 'engineer' where emp_Id = 5 ;
update emp_info set  job_title = 'assistant engineer' where emp_Id = 6 ;
begin ;
update emp_info set job_title = 'sr.VP' , emp_salary = emp_salary *15 where emp_Id=4;
commit;
update emp_info set job_title = 'sr.VP' , emp_salary = emp_salary *10 where emp_Id=4;
commit;
rollback;
update emp_info set job_title = 'sr.VP' , emp_salary = emp_salary  +200000000 where emp_Id=4;
rollback;
update emp_info set job_title = '' , emp_salary = 20000 where emp_Id=4;

-------------------------------------------------------------------- DCL

----- create roles

create role manager_role;
create role viewer_role;

--------  grant specific permissions to role

grant update on emp_info to manager_role;
grant select on emp_info to viewer_role;

------ create user and assign roles

create user manager_user;
create user viewer_user;

------ assign roles to users

grant manager_role to manager_user;
grant viewer_role to viewer_user;

-------------------------------------------------------------------- JOINS

create table  emp_info1  (emp_Name varchar(22), emp_ID int, emp_deptName varchar(22) primary key, emp_hireDate date, emp_salary bigint , job_title varchar(22));
insert into emp_info1 select * from emp_info where emp_Name in (select emp_Name from emp_info) ;
select* from emp_info1;
create table emp_department1 (dept_Id int, emp_deptName varchar(22) , foreign key(emp_deptName) references emp_info (emp_deptName));
insert into emp_department1 select * from emp_department where emp_deptName in (select emp_deptName from emp_department);
select* from emp_department1;
insert into emp_info1 values ('devansh',7,'operation','2017-08-20',18000,'sr.engineer'),
('vaishu',8,'accounts','2019-11-12',14000,'jr.accountant'),('vidya',9,'sales','2021-10-05',19500,'sr.accountant');

select emp_info1.emp_deptName , emp_info1.emp_Name , emp_department1.dept_Id from emp_info1 inner join emp_department1 on emp_info1.emp_deptName = emp_department1.emp_deptName;
select emp_info1.emp_Name, emp_info1.emp_deptName, emp_department1.dept_Id from emp_info1 left join emp_department1 on emp_info1.emp_deptName = emp_department1.emp_deptName;
select emp_info1.emp_Name, emp_info1.emp_deptName, emp_department1.dept_Id from emp_info1 right join emp_department1 on emp_info1.emp_deptName = emp_department1.emp_deptName;

-------------------------------------------------------------------- CASE STUDY INTEGRATION

create table employees (emp_Id int primary key , emp_Name varchar(22) , department varchar(22));
insert into employees values(1,'john','IT'),(2,'jane','HR'),(3,'bob','Finance');
select * from employees;

create  table training_sessions(session_Id int primary key , dession_Name varchar(22) , session_date date , trainer_Name varchar(22));
insert into training_sessions values(101, 'SQL basics','2023-01-01','Vaibhav'),
(102,'soft skills','2023-10-02','smith'),(103,'project management','2023-05-20','charlie');
alter table training_sessions rename column dession_Name to session_Name;
select * from training_sessions;

create table employee_enrollment(enrollment_Id int primary key , emp_Id int ,foreign key(emp_Id) references employees(emp_Id) , 
session_Id int ,foreign key(session_Id) references training_sessions(session_Id) , enrollment_date date);
insert into employee_enrollment values(201,1,101,'2023-01-10') , (202,2,102,'2023-02-22') , (203,3,103,'2023-02-24');
select * from employee_enrollment;

select ee.enrollment_Id , e.emp_Name , ts.session_Name , ee.enrollment_date from employee_enrollment ee join employees e on ee.emp_Id = e.emp_Id 
join training_sessions ts on ee.session_Id = ts.session_Id;

----------DDL

Create Database ManUtd;

Use ManUtd;

Create Table Dept_Details(Job_role varchar(30) Primary Key, Department_Name varchar(30));


Create Table Employee_Details
(Employee_ID Int Primary Key, Employee_Name varchar(50) Not Null, Job_Role varchar(30) Foreign key references Dept_Details(Job_role) Not Null, WeeklyWage Bigint, HiringDate Date);

------------DML

Insert into Dept_Details values ('Director Of Football', 'Management'),
('Technical Director', 'Management'),
('Managing Director', 'Management'),
('Head Of Youth Development', 'Management'),
('Manager', 'Coaching Staff'),
('Asst. Manager', 'Coaching Staff'),
('Attacking Coach', 'Coaching Staff'),
('Defensive Coach', 'Coaching Staff'),
('Tactical Coach', 'Coaching Staff'),
('Goalkeeping Coach', 'Coaching Staff'),
('Technical Coach', 'Coaching Staff'),
('Set Piece Specialist', 'Coaching Staff'),
('Fitness Coach', 'Coaching Staff'),
('Key Player', 'Playing Squad'),
('First Team Player', 'Playing Squad'),
('Rotation Player', 'Playing Squad'),
('Backup', 'Playing Squad'),
('Hot Prospect', 'Playing Squad'),
('Youngster', 'Playing Squad'),
('Head Physio', 'Medical Department'),
('Physio', 'Medical Department'),
('Head of Sports Science', 'Medical Department'),
('Sports Scientist', 'Medical Department'),
('Loan Manager', 'Recruitment'),
('Chief Scout', 'Recruitment'),
('Scout', 'Recruitment'),
('Data Analyst', 'Recruitment'),
('Loaned Player', 'Playing Squad'),
('Loanee', 'Playing Squad');

Select* From Dept_Details;

Insert into Employee_Details values (1, 'John Murtough', 'Director Of Football', 25000, '2021-03-10'),
(2, 'Darren Fletcher', 'Technical Director', 25000, '2021-03-10'),
(3, 'Avram Glazer', 'Managing Director', 75000, '2005-06-01'),
(4, 'Nick Cox', 'Head Of Youth Development', 15000, '2019-07-01'),
(5, 'Erik Ten Hag', 'Manager', 180000, '2022-05-16'),
(6, 'Steve McClaren', 'Asst. Manager', 15000, '2022-05-19'),
(7, 'Benni McCarthy', 'Attacking Coach', 4000, '2022-07-20'),
(8, 'Mitchell Van der Gaag', 'Defensive Coach', 30000, '2022-05-23'),
(9, 'Mike Clegg', 'Tactical Coach', 5000, '2019-07-01'),
(10, 'Richard Hartis', 'Goalkeeping Coach', 7000, '2019-06-22'),
(11, 'Charlie Owen', 'Fitness Coach', 3000, '2019-07-01'),
(12, 'Eric Ramsay', 'Set Piece Specialist', 8000, '2021-07-12'),
(13, 'Richard Hawkins', 'Technical Coach', 3000, '2018-07-01'),
(14, 'Paulo Gaudino', 'Fitness Coach', 3000, '2018-07-01'),
(15, 'Bruno Fernandes', 'Key Player', 240000, '2020-06-29'),
(16, 'Marcus Rashford', 'Key Player', 300000, '2016-01-01'),
(17, 'Casemiro Henriques', 'Key Player', 350000, '2022-08-22'),
(18, 'Luke Shaw', 'Key Player', 150000, '2014-07-01'),
(19, 'Scott Mctominay', 'Rotation Player', 60000, '2017-07-01'),
(20, 'Harry Maguire', 'Rotation Player', 189904, '2019-08-05'),
(21, 'Diogo Dalot', 'First Team Player', 85000, '2018-07-01'),
(22, 'Aaron Wan Bissaka', 'Rotation Player', 90000, '2019-07-01'),
(23, 'Lisandro Martinez', 'First Team Player', 120000, '2022-07-27'),
(24, 'Raphael Varane', 'First Team Player', 340000, '2021-08-14'),
(25, 'Christian Eriksen', 'Rotation Player', 150000, '2022-07-15'),
(26, 'Mason Mount', 'Rotation Player', 250000, '2023-07-05'),
(27, 'Sofyan Amrabat', 'Loanee', 65000, '2023-09-01'),
(28, 'Sergio Reguilon', 'Loanee', 53000, '2023-09-01'),
(29, 'Brandon Williams', 'Loaned Player', 65000, '2019-07-01'),
(30, 'Tyrell Malacia', 'Backup', 75000, '2022-07-05'),
(31, 'Antony', 'Rotation Player', 200000, '2022-08-30'),
(32, 'Anthony Martial', 'Backup', 250000, '2015-09-01'),
(33, 'Alejandro Garnacho', 'Rotation Player', 50000, '2022-07-01'),
(34, 'Rasmus Hojlund', 'First Team Player', 85000, '2023-08-05'),
(35, 'Kobbie Mainoo', 'Hot Prospect', 10000, '2023-01-01'),
(36, 'Jadon Sancho', 'Backup', 250000, '2021-07-23'),
(37, 'Mason Greenwood', 'Loaned Player', 80000, '2019-07-01'),
(38, 'Facundo Pellistri', 'Hot Prospect', 20000, '2020-10-05'),
(39, 'Amad Diallo', 'Hot Prospect', 28846, '2021-01-02'),
(40, 'Altay Bayindir', 'Backup', 35000, '2023-09-01'),
(41, 'Johnny Evans', 'Backup', 60000, '2023-07-18'),
(42, 'Victor Lindelof', 'Backup', 120000, '2017-07-01'),
(43, 'Andre Onana', 'First Team Player', 120000, '2023-07-20'),
(44, 'Donny Van de Beek', 'Backup', 120000, '2020-09-02'),
(45, 'Hannibal', 'Youngster', 5000, '2022-07-01'),
(46, 'Willy Kambwala', 'Youngster', 5000, '2021-10-08'),
(47, 'Shola Shoretire', 'Youngster', 5000, '2021-02-08'),
(48, 'Gary O Driscoll', 'Head of Sports Science', 5000, '2023-09-17'),
(49, 'Ed Leng', 'Sports Scientist', 3000, '2023-03-07'),
(50, 'Alistair McBurnie', 'Sports Scientist', 1000, '2022-04-01'),
(51, 'Robin Sandler', 'Head Physio', 5000, '2021-04-01'),
(52, 'Richie Merron', 'Physio', 4000, '2021-04-01'),
(53, 'Ash Pracy', 'Physio', 750, '2018-04-01'),
(54, 'John Davin', 'Physio', 2000, '2019-07-01'),
(55, 'Steve Brown', 'Chief Scout', 3000, '2022-07-01'),
(56, 'Douglas George', 'Scout', 1000, '2020-07-01'),
(57, 'Simon Wells', 'Scout', 1000, '2019-07-01'),
(58, 'Les Parry', 'Loan Manager', 2000, '2020-08-01'),
(59, 'Ben McFarlan', 'Data Analyst', 600, '2016-10-01'),
(60, 'Anthony Bates', 'Data Analyst', 700, '2022-08-01');

Select* From Employee_Details;

----------DQL

Select Employee_Details.Employee_Name, Dept_Details.Department_Name From Employee_Details Inner Join Dept_Details on Employee_Details.Job_Role=Dept_Details.Job_Role where Department_Name='Coaching Staff';


select Employee_Name , HiringDate  From Employee_Details where HiringDate >= DATEADD(MONTH, -6, GETDATE());  

-------------TCL

BEGIN TRANSACTION;
update Employee_Details 
set  Job_Role = 'First Team Player', WeeklyWage=80000 where Employee_ID=33;
COMMIT TRANSACTION; 

Select* From Employee_Details;

BEGIN TRANSACTION;
update Employee_Details 
set  Job_Role = 'First Team Player', WeeklyWage=100000 where Employee_ID=33;
ROLLBACK TRANSACTION; 

BEGIN TRANSACTION;
Begin Transaction;
update Employee_Details 
set  Job_Role = 'First Team Player', WeeklyWage=80000 where Employee_ID=19;
save transaction savepoint1;

update Employee_Details 
set  Job_Role = 'Backup', WeeklyWage=30000 where Employee_ID=35;
save transaction savepoint2;
Commit transaction;

update Employee_Details 
set  Job_Role = 'First Team Player', WeeklyWage=275000 where Employee_ID=26;
save transaction savepoint3;

update Employee_Details 
set  Job_Role = 'Backup', WeeklyWage=100000 where Employee_ID=25;
save transaction savepoint4;
ROLLBACK TRANSACTION; 

Select* From Employee_Details;

-----------DCL

--------JOINS
---------Scenario-1(Check for Avg Salary in Each Department)

Select Department_Name, Avg(Employee_Details.WeeklyWage) as AvgWage from Dept_Details Inner Join Employee_Details on Employee_Details.Job_Role=Dept_Details.Job_Role GROUP BY Department_Name ORDER BY AvgWage ;

-------------Scenario-2(Check for No of Employees Earning More Than or Equal to 20000 in each Department)

Select Department_Name, Count(Employee_Details.WeeklyWage) as Wage from Dept_Details Inner Join Employee_Details on Employee_Details.Job_Role=Dept_Details.Job_Role where Employee_Details.WeeklyWage >=20000 GROUP BY Department_Name ;

------------Scenario-3(Check for Employee Names Earning Less Than 20000 Overall and List Departments to which they belong)

Select Employee_Details.Employee_Name, Dept_Details.Department_Name, Employee_Details.WeeklyWage  from Dept_Details Inner Join Employee_Details on Employee_Details.Job_Role=Dept_Details.Job_Role where Employee_Details.WeeklyWage<20000 ;

----------Case Study Integration

Create Table Training_Details
(Employee_ID Int Foreign key references Employee_Details(Employee_ID), Training varchar(30));

Insert into Training_Details Values (5, 'Resource Management'),
(8, 'Language'),
(15, 'Free Kick'),
(15, 'Leadership'),
(15, 'Shooting'),
(16, 'Shooting'),
(16, 'Decision Making'),
(16, 'Leadership'),
(17, 'Language'),
(18, 'Crossing'),
(18, 'Defending'),
(33, 'Language'),
(33, 'Decision Making'),
(33, 'Shooting'),
(33, 'Physical');

Select  Employee_Details.Employee_Name, Training_Details.Training from Employee_Details Inner Join Training_Details on Employee_Details.Employee_ID=Training_Details.Employee_ID;

-------performing various operations on table.

Alter Table Training_Details
add TrainingIntensity varchar(10);

Update Training_Details
Set TrainingIntensity ='Normal';

Update Training_Details
Set TrainingIntensity='High' Where (Employee_ID=18 AND Training='Defending');

Update Training_Details
Set TrainingIntensity='Low' Where (Employee_ID=18 AND Training='Crossing');

Delete from Training_Details
where Employee_ID=5;

Select* From Training_Details;

create table student2(stu_id int primary key, stu_name varchar(20) not null, stu_grade varchar(5)not null, stu_marks int);
insert into student2 values(1, 'Samiksha', 'A', 80),
                          (2, 'Shraddha', 'B+', 70),
						  (3, 'Sakshi', 'B', 65),
						  (4, 'Snehal', 'C', 60),
						  (5, 'Dev', 'A+', 90),
						  (6, 'Raj', 'B', 72),
						  (7, 'Prachi', 'A+', 92),
						  (8, 'Sanika', 'C', 56),
						  (9, 'Vedant', 'B', 74),
						  (10, 'Omkar', 'D', 35);	
select*from student2;					
                                     
------performing various operations on table.

 Alter table student2
 add stu_email varchar(30);

 Alter table student2
 change column stu_id to id;
 Exec sp_rename 'stu_id', 'id';

 Alter table student2
 drop column stu_email;
  
 Truncate table student2;

 select*from student2;

 drop table student2;

 update student2
 set stu_grade= 'A', stu_marks=91
 where stu_id=4;

 update student2
 set stu_name='Komal'
 where stu_id=2;

 delete from student2
 where stu_id=10;

 delete from student2;

 
 select stu_id,stu_name from student2;

  select stu_id,stu_name
  from student2
  where stu_id=1;
  select distinct stu_id from student2;

  select stu_id,stu_name
  from student2
  where stu_marks>=75;

use Student1;
create table Person(
id int not null,
last_name varchar(20) not null,
first_name varchar(20) not null,
age int);

insert into Person values(1, 'ss', 'xx', 20);
insert into Person values(2, 'sss', 'www', null);
insert into Person values(3,null,'zzz', null);

create table Person1(
id int unique,
name1 varchar(20) unique);

insert into Person1 values(1,'samiksha');
insert into Person1 values(2,'samiksha');
insert into Person1 values(3, 'samiksha1');
 
 create table Customer (cust_id int primary key, cust_name varchar(20), cust_product varchar(20), cust_price int);
insert into Customer values(1, 'Samiksha', 'Soap', 100),
                           (2, 'Snehal', 'Shampoo', 200),
						   (3, 'Komal', 'Patanjali oil', 350),
						   (4, 'Dev', 'Honey', 200),
						   (5, 'Shraddha', 'Hide and seek', 150),
						   (6, 'Aishwaraya', 'Body Wash', 650),
						   (7, 'Sakshi', 'Rice', 450),
						   (8, 'Sneha', 'Sugar', 500),
						   (9, 'Raj', 'Daal', 50),
						   (10, 'Krishi', 'Farsan', 75);
select*from Customer;

select cust_name
from Customer
where cust_price>=700 and cust_product='Body Wash';

select cust_name
from Customer
where not cust_product='Body Wash';

select* from Customer
where cust_price between 150 and 700;

select*from Customer
where cust_price in (350, 200, 150);

select*from Customer
where cust_name like 's%';

select*from Customer
where cust_name like 's%a';

select*from Customer
where cust_name like '_a%';

create table Employee2(emp_id int Primary key, first_name varchar(20) not null, last_name varchar(20) not null, emp_salary int,
emp_designation varchar(20), emp_phoneno int, emp_address varchar(20),emp_emailid varchar(20));

insert into Employee2 values(1,'Samiksha', 'Tambe', 25000, 'CA', 99999,'Koperkhairane','xyz@gmail.com'),
                            (2,'Sneha', 'Tawade', 35000, 'coder', 989898,'ghansoli','pqr@gmail.com'),
							(3,'Samiksha', 'Tambe', 10000, 'typist', 7777,'turbhe','tqs@gmail.com'),
							(4,'Komal', 'Sharma', 28000, 'youtuber', 56565,'seawoods','krs@gmail.com'),
							(5,'Kishor', 'Sharma', 29000, 'editor', 69696,'seawoods','lpq@gmail.com'),
							(6,'Snehal', 'Dalvi', 21000, 'coder', 89235,'nerul','sdp@gmail.com'),
							(7,'Kishor', 'Sharma', 29000, 'editor', 69696,'seawoods','lpq@gmail.com'),
							(8,'Komal', 'Sharma', 28000, 'Worker', 83547,'turbhe','ksp@gmail.com'),
							(9,'Sneha', 'Tawade', 20000, 'coder', 454545,'Airoli','spq@gmail.com'),
							(10,'Parth', 'Kale', 46000, 'Developer', 232323,'Sanpada','yst@gmail.com'),
							(11,'Snehal', 'Dalvi', 10000, 'youtuber', 828282,'APMC','xyz@gmail.com'),
							(12,'Parth', 'Kale',15000, 'Tester', 56104,'Thane','pqr@gmail.com');

select*from Employee2;

------performing various operation on table.

select* from Employee2
order by emp_designation DESC;

select emp_designation as designation
from Employee2;

select concat(first_name, last_name) as full_name
from Employee2;

select lower('Samiksha Tambe')
from Employee2;

select upper('Samiksha Tambe')
from Employee2;

select replace(first_name, 'Kishor','Dev')
from Employee2;

select reverse('Sneha Tawade')
from Employee2;

select len('Samiksha');

select substring(first_name,1, 4)
from Employee2;

select ltrim('  samiksha');
select rtrim('  samiksha   ');
select abs(-6);

select(7%2);
select floor(24.45);
select ceiling(24.45);
select ceiling(25.75);

select sqrt(144);
select sqrt(169);

create table order1(order_id int, order_date datetime, order_name varchar(30));

insert into order1 values(1, '2023-11-01 11:05:00', 'laptop'),
                        (2 , '2023-05-31 01:15:25', 'CPU'),
						(3 , '2022-07-18 15:06:18',' mouse'),
						(4 , '2022-08-19 19:28:14', 'keyboard'),
						(5 , '2023-08-05 06:18:30', 'desktop'),
                        (6 , '2021-06-08 09:19:20',' desk'),
						(7 , '2023-03-16 11:16:50', 'pendrive'),
						(8 , '2021-06-04 16:29:30', 'bluetoothspeakers'),
						(9 ,'2020-03-07 23:15:20', 'headsets'),
						(10,'2021-01-05 10:11:48', 'earphones');
						
select*from order1;

------performing various operation on table.

select getdate();
select SYSDATETIME();

select order_date as orderdate
from order1
where order_id=2;

select order_id,dateadd(Day,30,order_date) as Payout from order1;
select order_id,dateadd(Day,10,order_date) as Payout from order1;

select order_id,datediff(Day,2023-11-01, 2022-01-05) as Payout from order1;
select datediff(MONTH,'2023-11-01',' 2022-01-05 ') as Payout;
select datediff(YEAR,'2023-11-01',' 2022-01-05 ') as Payout;

select*from Employee2;

select avg(emp_salary) as avg_sal from Employee2;

select count(first_name) from Employee2;
select min(emp_salary) as avg_sal from Employee2;
select max(emp_salary) as avg_sal from Employee2;

select sum(emp_salary) from Employee2;
select count (order_id) from order1 group by order_name; 

select count (emp_id) from Employee2 group by emp_designation; 

select emp_address, sum(emp_salary) from Employee2 group by emp_address;

select emp_address, sum(emp_salary) from Employee2 group by emp_address having sum(emp_salary)>30000;

use Employee1;
create table Emp(ID int Primary key, name varchar(20));

insert into Emp values(1, 'Varsha'),(2, 'Samiksha'), (3, 'Komal'), (4, 'Shraddha'), (5, 'Sakshi'), (6,'Sandhya'), (7, 'Raj'), (8, 'Snehal'), (9, 'Manasi'),
(10, 'Prachi');

select*from Emp;

create table emp(emp_id int not null, name varchar(20), Id int Foreign key references Per(ID));
 insert into emp values(1, 'Samiksha' ,1), (2, 'Komal',2);


 create table emp1(id int not null, firstname varchar(20),Age int, Constraint chk_emp1 Check(Age>=18));

 insert into emp1 values(1, 'Samiksha', 19), (2, 'Snehal', 16);


 create table Student2(studentID int,Student_FirstName varchar(20),Student_LastName varchar(20), Student_PhoneNumber varchar(20), 
 Student_EmailId varchar(40) DEFAULT 'xyz@gmail.com');
 
 insert into Student2 values(1, 'Samiksha', 'Tambe', 99999, 'abc@gmail.com');
 select*from Student2;
 insert into Student2 values(2, 'Samiksha', 'Tambe', 99999, '');
 insert into Student2 values(3, 'Sam', 'Tambe', 98989, DEFAULT);


 use Student1;
create table itv1(
id int, name varchar(20));

insert into itv1 values(1, 'abc'), (2, 'def'), (3, 'ghi'), (4, 'jkl');
 select*from itv1;

create table Customer (cust_id int primary key, cust_name varchar(20), cust_product varchar(20), cust_price int);
insert into Customer values(1, 'Samiksha', 'Soap', 100),
                           (2, 'Snehal', 'Shampoo', 200),
						   (3, 'Komal', 'Patanjali oil', 350),
						   (4, 'Dev', 'Honey', 200),
						   (5, 'Shraddha', 'Hide and seek', 150),
						   (6, 'Aishwaraya', 'Body Wash', 650),
						   (7, 'Sakshi', 'Rice', 450),
						   (8, 'Sneha', 'Sugar', 500),
						   (9, 'Raj', 'Daal', 50),
						   (10, 'Krishi', 'Farsan', 75);
select*from Customer;

------performing various operation on table.

select cust_name
from Customer
where cust_price>=700 and cust_product='Body Wash';

select cust_name
from Customer
where not cust_product='Body Wash';

select* from Customer
where cust_price between 150 and 700;

select*from Customer
where cust_price in (350, 200, 150);

select*from Customer
where cust_name like 's%';

select*from Customer
where cust_name like 's%a';

select*from Customer
where cust_name like '_a%';

create table Employee2(emp_id int Primary key, first_name varchar(20) not null, last_name varchar(20) not null, emp_salary int,
emp_designation varchar(20), emp_phoneno int, emp_address varchar(20),emp_emailid varchar(20));

insert into Employee2 values(1,'Samiksha', 'Tambe', 25000, 'CA', 99999,'Koperkhairane','xyz@gmail.com'),
                            (2,'Sneha', 'Tawade', 35000, 'coder', 989898,'ghansoli','pqr@gmail.com'),
							(3,'Samiksha', 'Tambe', 10000, 'typist', 7777,'turbhe','tqs@gmail.com'),
							(4,'Komal', 'Sharma', 28000, 'youtuber', 56565,'seawoods','krs@gmail.com'),
							(5,'Kishor', 'Sharma', 29000, 'editor', 69696,'seawoods','lpq@gmail.com'),
							(6,'Snehal', 'Dalvi', 21000, 'coder', 89235,'nerul','sdp@gmail.com'),
							(7,'Kishor', 'Sharma', 29000, 'editor', 69696,'seawoods','lpq@gmail.com'),
							(8,'Komal', 'Sharma', 28000, 'Worker', 83547,'turbhe','ksp@gmail.com'),
							(9,'Sneha', 'Tawade', 20000, 'coder', 454545,'Airoli','spq@gmail.com'),
							(10,'Parth', 'Kale', 46000, 'Developer', 232323,'Sanpada','yst@gmail.com'),
							(11,'Snehal', 'Dalvi', 10000, 'youtuber', 828282,'APMC','xyz@gmail.com'),
							(12,'Parth', 'Kale',15000, 'Tester', 56104,'Thane','pqr@gmail.com');

select*from Employee2;

------performing various operation on table.

select* from Employee2
order by emp_designation DESC;

select emp_designation as designation
from Employee2;

select concat(first_name, last_name) as full_name
from Employee2;

select lower('Samiksha Tambe')
from Employee2;

select upper('Samiksha Tambe')
from Employee2;

select replace(first_name, 'Kishor','Dev')
from Employee2;

select reverse('Sneha Tawade')
from Employee2;

select len('Samiksha');

select substring(first_name,1, 4)
from Employee2;

select ltrim('  samiksha');
select rtrim('  samiksha   ');
select abs(-6);

select(7%2);
select floor(24.45);
select ceiling(24.45);
select ceiling(25.75);

select sqrt(144);
select sqrt(169);

create table order1(order_id int, order_date datetime, order_name varchar(30));

insert into order1 values(1, '2023-11-01 11:05:00', 'laptop'),
                        (2 , '2023-05-31 01:15:25', 'CPU'),
						(3 , '2022-07-18 15:06:18',' mouse'),
						(4 , '2022-08-19 19:28:14', 'keyboard'),
						(5 , '2023-08-05 06:18:30', 'desktop'),
                        (6 , '2021-06-08 09:19:20',' desk'),
						(7 , '2023-03-16 11:16:50', 'pendrive'),
						(8 , '2021-06-04 16:29:30', 'bluetoothspeakers'),
						(9 ,'2020-03-07 23:15:20', 'headsets'),
						(10,'2021-01-05 10:11:48', 'earphones');
						
select*from order1;

------performing various operation on table.

select getdate();
select SYSDATETIME();

select order_date as orderdate
from order1
where order_id=2;

select order_id,dateadd(Day,30,order_date) as Payout from order1;
select order_id,dateadd(Day,10,order_date) as Payout from order1;

select order_id,datediff(Day,2023-11-01, 2022-01-05) as Payout from order1;
select datediff(MONTH,'2023-11-01',' 2022-01-05 ') as Payout;
select datediff(YEAR,'2023-11-01',' 2022-01-05 ') as Payout;

select*from Employee2;

select avg(emp_salary) as avg_sal from Employee2;

select count(first_name) from Employee2;
select min(emp_salary) as avg_sal from Employee2;
select max(emp_salary) as avg_sal from Employee2;

select sum(emp_salary) from Employee2;
select count (order_id) from order1 group by order_name; 

select count (emp_id) from Employee2 group by emp_designation; 

select emp_address, sum(emp_salary) from Employee2 group by emp_address;

select emp_address, sum(emp_salary) from Employee2 group by emp_address having sum(emp_salary)>30000;

--------subqueries

create table product(product_id int primary key, product_name varchar(20), product_quantity int, product_price int);

insert into product values(1, 'dell laptop', 30, 68000),
(2, 'wireless mouse', 40, 500),
(3, 'cpu', 50, 10000),
(4, 'monitor', 40, 20000),
(5, 'pendrives', 25, 800),
(6, 'smartphones', 100, 25000),
(7, 'tables', 65, 2000),
(8, 'chairs', 70, 1500),
(9, 'tab', 25, 80000),
(10, 'headphones', 60, 40000);

select*from product;

Create table Customer1 (
	CustId int primary key,
    CustName varchar(20) not null,
    Product varchar(20),
    Price int
);

Insert into Customer1 values (1,'shubham','Laptop',50000), (2,'arya','mobile',25000), (3,'mrunal','keyboard',1500),
		(4,'aniket','bag',2500), (5,'tejal','tiffin',200), (6,'siddhant','notebooks',100),
        (7,'sakshi','mouse',150), (8,'sanket','pen',10), (9,'bhushan','laptop',30000), (10,'aalapi','mobile',20000);

Select * from Customer1;

------performing various operation on table.

select*from product
where product_id in(select product_id from product where product_price>1000);

select product_id from product where product_price>1000;

create table product2(product_id int primary key, product_name varchar(20), product_quantity int, product_price int);

insert into product2
select*from product where product_id in(select product_id from product);

select*from product2;

update product 
set product_price= product_price*0.25
where product_quantity in(select product_quantity from product2 where product_quantity>=25);

select*from product;
select*from product2;

delete from product
where product_quantity in(select product_quantity from product2 where product_quantity >=25);

create database student1;
use student1;
create table itv1(
id int , name varchar(20));

insert into itv1 values (1,'abc');
insert into itv1 values (2,'xyz') , (3,'pqr') , (4,'dfg') , (5,'rty');

drop database employee; 

create database employee;
use employee;
create table employee(
emp_id int , emp_name varchar(30) , emp_desigation varchar(30));

insert into employee values (1,'ajit chalke', 'manager'),
(2,'ankita mishra','data analyst');

select*from employee;

drop database student1;

create database student1;
use student1;
create table itvedant1(
id int , name varchar(20)
);

insert into itvedant1 values(1,'abc');

select*from itvedant1;

create database student2;
use student2;
create table person(
id int not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
age int
);

insert into person values(1,'ss','xx',20);

create table person1(
id int unique,
first_name varchar(20)
);

insert into person1 values(1,'ankita');

select*from person1;

create table student(
student_id int,
student_name varchar(20),
student_phonenumber varchar(20),
student_emailid varchar(20) default'xyz@gmail.com');

insert into student values (11,'snehal','123456789','ss@gmail.com');
insert into student values (11,'snehal','123456789','default');

select*from student;

create database teacher_student;
use teacher_student;
create table teacher(
tid int primary key,
tname varchar not null,
tphone bigint unique
);

insert into teacher values(1,'ankita','123456789');

create table student(
sid int not null,
sname varchar(20),
sage int
check age>=18,
slocation varchar(20) default 'kamothe',
foreign key(tid) references teacher(tid));

select abs(-6);
select(7%3);
select floor(25.75);
select ceiling(25.75);
select truncate (12.321,2);
select sqrt(144);
select sqrt(-989);

create database management;
create table management(
management_id int not null,
management_name varchar(20),
management_level varchar(20)
);
insert into management values(1,'ankita','data scientist');
insert into management values(2,'nikita','senior');

select*from management;

------performing various operation.

select lower ('junior');

select upper('junior');

select len('ankita');

select substring('ankita' , 1,4);

select rtrim( 'ankita');

select ltrim(    'ankita');

------create table

create table orders(
order_id int primary key,
order_date datetime,
productname varchar(20)
);

insert into orders values(25,'11-02-05 11:06:59','pen');

select*from orders; 

select now() from orders;

create database product1;
create table productdata1(
product_id int not null,
product_name varchar(20),
product_quan varchar(20),
unit_price int
);

insert into productdata1 values(1,'ankita','50000','10');

select*from productdata1;

------performing various operation on table.

update productdata1 set unit_price = unit_price * 0.25 where product_quan in ( select product_quan from productdata1 where product_quan>=5);

delete from productdata1 where product_quan in ( select product_quan from productdata1 where product_quan >=15);

select*from productdata1;

create database temp1;
create database temp2;
create database temp3;
create database temp4;

drop database temp4;

create database hospital;
drop database hospital;

create database college;
use college;
create table student(
id int primary key,
name varchar(50),
age int not null
);

insert into student values(1,'aman',26);
insert into student values(2,'shradha',24);

select*from student;

----create database if not exist college;

drop database if exists temp2;

----show databases;
----show tables;

drop table student;

create table student(
rollno int primary key,
name varchar(50)
);

select*from student;

insert into student values ( 101,'karan');
insert into student values ( 102,'arjun');
insert into student values ( 103,'ram');

select*from student;

insert into student values ( 104,'shyam');

select*from student;

create database company;
use company;
create table employee(
emp_id int primary key , 
emp_name varchar(50),
emp_salary int
);

insert into employee values (1,'ankita',50000);
insert into employee values (2,'anu',50890);
insert into employee values (3,'nikita',50820);

select*from employee;

create table temp1(
id int unique
);

insert into temp1 values (101);

select*from temp1;

create table temp(
id int primary key , 
name varchar(20),
age int,
city varchar(20)
);

create table temp5(
id int , 
name varchar(20),
age int,
city varchar(20),
primary key (id)
);

create table temp6(
id int primary key , 
name varchar(20),
age int,
city varchar(20),
primary key (id,name)
);

create table emp(
id int,
salary int default 25000
);

insert into emp values (1,'10000');
insert into emp values (1,'50000');
insert into emp values (1,'');
insert into emp values (1,default);
insert into emp values (1,'25000');

select*from emp;

create database college;

drop database college;

create database college;
use college;
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student values (101,'anil',78,'c','pune');
insert into student values (102,'bhumika',93,'a','mumbai');
insert into student values (103,'chetan',85,'b','mumbai');
insert into student values (104,'dhruv',96,'a','delhi');
insert into student values (105,'emanuel',12,'f','delhi');
insert into student values (106,'farah',82,'b','delhi');

select*from student;

------performing various operation on table.

select name , marks from student;

select city from student;

select distinct city from student;

select* from student where marks>80;

select*from student where city = 'mumbai';

select* from student where marks>80 and city = 'mumbai';

select*from student where marks+10>100;

select*from student where marks+5>100;

select*from student where marks = 93;

select*from student where marks >90 and city = 'mumbai'; 

select*from student where marks >90 or city = 'mumbai'; 

select*from student where marks between 80 and 90;

select*from student where city in ('delhi','mumbai');

select*from student where city not in ('delhi','mumbai');

select*from student limit3;

-----select* from student where marks > 75 LIMIT 3;

select*from student order by city asc;

select*from student order by city desc;

select*from student order by marks asc;

-----select*from student order by marks asc limit3;

select*from student order by marks desc;

----------select*from student order by marks asc limit3;

select max(marks) from student ;

select min(marks) from student ;

select avg(marks) from student ;

select count(rollno) from student ;

select city from student group by city;

select city,count(name) from student group by city ;

select city,count(rollno) from student group by city ;

select city , name , count(rollno) from student group by city , name;

select city , avg(marks) from student group by city; 

select city , avg(marks) from student group by city order by city;

select city , avg(marks) from student group by city order by avg(marks);

select city , avg(marks) from student group by city order by avg(marks) desc;

select city , avg(marks) from student group by city order by avg(marks) asc;

select grade  from student group by grade ;

select grade  from student group by grade order by grade asc ;

select grade  from student group by grade order by grade desc;

select grade , count(rollno)
from student 
group by grade 
order by grade;

select grade , count(rollno) from student  group by grade  order by grade;

select count(name), city from student group by city having max(marks)>90;

select count(rollno), city from student group by city having max(marks)>90;

select city from student where grade = 'a' group by city having max(marks) >90;

select city from student where grade = 'a' group by city having max(marks) >93;

select city from student where grade = 'a' group by city having max(marks) >93 order by city asc;

select city from student where grade = 'a' group by city having max(marks) >93 order by city desc;

update student set grade='0' where grade = 'a';

select*from student;

update student set marks = 82 where rollno = 105;

select*from student;

update student set grade = 'b' where marks>80;

select*from student;

update student set grade = 'b' where marks between 80 and 90;

select*from student;

update student set marks = marks+1;

select*from student;

update student set rollno='82' where rollno = 105;

select*from student;

update student set marks = 12 where rollno = 105;

select* from student ;

delete from student where marks < 33;

select* from student ;

create table dept(
id int primary key,
name varchar(50)
);

insert into dept values (101,'english');
insert into dept values (102,'IT');

select*from student dept;

update dept set id = 103 where id = 102;

update dept set id = 111 where id = 103;

select*from dept;

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key  ( dept_id) references dept(id)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key  ( dept_id) references dept(id)
on update cascade
on delete cascade
);

drop table teacher;

insert into teacher values (101,'adam',101);
insert into teacher values (102,'eve',102);

select* from teacher;

create database hinduja;
create table pateints(
pateint_id int not null primary key,
pateint_name varchar(20)
);

create table neel(
pateint_id int
foreign key (pateint_id) references pateints,
);

create table student1(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student1 values (101,'anil',78,'c','pune');
insert into student1 values (102,'bhumika',93,'a','mumbai');
insert into student1 values (103,'chetan',85,'b','mumbai');
insert into student1 values (104,'dhruv',96,'a','delhi');
insert into student1 values (105,'emanuel',12,'f','delhi');
insert into student1 values (106,'farah',82,'b','delhi');

select*from student1;

------performing various operation on table.

alter table student1
ADD age int;

select*from student1;

alter table student1
drop column age;

select*from student1;

alter table student1
add age int not null default 19;

select*from student1;

alter table student1
rename to stu;

alter table student1
modify age varchar(2);

alter table student1
change age stu_age int;

create table student2(
rollno int not null,
name varchar(10),
marks int,
age int
);

insert into student2 values(108,'gargi',68,100);

select*from student2;

alter table student2
change age stu_age int;

drop table student2;

create table student2(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student2 values (101,'anil',78,'c','pune');
insert into student2 values (102,'bhumika',93,'a','mumbai');
insert into student2 values (103,'chetan',85,'b','mumbai');
insert into student2 values (104,'dhruv',96,'a','delhi');
insert into student2 values (105,'emanuel',12,'f','delhi');
insert into student2 values (106,'farah',82,'b','delhi');

select*from student2;

truncate table student2;

select*from student2;

insert into student2 values (101,'anil',78,'c','pune');
insert into student2 values (102,'bhumika',93,'a','mumbai');
insert into student2 values (103,'chetan',85,'b','mumbai');
insert into student2 values (104,'dhruv',96,'a','delhi');
insert into student2 values (105,'emanuel',12,'f','delhi');
insert into student2 values (106,'farah',82,'b','delhi');

select*from student2;

------performing various operation on table.

alter table student2
change name full_name varchar(50);

delete from student where marks<80;

select*from student;

alter table student
drop column grade;

select*from student;

drop table course;

create table studentdata(
id int primary key,
name varchar(50)
);

insert into studentdata values (101,'adam');
insert into studentdata values (102,'bob');
insert into studentdata values (103,'casey');

select*from studentdata;

create table course(
id int primary key,
course varchar(50)
);

insert into course values (102,'english');
insert into course values (105,'maths');
insert into course values (103,'science');
insert into course values (107,'computer science');

select*from course;

select*from studentdata;
select* from course;

---performing join 

select*from studentdata inner join course on studentdata.id = course.id;

select*from studentdata as s inner join course on s.id = course.id;

select* from studentdata as s inner join course as c on s.id=c.id;

select* from studentdata as s left join course as c on s.id=c.id;

select* from studentdata as s right join course as c on s.id=c.id;

select* from studentdata as s full join course as c on s.id=c.id;

select* from studentdata as s full outer join course as c on s.id=c.id;

select*
from studentdata as a
left join course as b 
on a.id = b.id
union
from studentdata as a
right join course as b 
on a.id = b.id;

select*
from studentdata as a 
left join course as b
on a.id = b.id
where b.id is null;

select*
from studentdata as a 
right join course as b
on a.id = b.id
where a.id is null;

select*
from studentdata as a 
full outer join course as b
on a.id = b.id
where b.id is null

select*
from studentdata as a 
full outer join course as b
on a.id = b.id
where a.id is null;

drop table employee;

create table employee(
id int primary key,
name varchar(50),
manager_id int
);

insert into employee values (101,'adam',103);
insert into employee values (102,'adam',104);
insert into employee values (103,'adam',null);
insert into employee values (104,'adam',103);

select*from employee;

-----performing join 

select* from employee as a join employee as b on a.id = b.manager_id;

select a.name , b.name from employee as a join employee as b on a.id=b.manager_id;

select a.name as manager_name , b.name from employee as a join employee as b on a.id=b.manager_id;

select name from employee
union 
select name from employee

select name from employee
union all
select name from employee

------performing various operation on table.

select avg(marks)
from student1;

select name from student1 where marks>60;

select name , marks from student1 where marks>60;

select name ,marks from student1 where marks>(select avg(marks) from student1);

select marks from student1 where marks>(select avg(marks) from student1);

select name from student1 where marks>(select avg(marks) from student1);

select rollno from student1 where rollno%2=0;

select name
from student1
where rollno in (102,104,106);

select name,rollno
from student1
where rollno in (102,104,106);

select name , rollno
from student 
where rollno in(
select rollno 
from student
where rollno % 2 = 0 );

select max (marks) from (select * from student1 where city = ' mumbai') as temp;

select max (marks) from (select * from student1 where city = ' delhi') as temp;

select max(marks) from student1 where city = 'mumbai';

select(select max (marks) from student1) , name from student1;

create view view1 as 
select rollno,name, marks from student;

select*from view1;

select*from view1
where marks>90;

drop view view1;

select * from view1;

create database world;
create table city(
id int primary key,
city varchar(50),
age int,
constraint age_check check (age>=5 and city = 'delhi')
);

create table newtab(
age int check (age>=10)
);

create database collegedata;
create table student(
rollno int primary key ,
name varchar(20),
marks int not null,
grade varchar(20),
city varchar(20)
);

insert into student values (1,'ankita',100,'a','mumbai');
insert into student values (2,'shamita',78,'b','pune');
insert into student values (3,'jonson',88,'c','delhi');
insert into student values (4,'asha',90,'d','jharkhand');
insert into student values (5,'amrendra',98,'a','bihar');

select*from student;

------performing various operation on table.

select name, marks from student;
select* from student;
select city from student;

select distinct city from student; 

select*from student where marks>80;

Select* from student where city = 'mumbai';
Select* from student where marks >75 and city = 'mumbai';

select*from student where marks+10>100;

select*from student where marks = 100 ;

select*from student where marks > 90 ;

Select*from student where marks>50 and city = 'mumbai';

Select*from student where marks>50 or city = 'mumbai';

Select* from student where marks between 50 and 100;

Select*from student where city in ('delhi','mumbai');

Select* from student where city not in ('delhi','mumbai');

Select*from student limit3;

Select*from student Order by city asc;
Select*from student Order by city desc;

Select*from student Order by marks asc;
Select*from student Order by marks desc;

select(marks)from student;
select max(marks) from student;

select min(marks) from student;

select count(name) from student;

select sum(marks) from student;

select avg(marks) from student;

Select city 
From student
Group by city;

Select city , name, count(rollno)
From student
Group by name , city;

Select city , name,avg(marks)
From student
Group by name , city;

Select city, avg(marks) from student group by city order by city;

Select city, avg(marks) from student group by city order by avg (marks) asc;

Select city, avg(marks) from student group by city order by avg (marks) desc;

select grade, count(rollno) from student group by grade order by grade;

create database employee1;
use employee1;
create table employee1(emp_id int primary key not null,emp_name varchar(20),emp_salary int , emp_dob datetime,
emp_email varchar(20) default 'abc123@gmail.com');

insert into employee1 values(1,'samiksha tambe',10000,'2004-03-23 04:01:12','samiktambe@gmail.com'),
(2,'ankita mishra',50000,'1999-10-09 03:20:30','anu123@gmail.com.com'),
(3,'komal sharma',45000,'2009-08-20 23:51:18','komal123@gmail.com'),
(4,'shradda jha',23000,'2007-08-20 23:02:18','shradda123@gmail.com'),
(5,'anushka singh',78000,'1999-10-09 03:20:30',default);

select* from employee1;

------performing various operation on table.

alter table employee1
add emp_designation varchar(20);

select* from employee1;

alter table employee1
drop column emp_designation;

select* from employee1;

select emp_id=1
from employee1
where emp_salary>= 78000 and emp_name= 'anushka singh';

select emp_id
from employee1
where emp_salary>= 78000 or emp_name= 'anushka singh';

select emp_id
from employee1
where not emp_name= 'anushka singh';

select* from employee1
where emp_salary in (10000,45000,50000);

select*from employee1
order by emp_name desc;

select emp_name as emp_fullname
from employee1;

select concat (emp_name , emp_email)
from employee1;

select lower (emp_name)
from employee1;

select upper (emp_name)
from employee1;

select replace (emp_name,'samiksha' , 'samu')
from employee1;

select reverse ('samiksha')
from employee1;

select len ('ankita')
from employee1;
select len ('ankita');

select substring(emp_name,1,5)
from employee1;

select ltrim ('      ankita')
select rtrim ('     ankita     ');

select abs ('3');
select abs ('-3');

select (8526/789);

select floor (582213.36/896.36);
select ceiling (23.5);
select (7%3);

select sqrt (159);

select avg (emp_salary) as avg_salary 
from employee1;

select count (emp_name) 
from employee1;

select min (emp_salary) as avg_salary
from employee1;

select avg (emp_salary) as avg_salary 
from employee1;

select max (emp_salary) as avg_salary 
from employee1;

select sum (emp_salary) as avg_salary 
from employee1;

select emp_id, dateadd (day, 15 , emp_dob)
as payout from employee1; 

select emp_id, dateadd (month, 15 , emp_dob)
as payout from employee1; 

select emp_id, dateadd (year, 15 , emp_dob)
as payout from employee1; 


create database collegemgmt;
create table student(
rollno int primary key ,
name varchar(20),
marks int not null,
grade varchar(20),
city varchar(20)
);

insert into student values (1,'ankita',100,'a','mumbai');
insert into student values (2,'shamita',78,'b','pune');
insert into student values (3,'jonson',88,'c','delhi');
insert into student values (4,'asha',90,'d','jharkhand');
insert into student values (5,'amrendra',98,'a','bihar');

select*from student;

select name, marks from student;
select* from student;
select city from student;

------performing various operation on table.

select distinct city from student; 

select*from student where marks>80;

Select* from student where city = 'mumbai';
Select* from student where marks >75 and city = 'mumbai';

select*from student where marks+10>100;

select*from student where marks = 100 ;

select*from student where marks > 90 ;

Select*from student where marks>50 and city = 'mumbai';

Select*from student where marks>50 or city = 'mumbai';

Select* from student where marks between 50 and 100;

Select*from student where city in ('delhi','mumbai');

Select* from student where city not in ('delhi','mumbai');

Select*from student limit3;

Select*from student Order by city asc;
Select*from student Order by city desc;

Select*from student Order by marks asc;
Select*from student Order by marks desc;

select(marks)from student;
select max(marks) from student;

select min(marks) from student;

select count(name) from student;

select sum(marks) from student;

select avg(marks) from student;

Select city 
From student
Group by city;

Select city , name, count(rollno)
From student
Group by name , city;

Select city , name,avg(marks)
From student
Group by name , city;

drop table student;

create table student(
student_id int primary key,
name varchar(20),
major varchar(20)
);

drop table student;

create table student(
student_id int,
name varchar(20),
major varchar(20)
primary key (student_id)
);

-----describe student;

select*from student;

drop table student;

------performing various operation on table.

alter table student
add GPA decimal (3,2);

select*from student;

alter table student drop column GPA;

select*from student;

insert into student values(1,'jackson','biology');

select*from student;

insert into student(student_id , name) values (2,'kate');

insert into student(student_id , name) values (3,'clair');

select*from student;

insert into student values (5,'jackson','biology');
insert into student values (6,'kate','sociology');
insert into student (student_id , name)  values (7,'clair');
insert into student values (8,'jack','biology');
insert into student values (9,'mike','computer science');

select*from student;

create table student(
student_id int auto_increment,
name varchar(20),
major varchar(20)
primary key (student_id)
);

insert into student values ('jack','biology');
insert into student values ('mike','computer science');

select*from student;

------performing various operation on table.

update student
set major = 'bio'
where major = 'biology';

select*from student;

update student
set major = 'comp sci'
where major = 'computer science';

select*from student;

update student
set major = 'comp sci'
where student_id = 4;

select*from student;

update student
set major = 'biochemistry'
where major = 'bio' or major = 'cemistry';

select*from student;

update student
set name = ' tom' , major = 'undecided'
where student_id = 1;

select*from student;

update student
set major = 'undecided'

select*from student;

delete from student;

select*from student;

drop table student;

create table student(
student_id int,
name varchar(20),
major varchar(20)
primary key (student_id)
);

insert into student values (1,'jack','biology');
insert into student values (2,'mike','computer science');
insert into student values (3,'jack','biology');
insert into student values (4,'mike','computer science');
insert into student values (5,'mike','computer science');

select * from student;

------performing various operation on table.

delete from student 
where student_id = 5;

select * from student;

delete from student
where name = 'tom' and major = 'undecided';

select * from student;

delete from student;

select * from student;

drop table student;

create table student(
student_id int,
name varchar(20),
major varchar(20)
primary key (student_id)
);

insert into student values (1,'jack','biology');
insert into student values (2,'mike','computer science');
insert into student values (3,'jack','biology');
insert into student values (4,'mike','computer science');
insert into student values (5,'mike','computer science');

select* from student;

------performing various operation on table.

select name from student;

select name,major from student;

select student.name , student.major from student;

select student.name , student.major from student order by name asc;

select student.name , student.major from student order by name desc;

select student.name , student.major from student order by student_id desc;

select * from student order by major , student_id desc;

select * from student order by major , student_id asc;

select* from student limit2;

select*
from student
order by student_id desc
----limit2;

select*
from student 
where major = 'biology';

select*
from student 
where major = 'biology' or major='chemistry';

select*
from student 
where major = 'cemistry' or name = 'kate';

select*
from student 
where major = 'chemistry';

select*from student;

select*
from student 
where major = 'computer science';

select name , major
from student
where student_id <3;

select name , major
from student
where student_id <3 and name<> 'jack';

select name , major
from student
where name in ('clair' , 'kate' , 'mike');

select name , major
from student
where major in ('biology','cemistry') and student_id > 2;

select name , major
from student
where major in ('biology','computer science') and student_id > 2;

drop table student;

select*from student;

create table employee1(
emp_id int primary key ,
first_name varchar(40),
last_name varchar(40),
birth_day date,
sex varchar(1),
salary int,
super_id int,
branch_id int
);

insert into employee1 values(100,'david' , 'jhonson','1967-11-17','m','25000400',null , null);

select*from employee1;

------performing various operation on table.

update employee1
set branch_id = 1
where emp_id = 100;

select*from employee1;

insert into employee1 values(102,'jan','levinson','null','458888','1967-12-05',null,null);

insert into employee1 values (1001,'alfred' , 'kate','1967-12-17','m','250400',null , null);

select*from employee1;

insert into  employee1 values(103,'jany' , 'redrick','1999-01-18','m','2400',null , null);

update employee1
set branch_id = 2 
where emp_id = 102;

select*from employee1;

insert into employee1 values (104,'ankita' , 'mishra','1999-10-09','m','2400329',null , null);
insert into employee1 values (105,'amrendra' , 'mishra','1967-08-15','m','2400695',null , null);
insert into employee1 values (106,'asha' , 'misra','1970-12-18','f','2445800',null , null);

select*from employee1;

insert into employee1 values (107,'josh' , 'porter','1999-08-15','m','2405',null , null);

select*from employee1;

------performing various operation on table.

update employee1
set branch_id = 3
where emp_id = 106;

select*from employee1;

insert into employee1 values (108,'andy' , 'bernard','1999-08-15','m','2405',null , null);
insert into employee1 values (109,'jim' , 'halpert','1999-08-15','m','2405',null , null);

select*from employee1;

create table branch1(
branch1_id int primary key,
branch1_name varchar(40),
mgr_id int,
mgr_start_date date,
foreign key(mgr_id) references employee (emp_id) on delete set null
);

create table branch10(
branch1_id int primary key,
branch1_name varchar(40),
mgr_id int,
mgr_start_date date
);

insert into branch10 values (101,'corporate',1001,'1987-02-12');

select*from branch10;

insert into branch10 values (102,'scranton','1002','1999-06-25');

select*from branch10;

insert into branch10 values (103,'stanford','1003','1999-06-25');

------performing various operation on table.

select*from branch10;
alter table employee1
add foreign key (branch_id)
references branch(branch_id)
on delete set null;

alter table employee1
add foreign key (super_id)
references branc(emp_id)
on delete set null;

create table client1(
client1_id int primary key,
client1_name varchar(20),
branch1_id int,
foreign key(branch1_id) references branch1 (branch1_id) 
on delete set null
);

create table works_with(
emp_id int primary key,
client_id int,
total_sales int,
primary key(emp_id,client_id),
foreign key(emp_id) references employee(emp_id) on delete set null,
foreign key(client_id) references client(client_id) on delete set null
);

create table works_with(
emp_id int primary key,
client_id int,
total_sales int,
primary key(emp_id,client_id),
foreign key(emp_id) references employee(emp_id) on delete cascade,
foreign key(client_id) references client(client_id) on delete set cascade
);

create database data;
create table branch_supplier1(
id int not null,
name  varchar(20),
product varchar(20)
);

insert into branch_supplier1 values (101,'ankita mishra','gucci bag');
insert into branch_supplier1 values (102,'nikita jha','bag');
insert into branch_supplier1 values (103,'shamita sheety','perfume');
insert into branch_supplier1 values (104,'asha mishra','laptop');
insert into branch_supplier1 values (105,'shruti jha','iphone');

select*from branch_supplier1;

create table client20(
id int not null,
name  varchar(20),
product varchar(20),
pro_sold int
);

insert into client20 values (101,'ankita mishra','gucci bag','25');
insert into client20 values (102,'nikita jha','bag','58');
insert into client20 values (103,'shamita sheety','perfume','89');
insert into client20 values (104,'asha mishra','laptop','89');
insert into client20 values (105,'shruti jha','iphone','69');

select*from client20;

create table works_with5(
id int not null,
name  varchar(20),
product varchar(20),
total_sales int
);

insert into works_with5 values (101,'ankita mishra','gucci bag','25');
insert into works_with5 values (102,'nikita jha','bag','59');
insert into works_with5 values (103,'shamita sheety','perfume','69');
insert into works_with5 values (104,'asha mishra','laptop','87');
insert into works_with5 values (105,'shruti jha','iphone','23');

select*from works_with5;

------performing various operation on table.

select*from branch_supplier1 , client2 , works_with3;

select*
from employee1;

select*
from client2;

select*
from employee1
order by salary;

select*
from employee1
order by salary DESC;

select*
from employee1
order by sex , first_name;

select*
from employee1
order by sex , first_name , last_name;

select*
from employee1
limit5;

select*
from employee1;

select first_name , last_name
from employee1;

select first_name as forename , last_name as surname
from employee1;

select distinct sex
from employee1;

select distinct branch_id
from employee1;

select count(emp_id)
from employee1;

select count(super_id)
from employee1;

select count(emp_id)
from employee1
where sex = 'f' and birth_day >'1970-01-01';

select avg(salary)
from employee1;

select avg(salary)
from employee1
where sex = 'm';

select sum(salary)
from employee1;

select count(sex)
from employee1;

select count(sex)
from employee1
group by sex;

select sum(total_sales) , id
from works_with5
group by id;

select sum(pro_sold) , id
from client20
group by id;

select*
from branch_supplier1
where name like '%llc';

select*
from branch_supplier1
where name like '% label%';

select*
from employee1
where birth_day like '    -10%';

select*
from employee1
where birth_day like '    -02%';

select*
from client20
where name like '%school%';

select first_name from employee1;

select name from branch_supplier1;

select first_name from employee1
union
select name from branch_supplier1;

select first_name from employee1
union
select name from branch_supplier1;

select first_name from employee1
union
select name from branch_supplier1
union
select name from client20;

select first_name as company_names from employee1
union
select name from branch_supplier1
union
select name from client20;

select name from client20
union
select name from branch_supplier1;

select name , id from client20
union
select name , id from branch_supplier1;

select name , client20.id from client20
union
select name , branch_supplier1.id from branch_supplier1;

select salary 
from employee1
union
select total_sales
from works_with5;

insert into branch_supplier1 values (106,'amanda jockey','one plus');

select*from branch_supplier1;

create table emp_info50(
emp_id int primary key,
emp_name varchar(20),
emp_salary int
);

insert into emp_info50 values (1001,'rocky','500000');
insert into emp_info50 values (1002,'rocks','589000');
insert into emp_info50 values (1003,'darky','500250');

select*from emp_info50;

create table emp_data50(
emp_id int primary key,
emp_name varchar(20),
emp_salary int
);

insert into emp_data50 values (1004,'amanda','58900');
insert into emp_data50 values (1005,'charlie','55400');
insert into emp_data50 values (1006,'sandy','53650');

select*from emp_data50;

------performing various operation on table.

select id
from works_with5
where total_sales >30000;

select id
from works_with5
where total_sales >300;

select works_with5.id from works_with5
where works_with5.total_sales > 10;

-----subqueries

select employee1.first_name , employee1.emp_id
from employee1
where emp_id in (
select works_with5.id from works_with5
where works_with5.total_sales > 10
);

select client20.name
from client20
where client20.id = (
select branch_supplier1.id
from branch_supplier1
where branch_supplier1.id = 102
);

select client20.name
from client20
where client20.id = (
select branch_supplier1.id
from branch_supplier1
where branch_supplier1.id = 102
---limit 1
);

create table branchinfo(
branchinfo_id int primary key,
branchinfo_name varchar (20),
mgr_id int,
mgr_start_date date,
foreign key(mgr_id) references employee1(emp_id) on delete set null,
);

select*from branchinfo;

------performing various operation on table.

delete from employee1
where emp_id = 102;

select*from employee1;

drop table branch_supplier1;

select*from branch_supplier1;

create table branch_supply(
id int,
name varchar(20),
type varchar (20),
primary key(id , name),
foreign key (id) references branch_supply on delete cascade
);

------performing various operation on table.

delete from branch
where id = 2;

select*from branch_supply;

---------creation of trigger table

create table triggertest(
message varchar(100)
);

------multiple triggers creation with multiple functions 

delimiter $$
create
trigger my_trigger before insert 
on employee1
for each row begin
insert into trigger_test values ('added new employee');
end $$
delimiter;

insert into employee1 values (110,'oscar','martinez','1968-02-19','M',69000,106,3);

select*from trigger_test;

delimiter $$
create
trigger my_trigger before insert 
on employee1
for each row begin
insert into trigger_test values ('new.first_name');
end $$
delimiter;

insert into employee1 values (110,'kevin','martinez','1968-02-19','M',69000,106,3);

select*from trigger_test;

delimiter $$
create 
trigger my_trigger before insert
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

select*from trigger_test;

delimiter $$
create 
trigger my_trigger2 before insert
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

delimiter $$
create 
trigger my_trigger2 before insert
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

select*from trigger_test;

delimiter $$
create 
trigger my_trigger2 before update
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

select*from trigger_test;

delimiter $$
create 
trigger my_trigger2 before delete
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

select*from trigger_test;

delimiter $$
create 
trigger my_trigger2 after delete
on employee
for eac row begin
if new.sex = 'M' then
insert into trigger_test values('added male employee');
elseif new.sex = 'F' then
insert into trigger_test values('addeed female');
else
insert into trigger_test values('addeed oter employee');
end if;
end $$
delimiter;

insert into employee1values(111,'pam','bessley','1988-02-19','F',69000,105,3);

select*from trigger_test;

create database empmanagement;
create table empdatabase(
id int primary key,
name varchar(20),
dept varchar(20),
salary int,
hiredate date
);

insert into empdatabase values (1, 'John Doe', 'IT','50000', '2023-01-01');
insert into empdatabase values (2, 'Jane Smith', 'HR','89000' ,'2023-02-02');
insert into empdatabase values (3, 'Bob deo', 'Finance','93000' ,'2023-03-10');
insert into empdatabase values (4,'amanda alison','finance','58000','2023-08-15');
insert into empdatabase values (5,'alice brown','marketing','89000','2023-04-20');

select*from empdatabase;

------performing various operation on table.

SELECT * FROM empdatabase WHERE Dept = 'IT';

SELECT Name, HireDate FROM empdatabase WHERE HireDate >= DATEADD(MONTH, -6, GETDATE());	

UPDATE empdatabase SET dept = 'New Job Title', Salary = Salary + 5000 WHERE ID = 1;

select*from empdatabase;

CREATE ROLE Manager;
GRANT UPDATE ON empdatabase TO Manager;

select*from empdatabase;

CREATE ROLE Viewer;
GRANT SELECT ON empdatabase TO Viewer;

select*from empdatabase;

create table  emp_info10(
empName varchar(20), empID int, empdeptName varchar(20) primary key, emphireDate date, empsalary bigint , jobtitle varchar(20));

insert into emp_info10 values ('john',10,'IT','2023-01-01','1000000','data analyst');
insert into emp_info10 values ('sam', 20 ,'sales','2024-08-08','1007800','data scientist');
insert into emp_info10 values ('amanda', 30,'HR','2028-12-10','1004700','ML engineer');
insert into emp_info10 values ('ceily',40,'finance','2023-06-04','1000980','tableau developer');
insert into emp_info10 values ('deo',50,'marketing','2021-01-01','1000360','python developer');

select* from emp_info10;

create table emp_info30(
empName varchar(20), empID int, empdeptName varchar(20) primary key, emphireDate date, empsalary bigint , jobtitle varchar(20));

insert into emp_info30 values ('emma',10,'IT','2003-01-01','1008900','jr. analyst');
insert into emp_info30 values ('mila', 20 ,'operations','2024-08-08','1007800','data scientist');
insert into emp_info30 values ('amanda', 30,'HR','2028-12-10','1004700','ML engineer');
insert into emp_info30 values ('ceily',40,'finance','2023-06-04','1000980','tableau developer');
insert into emp_info30 values ('deo',50,'marketing','2021-01-01','1000360','python developer');

select*from emp_info30;

---performing join 

select*from emp_info10 inner join emp_info30 on emp_info10.empID = emp_info30.empID;

create table  emp_info100  (emp_Name varchar(22), emp_ID int, emp_deptName varchar(22) primary key, emp_hireDate date, emp_salary bigint , job_title varchar(22));
insert into emp_info100 select * from emp_info100 where emp_Name in (select emp_Name from emp_info100) ;

select* from emp_info100;

create table emp_department1000 (dept_Id int, emp_deptName varchar(22) , foreign key(emp_deptName) references emp_info100 (emp_deptName));
insert into emp_department1000 select * from emp_department1000 where emp_deptName in (select emp_deptName from emp_department1000);

select* from emp_department1000;

insert into emp_info100 values ('ankit',7,'operation','2017-08-20',180060,'analyst'),
('vaishnavi',8,'sales','2016-01-12',1405800,'accountant'),('vanes',9,'support','2021-10-05',19508,'consultant');

select emp_info100.emp_deptName , emp_info100.emp_Name , emp_department1000.dept_Id from emp_info100 inner join emp_department1000 on emp_info100.emp_deptName = emp_department1000.emp_deptName;

create table employees (
emp_Id int primary key , emp_Name varchar(20) , department varchar(20));

insert into employees values(100,'johnson','IT'),(101,'jenelia','sales'),(102,'boby','accounts');
select * from employees;

select*from employees;

create  table emptraining_sessions(
session_Id int primary key , dession_Name varchar(20) , session_date date , trainer_Name varchar(20));

insert into emptraining_sessions values(1007, 'SQL basics','2023-02-02','ankita');
insert into emptraining_sessions values (1008,'PBS','2023-10-12','sumit');
insert into emptraining_sessions values (1005,'Data Science','2023-09-10','jaya');

select*from emptraining_sessions;

exec sp_rename 'emptraining_sessions.decision_name','session_name','column';
select*from emptraining_sessions;

create table student5(
 student_id int primary key,
 student_name varchar(20)not null,
 Grade char(5)not null,
 marks int);
 
 insert into student5 values(1,'suyog','A',60);
 insert into student5 values(2,'sumit','B',65),(3,'prem','C',55),(4,'vinod','A',68),(5,'pratish','A',85),(6,'sam','B',55),(7,'ram','B',56);
 select * From student5;

 EXEC SP_RENAME ‘Student5’ , ‘COLUMN’

create database Customer;
use Customer;
create table Customer(
Cust_id int primary key,
Cust_name varchar(20),
product varchar(10),
price int);

insert into Customer values(1,'suyog','Mobile',25000),
(2,'sumit','laptop',65000),
(3,'prem','charger',1500),
(4,'vindo','pendrive',200),
(5,'pratish','keyboard',1500),
(6,'ramesh','bakery',100),
(7,'sam','Tshirt',500),
(8,'tom','jeans',1000);

select * from Customer;

drop table customer;

create database Customer1;

use Customer1;

create table Customer_Details(
Cust_ID int, Cust_Name varchar(30), Product varchar(20), Price float );

insert into Customer_Details values (1,'ABB', 'BMM TANK', 558850),
(1,'ABB', 'BQH TANK', 320000),
(1,'ABB', 'CTQ TANK', 475400),
(1,'ABB', 'BKK TANK', 685000),
(2,'Alstom', 'Concrette Ballast', 420150),
(2,'Alstom', 'E-Loco Door', 286382),
(3,'AlstomBT', 'Cab Structure', 825855),
(4,'JCB', 'Mounting Plate', 25000),
(4,'JCB', 'Mounting Beam', 87258.7),
(4,'JCB', 'Fan Cowl', 487.5),
(5,'Plasser', 'USP CABIN', 884850),
(5,'Plasser', 'MFI CABIN', 875400),
(5,'Plasser', 'Bracket Filler Rod',480.25),
(2,'Alstom', 'AC Duct', 5880.6);

create database Hospital1;
use Hospital1;

create table Doctor(
Did int primary key,
Dname varchar(20) not null,
Ddepart varchar(10),
Dphone bigint );

insert into Doctor values(1,'Dr Ramesh','MBBS',95959),
(2,'Dr Santosh','BAMS',85285),(3,'Dr Manoj','MBBS',98337),(4,'Dr Rajesh','ORTHO',98741),(5,'Dr Samarth','BUMS',98569),
(6,'Dr Suyog','BAMS',85285),(7,'Dr Sameer','PHSYO',93215),(8,'Dr Ravi','MBBS',87987),(9,'Dr Rohit','GYNC',85478),(10,'Dr Akash','BUMS',85795);

select * from Doctor;

use Hospital1;
create table Patient(
Pid int not null,
Pname varchar(20) not null,
Page int,
check (page >=18),
Plocation varchar(20) default 'kamothe',
Did int,
foreign key(Did) references Doctor(Did));

------performing various operation on table.

alter table Patient
add Email varchar(20);

alter table Patient
modify Pid varchar(20);

alter table Patient
rename column Pid to Patient_id;

alter table Patient
add mobilenumber bigint;

alter table Patient
drop column Email;

---------use truncate to delete complete table;

use Hospital1;

------performing various operation on table.

update Doctor
set Ddepart='BAMS' ,Dphone=98965
where Did=1;

update Doctor
set Ddepart='BAMS'
where Did=2;
delete from Doctor
where Did=10;

select Did,Dname
from Doctor
where Did=5;

select * from Doctor
where Ddepart='MBBS';

select * from Doctor
where Ddepart LIKE 'M%';

select * from Doctor
where Ddepart LIKE '_U%S';

select * from Doctor
where Ddepart LIKE '__B%';

create table emp1(emp_id int primary key,
emp_firstname varchar(20),
emp_lastname varchar(20),
salary int,
designation varchar(25),
phone_no bigint,
address varchar(20),
email_id varchar(30) unique);

Create Database EMPLOYEE;
use EMPLOYEE;
Create table EMPLOYEE3(
Emp_id  int UNIQUE,
Emp_name varchar (100),
Emp_Salary int ,
Emp_Designation varchar(100),
Phone_number bigint UNIQUE,
Emp_Address varchar (100),
Emp_Email_id varchar (100) UNIQUE);

Insert into EMPLOYEE3 values(1,'AYUSH',25000,'CEO',11111,'MAHARASTRA','ayush@gmail.com'),
(2,'LABONEE',30000,'MANAGER',22222,'MANIPUR','labonee@gmail.com'),
(3,'SUJAL',35000,'EMPLOYEE',33333,'HYDRABAD','sujal@gmail.com'),
(4,'AYUSH',30000,'EMPLOYEE',44444,'KERELA','ayush1@gmail.com'),
(5,'KSHITIJ',60000,'MANAGER',55555,'JHARKHAND','kshitij@gmail.com'),
(6,'MRUNAL',35000,'EMPLOYEE',66666,'ODISHA','mrunal@gmail.com'),
(7,'NIHAL',30000,'EMPLOYEE',77777,'NAGALAND','nihal@gmail.com'),
(8,'ADWAIT',60000,'MANAGER',88888,'PUNJAB','adwait@gmail.com'),
(9,'KRUNAL',35000,'EMPLOYEE',99999,'MAHARASTRA','krunal@gmail.com'),
(10,'SHUBHAM',46000,'EMPLOYEE',10101,'TELANGANA','shubham@gmail.com'),
(11,'SHREYA',25000,'EMPLOYEE',11110,'UTTAR PRADESH','shreya@gmail.com'),
(12,'KSHITIJ',72000,'MANAGER',12121,'WEST BENGAL','kshitij1@gmail.com'),
(13,'JAADU',33000,'EMPLOYEE',13131,'ODISHA','jaadu@gmail.com'),
(14,'NIHAL',30500,'EMPLOYEE',14141,'WEST BENGAL','nihal1@gmail.com'),
(15,'ATHARVA',75000,'MANAGER',15151,'MADHYA PRADESH','atharva@gmail.com');

select * from EMPLOYEE3;

Create table Orders (
	orderId int primary key,
    orderDate datetime,
    productName varchar(20)
);

Insert into Orders values 
(1,'2023-11-01 11:05:00','Pen'),
(2,'2023-05-31 01:15:25','Book'),
(3,'2022-07-18 15:06:18','Laptop'),
(4,'2022-08-19 19:28:14','Pen'),
(5,'2023-08-05 06:18:30','Bottle'),
(6,'2021-06-08 09:19:20','Pen'),
(7,'2023-03-16 11:16:50','Mobile'),
(8,'2021-06-04 16:29:30','Laptop'),
(9,'2020-03-07 23:15:20','Bottle'),
(10,'2021-01-05 10:11:48','Cover');

create database emp_mgnt_DB;
use  emp_mgnt_DB;

create table department
(dept_Id int not null primary key, dept_Name varchar(25) unique);

create table emp_Details
(emp_Id int not null primary key,emp_firstName varchar(22) ,
emp_lastName varchar(25),emp_Age int ,
emp_DOB date,emp_contact bigint,emp_emailId varchar(25) unique,
dept_Id int , foreign key (dept_Id) references department (dept_Id));
alter table emp_Details add column emp_gender varchar(20);
select* from emp_Details;
select* from department;

drop table emp_Details;
insert into department values (101,'Mechanical'),(201,'CS'),(255,'EXTC'),
(200,'IT'),(110,'Electrical'),(333,'Production');
insert into emp_Details values 
(1,'Vaibhav','Dhanawade',30,'1994-01-08',8652529551,'vaibhav@gmail.com',101,'Male'),
(2,'Dipali','Dhanawade',25,'1998-10-11',8828521382,'dipali@gmail.com',201,'Female'),
(3,'Virang','Dhanawade',1,'2023-12-06',8652529551,'virang@gmail.com',200,'Male'),
(4,'Vidya','Narne',32,'1992-06-12',8652657262,'vidya@gmail.com',333,'Female'),
(5,'Namrata','Bhilare',28,'1996-09-17',3124576890,'namarata@gmail.com',110,'Female'),
(6,'Suhani','Bhilare',3,'2019-03-08',9805672341,'suhani@gmail.com',255,'Female'),
(7,'Sunil','Bhilare',35,'1990-11-22',8890765234,'sunil@gmail.com',110,'Male'),
(8,'Samarat','Narne',37,'1988-09-12',7568904312,'samarat@gmail.com',333,'Male'),
(9,'Vinmay','Junghare',24,'2000-09-23',9123457690,'vinmay@gmail.com',255,'Male'),
(10,'Vaishnavi','Junghare',22,'2002-12-22',9078564523,'vaishu@gmail.com',255,'Female'),
(11,'Devansh','Narne',7,'2017-05-07',9991234560,'devansh@gmail.com',333,'Male'),
(12,'Nilesh','Gavde',30,'1995-04-15',1234567890,'nilesh@gmail.com',101,'Male'),
(13,'Ivan','Gavde',30,'1995-04-15',1234567890,'ivan@gmail.com',101,'Male'),
(14,'Varad','Gavde',30,'1995-04-15',1234567890,'varad@gmail.com',101,'Male'),
(15,'Arti','Singh',2,30/01/1985,8652529551,'arti@gmail.com',101,'Female'),
(16,'Jeevan','Shete',25,08/01/1994,8652529551,'jeevan@gmail.com',200,'Male'),
(17,'Ayush','More',25,08/01/1994,8652529551,'ayush@gmail.com',201,'Male'),
(18,'Sarika','Dundle',33,11/01/1984,8652529551,'sarika@gmail.com',201,'Female'),
(19,'Akash','Vende',15,20/01/2010,8652529551,'akash@gmail.com',110,'Male'),
(20,'Poonam','Jadhav',40,01/02/1993,8652529551,'poonam@gmail.com',110,'Female');

------performing various operation on table.

update emp_Details
set emp_DOB='1985-01-30' where emp_Id=15;
update emp_Details
set emp_DOB='1998-04-05' where emp_Id=16;
update emp_Details
set emp_DOB='2002-12-20' where emp_Id=17;
update emp_Details
set emp_DOB='1990-06-11' where emp_Id=18;
update emp_Details
set emp_DOB='1993-07-18' where emp_Id=19;
update emp_Details
set emp_DOB='1992-02-13' where emp_Id=20;
update emp_Details 
set emp_Age=24 where emp_Id=15;
update emp_Details 
set emp_Age=31 where emp_Id=19;
select *from emp_Details where dept_Id=201 ;

create database emp_mgnt_DB;
use  emp_mgnt_DB;

create table department
(dept_Id int not null primary key, dept_Name varchar(25) unique);

create table emp_Details
(emp_Id int not null primary key,emp_firstName varchar(22) ,
emp_lastName varchar(25),emp_Age int ,
emp_DOB date,emp_contact bigint,emp_emailId varchar(25) unique,
dept_Id int , foreign key (dept_Id) references department (dept_Id));
alter table emp_Details add column emp_gender varchar(20);
select* from emp_Details;
select* from department;

drop table emp_Details;

insert into department values (101,'Mechanical'),(201,'CS'),(255,'EXTC'),
(200,'IT'),(110,'Electrical'),(333,'Production');
insert into emp_Details values 
(1,'Vaibhav','Dhanawade',30,'1994-01-08',8652529551,'vaibhav@gmail.com',101,'Male'),
(2,'Dipali','Dhanawade',25,'1998-10-11',8828521382,'dipali@gmail.com',201,'Female'),
(3,'Virang','Dhanawade',1,'2023-12-06',8652529551,'virang@gmail.com',200,'Male'),
(4,'Vidya','Narne',32,'1992-06-12',8652657262,'vidya@gmail.com',333,'Female'),
(5,'Namrata','Bhilare',28,'1996-09-17',3124576890,'namarata@gmail.com',110,'Female'),
(6,'Suhani','Bhilare',3,'2019-03-08',9805672341,'suhani@gmail.com',255,'Female'),
(7,'Sunil','Bhilare',35,'1990-11-22',8890765234,'sunil@gmail.com',110,'Male'),
(8,'Samarat','Narne',37,'1988-09-12',7568904312,'samarat@gmail.com',333,'Male'),
(9,'Vinmay','Junghare',24,'2000-09-23',9123457690,'vinmay@gmail.com',255,'Male'),
(10,'Vaishnavi','Junghare',22,'2002-12-22',9078564523,'vaishu@gmail.com',255,'Female'),
(11,'Devansh','Narne',7,'2017-05-07',9991234560,'devansh@gmail.com',333,'Male'),
(12,'Nilesh','Gavde',30,'1995-04-15',1234567890,'nilesh@gmail.com',101,'Male'),
(13,'Ivan','Gavde',30,'1995-04-15',1234567890,'ivan@gmail.com',101,'Male'),
(14,'Varad','Gavde',30,'1995-04-15',1234567890,'varad@gmail.com',101,'Male'),
(15,'Arti','Singh',2,30/01/1985,8652529551,'arti@gmail.com',101,'Female'),
(16,'Jeevan','Shete',25,08/01/1994,8652529551,'jeevan@gmail.com',200,'Male'),
(17,'Ayush','More',25,08/01/1994,8652529551,'ayush@gmail.com',201,'Male'),
(18,'Sarika','Dundle',33,11/01/1984,8652529551,'sarika@gmail.com',201,'Female'),
(19,'Akash','Vende',15,20/01/2010,8652529551,'akash@gmail.com',110,'Male'),
(20,'Poonam','Jadhav',40,01/02/1993,8652529551,'poonam@gmail.com',110,'Female');

------performing various operation on table.

update emp_Details
set emp_DOB='1985-01-30' where emp_Id=15;
update emp_Details
set emp_DOB='1998-04-05' where emp_Id=16;
update emp_Details
set emp_DOB='2002-12-20' where emp_Id=17;
update emp_Details
set emp_DOB='1990-06-11' where emp_Id=18;
update emp_Details
set emp_DOB='1993-07-18' where emp_Id=19;
update emp_Details
set emp_DOB='1992-02-13' where emp_Id=20;
update emp_Details 
set emp_Age=24 where emp_Id=15;
update emp_Details 
set emp_Age=31 where emp_Id=19;
select *from emp_Details where dept_Id=201 ;
select * from emp_Details where emp_Age >=25;
select * from emp_Details where emp_Age <=25;
select * from emp_Details where emp_Age <=25 and emp_DOB='2023-12-06';
select emp_firstName , emp_lastName, dept_Id  from emp_Details where emp_Age>=25 and emp_DOB='1994-01-08' ;
select *from emp_Details where dept_Id=300;
select *from emp_Details where dept_Id=333;
select emp_firstName from emp_Details where emp_Age  between 15 and 30;
select * from emp_Details where emp_Age  between 1 and 10;
select emp_firstName from emp_Details where emp_gender='female';
select * from emp_Details where emp_gender='male';
select  emp_Age from emp_Details where emp_gender='male';
select * from emp_Details where  emp_gender='male';
select* from emp_Details where emp_Age<=10 and emp_firstName='virang';
select emp_firstName , emp_lastName from emp_Details where emp_Age>=20 or emp_gender='male';
select emp_firstName , emp_lastName from emp_Details where emp_Age>=20 and emp_gender='male';
select emp_firstName,emp_lastName from emp_Details where emp_firstName  like '%y';
select * from emp_Details where emp_firstName  like 'v%';
select * from emp_Details where emp_firstName  like '__p%';
select * from emp_Details where emp_firstName  like 'v__%a';
select upper (dept_Name) from department;
select upper (emp_emailId) from emp_Details;
select length(dept_Name) from department;
select length(emp_emailId) from emp_Details;
select length(emp_lastName) from emp_Details;
select length(emp_firstName) from emp_Details;
select substr(emp_firstName,3,8) from emp_Details;
select substring(emp_lastName,2,5) from emp_Details;
select lower(emp_lastName) from emp_Details;
select lower(emp_firstName) from emp_Details;
select lower(dept_Name) from department;
select reverse(dept_Id) from department;
select reverse(dept_Name) from department;
select reverse(emp_emailId) from emp_Details;
alter table emp_Details 
add column emp_salary double ;
alter table emp_Details drop column emp_salary;
select*from emp_details;
alter table emp_Details add column emp_salary float;
update emp_Details
set emp_salary=200000 where emp_Id=1;
update emp_Details
set emp_salary=100000 where emp_Id=2;
update emp_Details
set emp_salary=90000 where emp_Id=3;
update emp_Details
set emp_salary=80000 where emp_Id=4;
update emp_Details
set emp_salary=75000.89 where emp_Id=5;
update emp_Details
set emp_salary=65000 where emp_Id=6;
update emp_Details
set emp_salary=70000.56 where emp_Id=7;
update emp_Details
set emp_salary=50000 where emp_Id=8;
update emp_Details
set emp_salary=25000 where emp_Id=9;
update emp_Details
set emp_salary=20000 where emp_Id=10;
update emp_Details
set emp_salary=10000.40 where emp_Id=11;
update emp_Details
set emp_salary=10000.50 where emp_Id=12;
update emp_Details
set emp_salary=55000 where emp_Id=13;
update emp_Details
set emp_salary=40000.40 where emp_Id=14;
update emp_Details
set emp_salary=35000.60 where emp_Id=15;
insert into emp_Details values(21,'xyz','def',10,'1989-08-05',9412567890,'xyz@gmail.com',200,'Female',30000);
select *from emp_Details order by emp_salary desc;

create database student;
use student;
create table student_info(
student_id int primary key,
student_firstname varchar(20) not null,
student_lastname varchar(20) not null,
student_branch varchar(20) not null);
insert into student_info values(1,'pushpit','mandloi','computer'),
(2,'prateek','jadhav','computer'),
(3,'anuj','sawant','computer'),
(4,'amar','jamadade','computer'),
(5,'shreyash','mali','civil'),
(6,'kaustubh','pital','civil'),
(7,'ranjit','singh','civil'),
(8,'sahil','late','AI'),
(9,'pranav','mokal','AI'),
(10,'sahil','mahale','electrical'),
(11,'yash','bhalrao','electrical'),
(12,'pranay','kasbe','mechanical'),
(13,'sunny','pawshe','mechanical'),
(14,'saurabh','gawade','mechanical'),
(15,'nikhil','mogare','mechanical');
select*from student_info;
select student_id,student_firstname from student_info;
create table stu_info(
id int foreign key references student_info(student_id),
student_firstname varchar(20));
insert into stu_info values(1,'pushpit'),
(2,'prateek'),
(3,'anuj'),
(4,'amar');
select*from stu_info;

------performing various operation on table.

alter table student_info
add age int;
select*from student_info;
insert into student_info(student_id,student_firstname,student_lastname,student_branch,age) values (19,'pushpit','mandloi','computer',22);
insert into student_info(student_id,student_firstname,student_lastname,student_branch,age) values (22,'prateek','jadhav','computer',20),
(23,'anuj','sawant','computer',18),
(24,'amar','jamadade','computer',17);

------performing various operation on table.

alter table student_info
drop column age;
update student_info
set student_branch = 'computer'
where student_id = 5;
select*from student_info;
delete from student_info
where student_id = 6;
select distinct student_id from student_info;
select*from student_info
where student_branch = 'computer';
select student_firstname
from student_info
where student_firstname like'p%';
select student_firstname
from student_info
where student_firstname like'%t';
select student_firstname
from student_info
where student_branch not like 'computer';
select student_id as id
from student_info;
select*from student_info
order by student_branch;
select*from student_info
order by student_branch desc;
select concat(student_firstname,student_lastname) as full_name
from student_info;
select upper(student_firstname)
from student_info;
truncate table stu_info;

create database records;
use records;

create table worker1(
worker_id int primary key,
worker_name varchar(20),
worker_mobilenumber int,
worker_email_id varchar(30) NOT NULL,
worker_joindate datetime,
worker_designation varchar(20) DEFAULT 'abc@gmail.com',
worker_salary int);

insert into worker1 values(1,'amar',8765,'amar@gmail.com','2021-12-01 11:02:02','manager',50000);
insert into worker1 values(2,'pratik',8965,'pratik@gmail.com','2022-11-01 06:03:35','employee',5000);
insert into worker1 values(3,'anuj',3456,'anuj@gmail.com','2021-05-10 05:04:20','case',8000);
insert into worker1 values(4,'pushpit',1234,'pushpit@gmail.com','2020-08-09 04:05:28','food',3000);
insert into worker1 values(5,'shreyash',9546,'shreyash@gmail.com','2023-06-22 03:06:02','nursing',9000);
insert into worker1 values(6,'kaustubh',5467,'kaustubh@gmail.com','2019-05-31 02:07:59','superwisor',5500);
insert into worker1 values(7,'manoj',7489,'manoj@gmail.com','2021-12-01 01:08:06','dataentry',5200);

select*from worker1;

exec sp_rename worker_name, name;

------performing various operation on table.

alter table worker1
drop column worker_salary
select*from worker1;

truncate table worker1
select*from worker1;

update worker1
set worker_name='akash'
where worker_id=1
select*from worker1;

delete from worker1
where worker_id=1
select*from worker1;

select worker_id, worker_name from worker1
where worker_id=7
select*from worker1;

select*from worker1
where worker_salary<=10000;

select*from worker1
order by worker_designation;

select*from worker1
order by worker_name desc;

select worker_designation as worker_name from worker1;

select concat(worker_name, worker_designation) as worker_info from worker1;

select upper(worker_name) from worker1;

select lower(worker_designation) from worker1;

select replace(worker_name, 'amar', 'aaaa') from worker1;

select reverse(worker_mobilenumber) from worker1;

select len(worker_email_id) from worker1;

select substring(worker_designation, 1,3) from worker1;

select ltrim(	worker_mobilenumber) from worker1;

select rtrim(worker_name) from worker1;

select abs(worker_salary) from worker1;

select floor(1.5) from worker1;

select ceiling(555.777) from worker1;

select round(56.99,12) from worker1;

select sqrt(144) from worker1;

select avg(worker_salary) as avg_salary from worker1;

select count(worker_id) from worker1;

select max(worker_salary) from worker1;

select sum(worker_salary) from worker1;

select getdate() from worker1;

select sysdatetime() from worker1;

select worker_name as worker_date from worker1
where worker_id=7;

select worker_id, dateadd(day,10, worker_joindate) as payout from worker1;

select worker_id, datediff(year, '2019-05-31','2021-12-01') as payout from worker1;

create database players;
use players;

create table player3(
player_id int not null,
last_name varchar(20),
first_name varchar(20),
DOB datetime,
fav_game varchar(20),
salery bigint );

insert into player3 values(1,'Jadhav','Pratik','2003-09-02 05:12:29','Cricket',500000);
insert into player3 values(2,'Jamdade','Amar','2003-07-19 07:12:28','Freefire',400000);
insert into player3 values(3,'Sawant','Anuj','2003-07-29 07:13:27','Cricket',300000);
insert into player3 values(4,'Mandloi','Pushpit','2001-06-22 22:13:12','Football',200000);
insert into player3 values(5,'Mali','Shreyash','2003-12-27 08:14:32','volleyball',100000);
insert into player3 values(6,'Sanap','Sanket','2003-09-23 09:15:27','Badminton',50000);
insert into player3 values(7,'Sawant','Soham','2003-10-05 01:15:26','Polo',40000);
insert into player3 values(8,'Toraskar','Rutuja','2003-07-05 11:16:32','Golf',30000);
insert into player3 values(9,'Artificial','Anushka','2001-01-22 12:55:22','Chess',20000);
insert into player3 values(10,'Soni','Princess','2001-10-12 13:16:42','Soccer',10000);
insert into player3 values(11,'Bhalerao','Yash','1999-04-02 14:13:42','Hockey',60000);
insert into player3 values(12,'Mahale','Sahil','2002-06-01 15:12:32','Baseball',50000);
insert into player3 values(13,'Patil','Rohit','2000-12-22 16:17:32','Boxing',550000);
insert into player3 values(14,'Yadav','Rutik','2003-02-02 17:36:22','Cycling',20000);
insert into player3 values(15,'Pilane','Abhishek','2002-08-18 18:46:12','Handball',60000);

select*from player3;

------performing various operation on table.

select first_name 
from player3
where salery>=60000;

select last_name 
from player3
where salery>=100000 and fav_game= 'cricket';

select player_id 
from player3 
where salery>=300000 or fav_game='cricket';

select*from 
player3
where salery between 100000 and 500000;

select*from
player3 
where salery in(100000,200000,300000);

select*from
player3
where first_name like('pr%');

Alter table player3
add email varchar(30);

alter table player3
Drop column email;

select*from player3;

update player3
set salery=100000 , fav_game='cricket'
where player_id=11;

delete from player3
where player_id=7;

select player_id,first_name from player3;

select distinct last_name from player3;

select*
from player3
where salery=10000;

select*from player3
order by last_name;

select* from player3
order by first_name desc;

select* from player3
order by first_name,fav_game;

select player_id as id
from player3;

select concat('last_name','first_name') as full_name from player3;

select lower('last_name')
from player3;

select upper(first_name)
from player3;

select replace (salery,200000,20)
from player3;

select reverse(last_name)
from player3

select len (first_name)
from player3;

select substring(first_name,1,4)
from player3;

select avg(salery)as avg_sal from player3;

select count(first_name) from player3;

select max(salery) avg_sal from player3;

select min(salery) avg_sal from player3;

select sum (salery) from player3;

select DOB as DOB
from player3
where player_id=1;

select player_id, dateadd(day,10,DOB)as payout from player3;

select player_id, datediff(day,'2003-09-02','2003-09-23')as payout from player3;
select player_id, datediff(month,'2003-09-02','2023-07-29')as payout from player3;
select player_id, datediff(year,'2001-06-22','2003-09-02')as payout from player3;

truncate table player3;

CREATE database studentinformation;

create table student02(stu_id int primary key,student_name varchar(400),student_stream varchar(400), student_percent float,student_grade char(100), student_marks float);

insert into student02 values(1,'Abhisheik Mahtre','Science',51.32,'C',350);
insert into student02 values(2,'Shubham Meshram','Commerce',76.23,'B',600),(3,'Shweta Patil','Arts',88.20,'A',900),
(4,'Shiv Kumar ','Arts',68.20,'B',700),
(5,'Rutuja Patil','Science',40.10,'C',300),
(6,'Rohit Wadkar','Science',74.23,'A',600),
(7,'Omkar Ankat','Science',72.30,'A',550),
(8,'Omkar Ankat','Science',72.30,'A',550),
(9,'Rohit Wadkar','Science',74.23,'A',600),
(10,'Shiv Kumar ','Arts',68.20,'B',700),
(11,'Rohit Wadkar','Science',74.23,'A',600),
(12,'Jayesh Sathe','Comm…
[11:51, 15/01/2024] Ankita Mishra: create table student17(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null);

insert into student17 values(1,'anuj','juinagar','anuj05@gmail.com',20);
insert into student17 values(2,'pratik','kalamboli','pratik@gmail.com',17),
(3,'amar','kalamboli1','amar@gmail.com',19);
insert into student17 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student17 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20),
(9,'adi','satara1','adi@gmail.com',19),
(10,'mayur','beed','mayur@gmail.com',23);
insert into student17 values(11,'pravin','rajasthan','',21);
select*from student17;

-------performing various operation on table.

update student17
set student_age=20
where student_id=2;

delete 
from student17
where student_id=3;

select student_add,student_age from student17;

alter table student17
add student_no int;

alter table student17
remove student_no int;

alter table student17
drop column student_no;

select*from student17;

truncate table student17;

create table student21(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null);

select*from student21;

insert into student21 values(1,'anuj','juinagar','anuj05@gmail.com',20);
insert into student21 values(2,'pratik','kalamboli','pratik@gmail.com',17),
(3,'amar','kalamboli1','amar@gmail.com',19);
insert into student21 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student21 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20),
(9,'adi','satara1','adi@gmail.com',19),
(10,'mayur','beed','mayur@gmail.com',23);
insert into student21 values(11,'pravin','rajasthan','',21);
select*from student21;

------performing various operation on table.

select student_add 
from student21
where student_name='sahil' and student_id=7;

select student_name
from student21
where student_age>=19;

select student_name 
from student21
where not student_age<=21;

select student_name
from student21
where student_age between  19 and 21;

select student_name
from student21
where student_age not between  19 and 21; 

select student_name 
from student21
where student_age in (19,20,21)

select* 
from student21
where student_name like ('a%');

select*
from student21
where student_name like ('%r')

select*
from student21
where student_name like ('m%r')

select* from student21 
order by student_id;

select* from student21 
order by student_id desc;

select student_id as stud_id 
from student21;

select concat (student_id,student_name) as idandname
from student21;

select upper(student_name) from student21;

select replace (student_name,'amar', 'amarjamdhade') from student21;

select len (student_name) from student21;

select reverse(student_name) from student21;

select max(student_age) as age from student21;

select min(student_age) as age from student21;

select avg(student_age) as agw from student21;

select substring(student_name,1,4)
from student21;

create table student22(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null,
admission_date datetime);

insert into student22 values(1,'anuj','juinagar','anuj05@gmail.com',20,'2021-07-03 11:05:08');
insert into student22 values(2,'pratik','kalamboli','pratik@gmail.com',17,'2017-09-8 08:07:09');
insert into student22 values(3,'amar','kalamboli1','amar@gmail.com',19,'2018-03-28, 09:32;21');
insert into student22 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student22 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20);
select*from student22;

------performing various operation on table.

select getdate() from student22;

select SYSDATETIME() from student21;

select admission_date as date2
from student22
where student_id=3;

select student_id, DATEADD(day,20,admission_date) as payout from student22;

select student_id, datediff(day,10,admission_date) as payout from student22;

create table student17(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null);

insert into student17 values(1,'anuj','juinagar','anuj05@gmail.com',20);
insert into student17 values(2,'pratik','kalamboli','pratik@gmail.com',17),
(3,'amar','kalamboli1','amar@gmail.com',19);
insert into student17 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student17 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20),
(9,'adi','satara1','adi@gmail.com',19),
(10,'mayur','beed','mayur@gmail.com',23);
insert into student17 values(11,'pravin','rajasthan','',21);
select*from student17;

------performing various operation on table.

update student17
set student_age=20
where student_id=2;

delete 
from student17
where student_id=3;

select student_add,student_age from student17;

alter table student17
add student_no int;

alter table student17
remove student_no int;

alter table student17
drop column student_no;

select*from student17;

truncate table student17;

create table student21(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null);

select*from student21;

insert into student21 values(1,'anuj','juinagar','anuj05@gmail.com',20);
insert into student21 values(2,'pratik','kalamboli','pratik@gmail.com',17),
(3,'amar','kalamboli1','amar@gmail.com',19);
insert into student21 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student21 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20),
(9,'adi','satara1','adi@gmail.com',19),
(10,'mayur','beed','mayur@gmail.com',23);
insert into student21 values(11,'pravin','rajasthan','',21);
select*from student21;

------performing various operation on table.

select student_add 
from student21
where student_name='sahil' and student_id=7;

select student_name
from student21
where student_age>=19;

select student_name 
from student21
where not student_age<=21;

select student_name
from student21
where student_age between  19 and 21;

select student_name
from student21
where student_age not between  19 and 21; 

select student_name 
from student21
where student_age in (19,20,21)

select* 
from student21
where student_name like ('a%');

select*
from student21
where student_name like ('%r')

select*
from student21
where student_name like ('m%r')

select* from student21 
order by student_id;

select* from student21 
order by student_id desc;

select student_id as stud_id 
from student21;

select concat (student_id,student_name) as idandname
from student21;

select upper(student_name) from student21;

select replace (student_name,'amar', 'amarjamdhade') from student21;

select len (student_name) from student21;

select reverse(student_name) from student21;

select max(student_age) as age from student21;

select min(student_age) as age from student21;

select avg(student_age) as agw from student21;

select substring(student_name,1,4)
from student21;

create table student22(
student_id int primary key,
student_name varchar(20) not null,
student_add varchar(200) unique,
student_email_id varchar(30)default 'xyz@gmail.com',
student_age int not null,
admission_date datetime);

insert into student22 values(1,'anuj','juinagar','anuj05@gmail.com',20,'2021-07-03 11:05:08');
insert into student22 values(2,'pratik','kalamboli','pratik@gmail.com',17,'2017-09-8 08:07:09');
insert into student22 values(3,'amar','kalamboli1','amar@gmail.com',19,'2018-03-28, 09:32;21');
insert into student22 (student_id,student_name,student_add,student_age) values(4,'pushpit','pushpit@gmail.com',19);
insert into student22 values(5,'shreyash','dahanu','shreyash@gmail.com',21),
(6,'beni','ulhasnagar','beni@gmail.com',18),
(7,'sahil','neral','sahil@gmail.com',16),
(8,'abhi','satara','abhi@gmail.com',20);
select*from student22;

------performing various operation on table.

select getdate() from student22;

select SYSDATETIME() from student21;

select admission_date as date2
from student22
where student_id=3;

select student_id, DATEADD(day,20,admission_date) as payout from student22;

select student_id, datediff(day,10,admission_date) as payout from student22;

Create database Assignment;
use Assignment;
Create Table Student1(
Student_Id int Primary key,
Student_Name Varchar (100),
Student_Last_Name Varchar (100),
Student_Grade Varchar(10),
Student_Percentage int);

insert into Student1 values
(1,'Ayush','Bagwe','A',93.25),
(2,'Labonee','Kumbhare','B',83.75),
(3,'Kshitij','Satpal','C',79.22),
(4,'Ayush','Bhagat','D',67.54),
(5,'Rishab','Shetty','A',96.32),
(6,'Kirtan','Solanki','C',72.86),
(7,'Atharva','Shinde','D',61.45),
(8,'Rahul','Prabhu','B',86.22),
(9,'Binay','Gupta','C',77.54),
(10,'Jiten','Patel','D',66.32);

select * from Student1;

------performing various operation on table.

select * from Student1
order by Student_Name;

select * from Student1
order by Student_Name DESC;

select Student_Name as Name
from Student1;

select concat (Student_Name,Student_Last_Name) as Student_Fullname from Student1;

select Lower(Student_Name) as Name from Student1;

select Upper(Student_Name) as Name from Student1;

select Replace(Student_Name,'Ayush','Bagwe') as Name from Student1;

select Reverse(Student_Name) as Name from Student1;

select Len(Student_Name) as Name from Student1;

select Substring(Student_Name,1,4) as Name from Student1;

Select Student_Name
from Student1
where Student_Percentage>=75 and Student_Grade='A';

Select Student_Name
from Student1
where Student_Percentage>=75 or Student_Grade='A';

Select Student_Name
from Student1
where not Student_Grade='A';

Select * 
from Student1
Where Student_Percentage between 75 and 90;

Select *
from Student1
where Student_Percentage in (72,79,86);

select *
from Student1
where Student_Name LIKE 'K%';

select *
from Student1
where Student_Name LIKE '%l';

select *
from Student1
where Student_Name LIKE 'A%a';

select *
from Student1
where Student_Name LIKE '_i%';

select *
from Student1
where Student_Name NOT LIKE 'K%';

Select Max(Student_Percentage) as Maxpercentage from Student1; 

Select Min(Student_Percentage) as Minpercentage from Student1;

Select Sum(Student_Percentage) as Sumpercentage from Student1;

update Student1
set Student_Grade='A',Student_Percentage=75
where Student_Id=4;

update Student1
set Student_Name='Nidhish'
where Student_Id=2;

alter table student1
add student_no int;

alter table student1
drop column student_no;

create database employee;
use employee;
create table employee2(emp_id int primary key not null,emp_name varchar(20),emp_salary int , emp_dob datetime,
emp_email varchar(20) default 'abc123@gmail.com');

insert into employee2 values(1,'samiksha tambe',10000,'2004-03-23 04:01:12','samiktambe@gmail.com'),
(2,'ankita mishra',50000,'1999-10-09 03:20:30','anu123@gmail.com.com'),
(3,'komal sharma',45000,'2009-08-20 23:51:18','komal123@gmail.com'),
(4,'shradda jha',23000,'2007-08-20 23:02:18','shradda123@gmail.com'),
(5,'anushka singh',78000,'1999-10-09 03:20:30',default);

select* from employee2;

------performing various operation on table.

alter table employee2
add emp_designation varchar(20);

alter table employee2
drop column emp_designation;
select* from employee2;

select emp_id=1
from employee2
where emp_salary>= 78000 and emp_name= 'anushka singh';

select emp_id
from employee2
where emp_salary>= 78000 or emp_name= 'anushka singh';

select emp_id
from employee2
where not emp_name= 'anushka singh';

select* from employee2
where emp_salary in (10000,45000,50000);

select*from employee2
order by emp_name desc;

select emp_name as emp_fullname
from employee2;

select concat (emp_name , emp_email)
from employee2;

select lower (emp_name)
from employee2;

select upper (emp_name)
from employee2;

select replace (emp_name,'samiksha' , 'samu')
from employee2;

select reverse ('samiksha')
from employee2;

select len ('ankita')
from employee2;
select len ('ankita');

select substring(emp_name,1,5)
from employee2;

select ltrim ('      ankita')
select rtrim ('     ankita     ');

select abs ('3');
select abs ('-3');

select (8526/789);

select floor (582213.36/896.36);
select ceiling (23.5);
select (7%3);

select sqrt (159);

select avg (emp_salary) as avg_salary 
from employee2;

select count (emp_name) 
from employee2;

select min (emp_salary) as avg_salary
from employee2;

select avg (emp_salary) as avg_salary 
from employee2;

select max (emp_salary) as avg_salary 
from employee2;

select sum (emp_salary) as avg_salary 
from employee2;

select emp_id, dateadd (day, 15 , emp_dob)
as payout from employee2; 

select emp_id, dateadd (month, 15 , emp_dob)
as payout from employee2; 

select emp_id, dateadd (year, 15 , emp_dob)
as payout from employee2;

drop database employee;

create database Employee;

use Employee;

create table Employee2(
EMP_ID int Unique, EMP_Name varchar(30), EMP_Designation varchar(20), Salary int,  Phone_Num bigint Unique, EMP_Address varchar(40) , Email varchar(40));
insert into Employee2 values (1,'Erik Ten Hag','Manager',75000,87484563,' Holland','eriktenhag@manutd.com'),
(2,'Aaron Wan Bissaka','Right Back',50000,84632573,'England','abissaka@manutd.com'),
(3,'Luke Shaw','Left Back',120000,81780583,'England','lukeshaw@manutd.com'),
(4,'Harry Maguire','Centre Back',250000,78928593,'England','hmaguire@manutd.com'),
(5,'Raphael Varane','Centre Back',280000,76076603,'France','rvarane@manutd.com'),
(6,'Victor Lindelof','Centre Back',200000,73224613,'Sweden','vlindelof@manutd.com'),
(7,'Jonny Evans','Centre Back',100000,70372623,'Northern Ireland','jevans@manutd.com'),
(8,'Casemiro','Defensive Mid',375000,85520633,'Brazil','casemiro@manutd.com'),
(9,'Kobbie Mainoo','Defensive Mid',20000,84668643,'England','kmainoo@manutd.com'),
(10,'Bruno Fernandes','Midfielder',425000,82816653,'Portugal','bfernandes@manutd.com'),
(11,'Marcus Rashford','Left Winger',375000,85964663,'England','mrashford@manutd.com'),
(12,'Antony','Right Winger',200000,89112673,'Brazil','antony@manutd.com'),
(13,'Antony Garnacho','Left Winger',75000,83260683,'Argentina','agarnacho@manutd.com'),
(14,'Anthony Martial','Striker',175000,80408693,'France','amartial@manutd.com'),
(15,'Rasmus Hojlund','Striker',250000,84556703,'Denmark','rhojlund@manutd.com'),
(16,'Jadon Sancho','Winger',250000,88704713,'England','jsancho@manutd.com'),
(17,'Christian Eriksen','Midfielder',175000,81852723,'Denmark','ceriksen@manutd.com'),
(18,'Mason Mount','Midfielder',250000,89000733,'England','mmount@manutd.com'),
(19,'Brandon Williams','Left Back',20000,82148743,'England','bwilliams@manutd.com'),
(20,'Diogo Dalot','Right Back',50000,79296753,'Portugal','ddalot@manutd.com'),
(21,'Scott Mctominay','Midfielder',120000,80444763,'Scotland','smctominay@manutd.com');

select *from Employee2;

use Employee;

select *from Employee2;

------performing various operation on table.

Select count(EMP_ID) from Employee2 group by (EMP_Designation);

Select sum(Salary) from Employee2 where Salary>=25000 group by (EMP_Designation) ;

Select EMP_Designation, sum(Salary)as TotalWage from Employee2 where Salary>=25000 group by (EMP_Designation) order by (TotalWage);

Select EMP_Designation, max(Salary)as MaxWage from Employee2 where Salary>=25000 group by (EMP_Designation) order by (MaxWage);

Select EMP_Designation, min(Salary)as MinWage from Employee2 where Salary>=25000 group by (EMP_Designation) order by (MinWage);

Select EMP_Designation, avg(Salary)as AvgWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (AvgWage);

Select EMP_Designation, sum(Salary)as TotalWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (TotalWage);

Select EMP_Designation, max(Salary)as MaxWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (MaxWage);

Select EMP_Designation, min(Salary)as MinWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (MinWage);

Select EMP_Designation, avg(Salary)as AvgWage from Employee2 where Salary<=25000 group by (EMP_Designation) order by (AvgWage);

Select EMP_Designation, sum(Salary)as TotalWage from Employee2  group by (EMP_Designation) having sum(Salary)>=100000 order by (EMP_Designation);

Select EMP_Designation, sum(Salary)as TotalWage from Employee2  group by (EMP_Designation) having max(Salary)<=100000 order by (EMP_Designation);

CREATE TABLE Product1 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    Manufacturer VARCHAR(50),
    ReleaseDate DATE,
    Description TEXT,
    Rating DECIMAL(3, 2),
    DiscountPercent DECIMAL(5, 2)
);
drop table product1;
INSERT INTO Product1 VALUES
(1, 'Laptop', 'Electronics', 1200.00, 50, 'ABC Electronics', '2022-01-15', 'High-performance laptop with the latest specifications.', 4.5, 5.00),
(2, 'Smartphone', 'Electronics', 500.00, 100, 'XYZ Tech', '2022-02-28', 'Feature-rich smartphone with a sleek design.', 4.2, 8.00),
(3, 'Tablet', 'Electronics', 300.50, 30, 'Tech Innovators', '2022-03-10', 'Portable tablet for entertainment and productivity.', 4.0, 10.00),
(4, 'Desk Chair', 'Furniture', 150.80, 20, 'Comfort Furniture', '2022-04-05', 'Ergonomic desk chair for comfortable seating.', 3.8, 15.00),
(5, 'Bluetooth Speaker', 'Electronics', 80.00, 75, 'Sound Tech', '2022-05-20', 'Wireless Bluetooth speaker for music enthusiasts.', 3.3, 7.50),
(6, 'Laptop', 'Electronics', 900.00, 40, 'Tech Innovators', '2022-06-12', 'Mid-range laptop with a sleek design.', 4.0, 12.00),
(7, 'Running Shoes', 'Footwear', 70.90, 60, 'Athletic Gear Inc.', '2022-07-01', 'Comfortable running shoes for fitness enthusiasts.', 3.5, 8.50),
(8, 'Backpack', 'Accessories', 40.00, 90, 'Travel Essentials', '2022-08-15', 'Durable backpack for daily commuting and travel.', 3.2, 10.00),
(9, 'Smartphone', 'Electronics', 550.30, 35, 'Tech Innovators', '2022-09-30', 'Upgraded smartphone with advanced features.', 3.7, 5.00),
(10, 'Dining Table', 'Furniture', 250.00, 15, 'Home Furnishings Co.', '2022-10-10', 'Stylish dining table for modern homes.', 2.6, 7.50),
(11, 'Bluetooth Speaker', 'Electronics', 95.00, 25, 'Sound Tech', '2022-11-05', 'Premium Bluetooth speaker for audiophiles.', 3.4, 10.00),
(12, 'Printed T-Shirt', 'Apparel', 20.00, 120, 'Fashion Trends', '2022-12-20', 'Fashionable printed t-shirt for casual wear.', 4.0, 15.00),
(13, 'Digital Camera', 'Electronics', 350.00, 10, 'Photography Gear', '2023-01-05', 'High-resolution digital camera for photography enthusiasts.', 4.8, 5.00),
(14, 'Laptop', 'Electronics', 1100.00, 15, 'Tech Innovators', '2023-02-15', 'Ultra-thin laptop with powerful specifications.', 2.7, 12.50),
(15, 'Office Desk', 'Furniture', 180.00, 35, 'Office Furniture Ltd.', '2023-03-01', 'Spacious office desk for a productive work environment.', 4.6, 7.50),
(16, 'Bluetooth Speaker', 'Electronics', 120.00, 50, 'Sound Tech', '2023-04-10', 'Compact Bluetooth speaker for on-the-go music.', 4.3, 10.00),
(17, 'Laptop', 'Electronics', 950.00, 20, 'Tech Innovators', '2023-05-20', 'Budget-friendly laptop with reliable performance.', 2.1, 8.00),
(18, 'Bluetooth Speaker', 'Electronics', 65.00, 30, 'Sound Tech', '2023-06-12', 'Portable Bluetooth speaker for outdoor activities.', 3.0, 15.00),
(19, 'Sofa', 'Furniture', 350.00, 12, 'Home Furnishings Co.', '2023-07-01', 'Comfortable sofa for living room relaxation.', 4.7, 5.00);

select * from product1;

create database prod_mgnt;
use prod_mgnt;
create table product(prod_Id int primary key , prod_Name varchar (22) , 
prod_qty int ,  prod_price double);

insert into product value (1,'TV',2000,40000),(2,'mobile',5000,26000),(3,'AC',10000,40000),
(4,'washig machine',10000,50000),(5,'grinder',12000,4000),
(6,'chais',20000,1000),(7,'T shirts',20000,500),(8,'pants',17000,1000),
(9,'bulbs',1000,100),(10,'fans',11000,7500);
select * from product;

-----------Create table
Create table Customer (
	CustId int primary key,
    CustName varchar(20) not null,
    Product varchar(20),
    Price int
);

Insert into Customer values (1,'shubham','Laptop',50000), (2,'arya','mobile',25000), (3,'mrunal','keyboard',1500),
		(4,'aniket','bag',2500), (5,'tejal','tiffin',200), (6,'siddhant','notebooks',100),
        (7,'sakshi','mouse',150), (8,'sanket','pen',10), (9,'bhushan','laptop',30000), (10,'aalapi','mobile',20000);

Select * from Customer;

create database student_details;
use student_details;
create table student (student_Id int primary key , name varchar(22) , admission_No int , student_email varchar(22) , phoneNumber bigint);
insert into student values(121, 'ayush' ,4001, 'ayush@gmail.com',987654321),(122, 'meera' ,4002, 'meera@gmail.com',887694321),
(123, 'nilesh' ,4003, 'nilesh@gmail.com',987456789),(124, 'vaibhav' ,4004, 'vaibhav@gmail.com',8652529554),(125, 'neel' ,4005, 'neel@gmail.com',7896453588),
(126, 'ankita' ,4006, 'ankita@gmail.com',7689452344);
select * from student;
create table fees(student_Id int , foreign key(student_Id) references student (student_Id) , course varchar(200) , fees bigint );
insert into fees values (121,'cs',125000),(122,'civil',125000),(123,'mech',125000),(124,'mech',125000),(125,'prod',125000),(126,'EXTC',140000);
select * from fees;

Create database studentFees;
Use studentFees;

Create table Student (
	id int primary key,
    name varchar(20) not null,
    admNo int,
    emailId varchar(30) unique,
    phoneNo bigint unique
);

Insert into student values 
	(1,'Shubham',101,'shubham123@gmail.com',9876543210),
    (2,'Arya',102,'arya@gmail.com',9764318520),
    (3,'Bhushan',103,'bhushan@gmail.com',9638527410),
    (4,'Sanket',104,'sanket12@gmail.com',8978564523),
    (5,'Aniket',105,'aniketp@gmail.com',8520741096),
    (6,'Siddhant',106,'sid213@gmail.com',8798654523),
    (7,'Tejas',107,'tejas@gmail.com',8520741063),
    (8,'Vaibhav',108,'vaibhav@gmail.com',8642791380),
    (9,'Suyog',109,'suyogd@gmail.com',8798321254),
    (10,'Rahul',110,'rahul@gmail.com',9764985220);

Select * from student;

Create table Fees (
	id int,
    foreign key(id) references student(id),
    course varchar(40) not null,
    fees decimal(10,2)
);


Insert into Fees values
	(1,'Data Analytics with AI',125000.50),
    (2,'Data Analytics with AI',120000.75),
    (3,'Full stack development',145000.85),
    (4,'Full stack development',142500.45),
    (5,'Full stack development',138500.50),
    (6,'Data Science',128000),
    (7,'Data Science',132000),
    (8,'Data Science',129000),
    (9,'Data Analytics with AI',127500.5),
    (10,'Data Analytics with AI',11600.85);

Select * from Fees;

Create database studentFees;
Use studentFees;

Create table Student (
	id int primary key,
    name varchar(20) not null,
    admNo int,
    emailId varchar(30) unique,
    phoneNo bigint unique
);

Insert into student values 
	(1,'Shubham',101,'shubham123@gmail.com',9876543210),
    (2,'Arya',102,'arya@gmail.com',9764318520),
    (3,'Bhushan',103,'bhushan@gmail.com',9638527410),
    (4,'Sanket',104,'sanket12@gmail.com',8978564523),
    (5,'Aniket',105,'aniketp@gmail.com',8520741096),
    (6,'Siddhant',106,'sid213@gmail.com',8798654523),
    (7,'Tejas',107,'tejas@gmail.com',8520741063),
    (8,'Vaibhav',108,'vaibhav@gmail.com',8642791380),
    (9,'Suyog',109,'suyogd@gmail.com',8798321254),
    (10,'Rahul',110,'rahul@gmail.com',9764985220);

Insert into student values 
	(11,'Vaibhav',108,'vaibhav12@gmail.com',8642791387),
    (12,'Suyog',109,'suyogd12@gmail.com',8798321255),
    (13,'Rahul',110,'rahul12@gmail.com',9764985221);
    
Select * from student;

Create table Fees (
	id int,
    foreign key(id) references student(id),
    course varchar(40) not null,
    fees decimal(10,2)
);

Insert into Fees values
	(1,'Data Analytics with AI',125000.50),
    (2,'Data Analytics with AI',120000.75),
    (3,'Full stack development',145000.85),
    (4,'Full stack development',142500.45),
    (5,'Full stack development',138500.50),
    (6,'Data Science',128000),
    (7,'Data Science',132000),
    (8,'Data Science',129000),
    (9,'Data Analytics with AI',127500.5),
    (10,'Data Analytics with AI',11600.85);

Select * from Fees;

--------------Inner Join

Select student.admNo, student.name, fees.course, fees.fees from student inner join fees on student.id = fees.id;

-------------Self Join

Select s1.name, s1.admNo from student s1, student s2 where s1.id = s2.id;
Select s1.name, s1.admNo from student s1, student s2 where s1.id <> s2.id;
Select f1.id, f2.fees, f2.course from fees f1, fees f2 where f1.id <> f2.id AND f1.course = f2.course;

---------Cross Join

Select student.admNo, student.name, fees.course, fees.fees from student cross join fees where student.id = fees.id;

--------Outer Join

---------Left Outer Join
Select student.admNo, student.name, fees.course, fees.fees from student left outer join fees on student.id = fees.id;

Select student.admNo, student.name, fees.course, fees.fees from student right outer join fees on student.id = fees.id;

Select student.admNo, student.name, fees.course, fees.fees from student full outer join fees on student.id = fees.id;

create table Buildings (Building_name varchar(22)  primary key, capacity int);
insert into Buildings values('le', 24), ('lw', 32), ('2e', 16), ('2w', 20);
drop table Buildings;
select * from Buildings;

create table Employees (role varchar(22), name varchar(22), Building_name varchar(22), foreign key(Building_name) references Buildings (Building_name), years_employed int);
insert into Employees values ('engineer', 'Becky A.', '1e', 4),('engineer', 'Dan B.', '1e', 2),('engineer', 'Sharon F.', '1e', 6),
('engineer', 'Dan M.', '1e', 4),('engineer', 'Malcom S.', '1e', 1),('Artist', 'Tylar S.', '2w', 2);
drop table Employees;
select * from Employees;

----------DQL COMMANDS:
Use Employee;

Select EMP_ID,EMP_Name from Employee;

------performing various operation on table.

Select EMP_ID,EMP_Name from Employee where EMP_Designation='Junior Engg';

Select distinct EMP_ID from Employee;

Select*
from Employee
where EMP_ID>=3;

---------DML COMMANDS:

use Student1;
create table Student_Details(
StudentID int Primary Key, StudentName varchar(30), Grade varchar(2), Marks int);
insert into Student_Details values (1,'Mrunal Kurale', 'A', 80),
(2,'Tejas Jadhav', 'A', 79),
(3,'Adil Khan', 'A', 75),
(4,'Ritin Kotian', 'B', 68),
(5,'Anmol Panchal', 'A+', 94),
(6,'Rajesh Patil', 'C', 64),
(7,'Kanchan Barve', 'A', 78),
(8,'Shivali Jadhav', 'A', 82),
(9,'Himanshu Kulkarni', 'B', 74),
(10,'Apurva Kore', 'B', 72);

Select* From Student_Details;

------performing various operation on table.

Update Student_Details
set Grade='A', Marks='75'
where StudentName='Rajesh Patil';

Update Student_Details
set StudentName='Shivali'
where StudentID='8';

Delete from Student_Details
where StudentID=5;

Delete from Student_Details;

----------DDL COMMANDS:

use Student1;
create table Student_Details(
StudentID int Primary Key, StudentName varchar(30), Grade varchar(2), Marks int);
insert into Student_Details values (1,'Mrunal Kurale', 'A', 80),
(2,'Tejas Jadhav', 'A', 79),
(3,'Adil Khan', 'A', 75),
(4,'Ritin Kotian', 'B', 68),
(5,'Anmol Panchal', 'A+', 94),
(6,'Rajesh Patil', 'C', 64),
(7,'Kanchan Barve', 'A', 78),
(8,'Shivali Jadhav', 'A', 82),
(9,'Himanshu Kulkarni', 'B', 74),
(10,'Apurva Kore', 'B', 72);

Select* From Student_Details;

------performing various operation on table.

Alter Table Student_Details
add Email varchar(30);

Alter Table Student_Details
alter column StudentName varchar(35);

Alter Table Student_Details
Alter column StudentID, 

Exec sp_rename StudentID int Primary Key, ID int;

Alter table Student_Details
drop column Email;

Truncate table Student_Details;

Drop table Student_Details;

create database Employee;
use Employee;
create table Employee2(
EMP_ID int Unique, EMP_Name varchar(30), EMP_Designation varchar(20), Salary int,  Phone_Num bigint Unique, EMP_Address varchar(20) , Email varchar(20));
insert into Employee2 values 
(1,Erik Ten Hag,Manager,75000,87484563, Holland,eriktenhag@manutd.com),
(2,Aaron Wan Bissaka,Right Back,50000,84632573,England,abissaka@manutd.com),
(3,Luke Shaw,Left Back,120000,81780583,England,lukeshaw@manutd.com),
(4,Harry Maguire,Centre Back,250000,78928593,England,hmaguire@manutd.com),
(5,Raphael Varane,Centre Back,280000,76076603,France,rvarane@manutd.com),
(6,Victor Lindelof,Centre Back,200000,73224613,Sweden,vlindelof@manutd.com),
(7,Jonny Evans,Centre Back,100000,70372623,Northern Ireland,jevans@manutd.com),
(8,Casemiro,Defensive Mid,375000,85520633,Brazil,casemiro@manutd.com),
(9,Kobbie Mainoo,Defensive Mid,20000,84668643,England,kmainoo@manutd.com),
(10,Bruno Fernandes,Midfielder,425000,82816653,Portugal,bfernandes@manutd.com),
(11,Marcus Rashford,Left Winger,375000,85964663,England,mrashford@manutd.com),
(12,Antony,Right Winger,200000,89112673,Brazil,antony@manutd.com),
(13,Antony Garnacho,Left Winger,75000,83260683,Argentina,agarnacho@manutd.com),
(14,Anthony Martial,Striker,175000,80408693,France,amartial@manutd.com),
(15,Rasmus Hojlund,Striker,250000,84556703,Denmark,rhojlund@manutd.com),
(16,Jadon Sancho,Winger,250000,88704713,England,jsancho@manutd.com),
(17,Christian Eriksen,Midfielder,175000,81852723,Denmark,ceriksen@manutd.com),
(18,Mason Mount,Midfielder,250000,89000733,England,mmount@manutd.com),
(19,Brandon Williams,Left Back,20000,82148743,England,bwilliams@manutd.com),
(20,Diogo Dalot,Right Back,50000,79296753,Portugal,ddalot@manutd.com),
(21,Scott Mctominay,Midfielder,120000,80444763,Scotland,smctominay@manutd.com),

select *from Employee2;

create database Hospital1;
use Hospital1;

create table Doctor(
Did int primary key,
Dname varchar(20) not null,
Ddepart varchar(10),
Dphone bigint );

insert into Doctor values(1,'Dr Ramesh','MBBS',95959),
(2,'Dr Santosh','BAMS',85285),(3,'Dr Manoj','MBBS',98337),(4,'Dr Rajesh','ORTHO',98741),(5,'Dr Samarth','BUMS',98569),
(6,'Dr Suyog','BAMS',85285),(7,'Dr Sameer','PHSYO',93215),(8,'Dr Ravi','MBBS',87987),(9,'Dr Rohit','GYNC',85478),(10,'Dr Akash','BUMS',85795);

select * from Doctor;

use Hospital1;
create table Patient(
Pid int not null,
Pname varchar(20) not null,
Page int,
check (page >=18),
Plocation varchar(20) default 'kamothe',
Did int,
foreign key(Did) references Doctor(Did));

------performing various operation on table.

alter table Patient
add Email varchar(20);

alter table Patient
modify Pid varchar(20);

alter table Patient
rename column Pid to Patient_id;

alter table Patient
add mobilenumber bigint;

alter table Patient
drop column Email;

----------use truncate to delete complete table;

use Hospital1;

------performing various operation on table.

update Doctor
set Ddepart='BAMS' ,Dphone=98965
where Did=1;

update Doctor
set Ddepart='BAMS'
where Did=2;

delete from Doctor
where Did=10;

select Did,Dname
from Doctor
where Did=5;

select * from Doctor
where Ddepart='MBBS';

select * from Doctor
where Ddepart LIKE 'M%';

select * from Doctor
where Ddepart LIKE '_U%S';

select * from Doctor
where Ddepart LIKE '__B%';

use mypract;

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    Manufacturer VARCHAR(100),
    ReleaseDate DATE
);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Manufacturer, ReleaseDate) VALUES
(1, 'Laptop', 'Electronics', 1200.00, 50, 'ABC Electronics', '2022-01-15'),
(2, 'Smartphone', 'Electronics', 500.00, 100, 'XYZ Tech', '2022-02-28'),
(3, 'Tablet', 'Electronics', 300.00, 30, 'Tech Innovators', '2022-03-10'),
(4, 'Desk Chair', 'Furniture', 150.00, 20, 'Comfort Furniture', '2022-04-05'),
(5, 'Bluetooth Speaker', 'Electronics', 80.00, 75, 'Sound Tech', '2022-05-20'),
(6, 'Coffee Maker', 'Appliances', 60.00, 40, 'Kitchen Appliances Co.', '2022-06-12'),
(7, 'Running Shoes', 'Footwear', 70.00, 60, 'Athletic Gear Inc.', '2022-07-01'),
(8, 'Backpack', 'Accessories', 40.00, 90, 'Travel Essentials', '2022-08-15'),
(9, 'LED TV', 'Electronics', 800.00, 25, 'Tech Solutions Ltd.', '2022-09-30'),
(10, 'Dining Table', 'Furniture', 250.00, 15, 'Home Furnishings Co.', '2022-10-10'),
(11, 'Gaming Mouse', 'Electronics', 45.00, 80, 'Gamer Gear Inc.', '2022-11-05'),
(12, 'Printed T-Shirt', 'Apparel', 20.00, 120, 'Fashion Trends', '2022-12-20'),
(13, 'Digital Camera', 'Electronics', 350.00, 10, 'Photography Gear', '2023-01-05'),
(14, 'Toaster', 'Appliances', 30.00, 50, 'Kitchen Essentials', '2023-02-15'),
(15, 'Office Desk', 'Furniture', 180.00, 35, 'Office Furniture Ltd.', '2023-03-01');

select * from product;

------performing various operation on table.
--- Alter commands

alter table product
add column Quantityordered int;

select * from product;

alter table product
modify column price float;

alter table product
rename column StockQuantity to Availble_Quantities;

alter table product
rename column Availble_Quantities to Available_Quantities;

select * from product;

------performing various operation on table.
------- Adding column values

update product
set quantityOrdered = 20
where price > 1000;

update product
set quantityOrdered= 30
where price >= 500 and price <=1000;

update product
set quantityOrdered= 35
where price >= 250 and price <=499;

update product
set quantityOrdered= 40
where price >= 100 and price <=249;

update product
set quantityOrdered= 50
where price >= 1 and price <=99;

select * from product;

------- distinct operator

select distinct category from product;

-------- Like operator

select productname from product
where productname like 'c%';				----- starting from 'c'

select productname from product
where productname like '_a%';			----- selecting a word which the 2nd alphabet is 'a'

select category from product
where category like '_le_%';

---- between operator

select * from product
where price between 250 and 750;

select productname, category, available_quantities from product
where price between 1 and 500
order by productname;

---------- string function

select * from product;
-------- concat()
select concat(productname, ' is a ', category, ' product') descriptions from  product
order by concat(productname, ' is a ', category, ' product');

-------- length()
select productname, length(productname) len_productname
from product
order by length(productname);

--------- substring()
select substr(productname, 1, 3) product, substr(productname, 4,length(productname)) name
from product;

select substr(productname, 1, 3) product, substr(productname, 4,length(productname)) name,
concat(substr(productname, 1, 3), substr(productname, 4,length(productname))) productname
from product
order by concat(substr(productname, 1, 3), substr(productname, 4,length(productname)));

------ upper & lower
select upper(substr(productname, 1, 3)) product, upper(substr(productname, 4,length(productname))) name,
lower(concat(substr(productname, 1, 3), substr(productname, 4,length(productname)))) productname
from product
order by concat(substr(productname, 1, 3), substr(productname, 4,length(productname)));

---------- replace
select replace(Manufacturer, 'ABC', 'hp')  Manufacturer from product;
select replace(Manufacturer, 'XYZ', 'i')  Manufacturer from product;

-------- Math function
-------- abs()
update product
set price = -500.423
where productid=2;

update product
set price= -150.767
where productid=4;

--------- abs()
select price, abs(price) from product;

------------ ceil()
select price,ceil(price) from product;

----------- floor()
select price,floor(price) from product;

---------- mod()
select price, quantityordered, mod(price,quantityordered) remainder from product;

------------ round()
select price, quantityordered, round(mod(price,quantityordered)) remainder from product;

--------- calculating single product approximated value 
select price, quantityordered, abs(round(price/quantityordered)) 'per product' from product
order by round(price/quantityordered);

----------DDL queries
---------Create
-----------Creation of database -- Create database database_name
Create database studentInfo;
Use studentInfo;

----------Creation of table -- Create table table_name ( column_name datatype constraints)
Create table student (
	sFirstName varchar(20) not null,
    sLastName varchar(20),
    sId int primary key,
    sStream varchar(20) not null,
    sAge int,
    sPhone bigint unique,
    sAdmissionDate date,
    sCetMarks float,
    sCatMarks float,
    sFees decimal(7,2)
);

----------Alter
------------Alter table add column -- Alter table table_name ADD column_name datatype constraints
Alter table student ADD sDob date;

----------Alter table modify column -- Alter table table_name MODIFY column_name datatype constraints
Alter table studentInfo MODIFY sId varchar(10);

---------Alter table rename column -- Alter table table_name RENAME column column_oldname to column_newname;
Alter table studentInfo RENAME column sId to sBatchId;

------Alter table name -- Alter table table_name RENAME TO new_table_name
ALter table student RENAME TO studentInfo;


-----------Drop
--------------Drop database -- Drop database database_name
Drop database studentInfo;

-----------Drop table -- Drop table table_name
Drop table studentInfo;

-----------Drop column -- Alter table table_name DROP column column_name
Alter table studentInfo Drop column sDob;

----------Truncate -- Truncate table table_name
Truncate table studentInfo;

--------DML queries
----------Insert
-------Insert single value -- Insert into table_name values (col1_value, col2_value)
-----------Insert multiple values -- Insert into table_name values (col1_value1, col2_value1),(col1_value2, col2_value2),(col1_value3, col2_value3)
---------Insert values into specific columns -- Insert into table_name (column1_name, column2_name) values (col1_value, col2_value)
Insert into student values
('Shubham','Mapara',1,'Science',25,9876543210,'2016-06-01 09:18:16',75.67,68.5,25000.50),
('Arya','Mapara',2,'Commerce',22,9764318524,'2020-03-20 12:17:20',65.33,80.33,18000.25),
('Bhushan','Mehta',3,'Arts',24,9638527410,'2018-01-01 19:06:06',86.33,70.67,15250.75),
('Sanket','Sule',4,'Science',24,9865327415,'2016-06-01 15:24:20',65.67,68.75,28000.25),
('Aditya','Kapote',5,'Arts',22,8945761520,'2019-06-15 17:48:28',50.35,-10.75,18500.75),
('Shubham','Singh',6,'Commerce',20,8426793158,'2021-12-15 20:20:49',48.67,-15.33,20500.45);

---------Update -- Update table_name SET column_name = value WHERE column_name = values
Update student
SET sFirstName = 'Aniket'
WHERE sId = 5;


------------Delete
-----------Delete all record from table -- Delete from table_name
-----------Delete specific record from table -- Delete fro table_name where column_name = value
Delete from student WHERE sFirstName = 'Sanket';
Delete from student;


--------DQL queries
--------Select
--------Selecting all columns -- Select * from table_name
Select * from student;

---------Selecting specific columns -- Select col1_name, col2_name from table_name
Select sId, sPhone from student;

--------Selecting specific records -- Select col1_name from table_name where col_name = value
Select sAge from student where sId = 4;

---------Selecting distinct values from columns -- Select distinct column_name from table_name
Select distinct sLastName from student;

------Operators
-------AND operator
Select * from student
where sAge > 22 AND sStream = 'Science';

-----OR operator
Select * from student
where sLastName = 'Mapara' OR sAge > 23;

--------NOT operator
Select * from student
where NOT sStream = 'Science';

-----------BETWEEN operator -- used to select values within a given range
Select * from student
where sFees BETWEEN 10000 and 25000;

---------IN operator -- used to specify multiple values in a WHERE clause.
Select * from student
where sLastName IN ('Mapara','Sule','Kapote');

--------LIKE operator -- used to search for a specified pattern in a column.
Select * from student
where sPhone LIKE '98%';

Select sFirstName from student
where sFirstName LIKE '_h%';

----------Order By Clause -- used to sort the result-set in ascending or descending order.
Select * from student
order by sAge;

Select * from student
order by sAdmissionDate DESC;

-----------Aliases Name
Select sId as StudentRollNumber from student;		-- Aliases are often used to make column names more readable.

--------Built In SQL functions - String function
---------String Function - Concat()
Select concat(sFirstName,sLastName) as studentInfo from student;			-- Adds two or more expressions together

----------String function - Lower()
Select lower(sFirstName) from student;										-- Converts a string to lower-case

----------String function - Upper()
Select upper(sLastname) from student;										-- Converts a string to upper-case

--------- String function - Replace()
Select replace(sStream,'Arts','Management') as StreamInfo from student;		-- Replaces all occurrences of a substring within a string, with a new substring

----------String function - Reverse()
Select reverse(sFirstName) from student;									-- Reverses a string and returns the result

-------String function - Length()
Select length(sStream) from student;										-- Returns the length of a string (in bytes)

-------- String function - substring()
Select substring(sStream,1,4) from student;									-- Extracts a substring from a string (starting at any position)
			#OR
Select substr(sFirstName,2,6) from student;									-- Extracts a substring from a string (starting at any position)

-----String function - Ltrim() and Rtrim()
Select ltrim('   Sam');														-- Removes leading spaces from a string
Select rtrim('Sam   ');														-- Removes trailing spaces from a string


------Built In SQL functions - Math function
--------- Math function - Abs()
Select abs(sCatMarks) as CatMarks from student;			-- Returns the absolute value of a number

--------- Math function - Mod()
Select mod(sAge,3) from student;						-- Returns the remainder of a number divided by another number

--------Math function - ceiling()
Select ceiling(sCetMarks) from student;					-- Returns the smallest integer value that is >= to a number

----------Math function - floor()
Select floor(sCatMarks) from student;					-- Returns the largest integer value that is <= to a number

---------Math function - truncate()
Select truncate(sFees,1) from student;					-- Truncates a number to the specified number of decimal places

--------- Math function - sqrt()
Select sqrt(sFees) from student;						-- Returns the square root of a number


--------Built In SQL functions - Date function

Select curdate();							-- current date
Select current_date();						-- current date
Select curtime();							-- current time
Select current_time();						-- current time
Select current_timestamp();					-- current date and time
Select now();								-- current date and time
Select sysdate();							-- current date and time

Select adddate(sAdmissionDate, Interval 10 day) from student;			-- Adds a time/date interval to a date and then returns the date
Select date_add(sAdmissionDate, Interval 1 quarter) from student;		-- Adds a time/date interval to a date and then returns the date
Select date_sub(sAdmissionDate, Interval 5 month) from student;			-- Subtracts a time/date interval from a date and then returns the date
Select addtime(sAdmissionDate, '3:15:25') from student;					-- Adds a time interval to a time/datetime and then returns the time/datetime

Select date(sAdmissionDate) as AdmissionDate from student;				-- Extracts the date part from a datetime expression
Select datediff('2023-11-01','2022-07-01');								-- Returns the number of days between two date values

Select date_format(sAdmissionDate, "%W %D %M %Y") from student;			-- Formats a date
Select day(sAdmissionDate) from student;								-- Returns the day of the month for a given date
Select dayname(sAdmissionDate) from student;							-- Returns the weekday name for a given date
Select dayofweek(sAdmissionDate) from student;							-- Returns the weekday index for a given date
Select dayofmonth(sAdmissionDate) from student;							-- Returns the day of the month for a given date
Select dayofyear(sAdmissionDate) from student;							-- Returns the day of the year for a given date


--------Built In SQL functions - Aggregate function
----------Aggregate function - avg()
Select avg(sCetMarks) as AverageCetMarks from student;					-- Returns the average value of an expression

------------Aggregate function - count()
Select count(Distinct sLastName) as LastName from student;				-- Returns the number of records returned by a select query

----------Aggregate function - max() and min()
Select max(sFees) from student;											-- Returns the maximum value in a set of values
Select min(sFees) from student;											-- Returns the minimum value in a set of values

--------------Aggregate function - sum()
Select sum(sCatMarks) as CatScore from student;							-- Calculates the sum of a set of values

create database Showroom1;
use Showroom1;
create table Assi(
Assi_id int primary key,
Assi_name char(20) not null,
Assi_lname char(20),
Assi_Department varchar(20),
Assi_Salery int,
Assi_Mob bigint);

insert into Assi values(101,'Suyog','Desai','Accounts',35000,9594084719),
(102,'Sumit','Gaikwad','Sales',40000,8108457898),
(103,'MAnoj','Pawar','Ssles',40000,9865327845),
(104,'Snehal','Pawar','IT',65000,8528528528),
(105,'Disha','Desai','IT',80000,7894561237),
(106,'Pradnya','Pakhare','Reception',20000,9833704909),
(107,'Dilip','Kamad','Sales',35000,9321540770),
(108,'Rupesh','Lande','Backoffice',25000,9594084747),
(109,'Akash','Munde','Accounts',35000,8652779412),
(110,'Piyush','Ranade','Frontend',28000,457845789);

select * from Assi;

create table customer04(
Cust_id int,
Cust_name varchar(20) not null,
Cust_age int,
Cust_address varchar(20),
assi_id int,
foreign key(Assi_id) references Assi(assi_id));

------performing various operation on table.

alter table customer04
add Email varchar(20);

alter table customer04
add mob bigint;

alter table customer04
rename column Cust_id to id;

alter table customer04
modify cust_name char(20);

alter table customer04
drop column mob;

drop table customer04;

update Assi
set Assi_salery=50000
where Assi_id=101;

update Assi
Set Assi_mob=989898787
where Assi_id=102;

select * from assi;

select Assi_id, Assi_name from Assi;

select Assi_id,Assi_salery From Assi
where Assi_id=105;

select* from Assi
where Assi_salery>=25000;

select* from Assi
where Assi_salery<=25000;

select* from Assi
where Assi_salery>=40000;

select*
from Assi
where Assi_id LIKE '0%';

select*
from Assi
where Assi_name LIKE 's%o';

select* from assi
order by Assi_name;

select* from assi
order by Assi_name desc;

select* from assi
order by Assi_salery desc;

select concat(Assi_id, Assi_name)as Emp1 from Assi;
select concat(Assi_id)as empinfo from Assi;

select concat(Assi_name,' ',Assi_lname)as Empname from Assi;

select upper(Assi_name)from Assi;

select lower(Assi_name)from Assi;

select reverse(Assi_id)from Assi;

select length(Assi_salery)from Assi;

select substring(Assi_name,1,4)from Assi;
select substring(Assi_name,2,5)from Assi;

create database Store;
use Store;

create table Orders(
order_id int,
order_date datetime,
pro_name varchar(10),
custn varchar(20) not null);

insert into orders values(11,'2023-12-01','pen','suyog');
insert into orders values(12,'2023-12-02','pencil','sumit'),
(13,'2023-12-02','book','prem'),
(14,'2023-12-03','cardboard','disha'),
(15,'2023-12-04','gluestick','poonam'),
(16,'2023-12-05','compassbox','nikita'),
(17,'2023-12-06','pen','vinod'),
(18,'2023-12-07','sketchpen','sahu');

select * from orders;
select curdate() from Orders;
select now() from Orders;
select sysdate() from Orders;

select* from orders;
select order_date as orderdate from orders
where order_id=11;

select* from orders;
select order_id, date_add(order_date,interval 30 day) as payout from orders;
select order_id, date_add(order_date,interval 365 day) as payout from orders;

------performing various operation on table.

select datediff('2023-12-06','2023-12-01');
select date(now());

select avg(Assi_salery) as avg_salery from Assi;

select count(Assi_name) from Assi;
select count(Assi_salery) from Assi;

select max(Assi_salery) from Assi;
select min(Assi_salery) from Assi;

select sum(Assi_salery) from Assi;

select * from Assi;
select Assi_name, sum(Assi_salery) from Assi
where Assi_id>1
group by Assi_name;

select Assi_department, sum(Assi_name) from Assi
where Assi_id>1
group by Assi_department;

select Assi_lname, sum(Assi_salery) from Assi
where Assi_id>=1
group by Assi_lname;

select Assi_salery, sum(Assi_name) from Assi
where Assi_id>1
group by Assi_salery;

select Assi_department, sum(Assi_name) from Assi
where Assi_id>1
group by Assi_department
order by Assi_id;

select Assi_name, sum(Assi_salery)from Assi group by Assi_name having sum(Assi_salery)>25000; 
select Assi_lname, sum(Assi_salery) From Assi group by Assi_lname having sum(Assi_salery)<45000;

create database employee_mgnt_DB;
use employee_mgnt_DB;

-------------------------------------------------------------------- DDL and DML

create table emp_info (emp_Name varchar(22), emp_ID int, emp_deptName varchar(22) primary key, emp_hireDate date);
insert into emp_info values ('suhani',1,'production','2019-08-12'),('gauri',2,'admin','2022-12-05'),
('vinamy',3,'civil','2023-09-01'),('virang',4,'medical','2021-12-06'),('shivay',5,'HR','2020-05-05'),('varad',6,'quality','2023-01-08');
select* from emp_info;
drop table emp_info; 

create table emp_department(dept_Id int, emp_deptName varchar(22) , foreign key(emp_deptName) references emp_info (emp_deptName));
insert into emp_department values(101,'production'),(122,'admin'),
(131,'civil'),(105,'medical'),(111,'HR'),(141,'quality');
select* from emp_department;


-------------------------------------------------------------------- DQL

select emp_Name from emp_info where emp_deptName in ('production','admin','civil','medical','HR','quality');
select e.emp_Name, d.emp_deptName from emp_info e  join emp_department d on e.emp_deptName = d.emp_deptName;
select emp_Name,emp_deptName from emp_info;
update emp_info set  emp_hireDate = '2023-10-01' where emp_Name = 'vinamy';
update emp_info set  emp_hireDate = '2023-12-06' where emp_Id = 4 ;
select emp_Name , emp_hireDate  from emp_info where emp_hireDate >= date_sub(curdate(),interval 6 month);

alter table emp_info add column emp_salary bigint;
update emp_info set  emp_salary = 8000 where emp_Id = 1 ;
update emp_info set  emp_salary = 12000 where emp_Id = 2 ;
update emp_info set  emp_salary = 11500 where emp_Id = 3 ;
update emp_info set  emp_salary = 12000 where emp_Id = 4 ;
update emp_info set  emp_salary = 12500 where emp_Id = 5 ;
update emp_info set  emp_salary = 9000 where emp_Id = 6 ;
commit;
select * from emp_info;
rollback;
alter table emp_info add column job_title varchar(22);



-------------------------------------------------------------------- TCL

begin ;
update emp_info set  job_title = 'jr.office' where emp_Id = 1 ;
update emp_info set  job_title = 'sr.office' where emp_Id = 2 ;
update emp_info set  job_title = 'jr.engineer' where emp_Id = 3 ;
update emp_info set  job_title = 'Manager' where emp_Id = 4 ;
update emp_info set  job_title = 'engineer' where emp_Id = 5 ;
update emp_info set  job_title = 'assistant engineer' where emp_Id = 6 ;
begin ;
update emp_info set job_title = 'sr.VP' , emp_salary = emp_salary *15 where emp_Id=4;
commit;
update emp_info set job_title = 'sr.VP' , emp_salary = emp_salary *10 where emp_Id=4;
commit;
rollback;
update emp_info set job_title = 'sr.VP' , emp_salary = emp_salary  +200000000 where emp_Id=4;
rollback;
update emp_info set job_title = '' , emp_salary = 20000 where emp_Id=4;



-------------------------------------------------------------------- DCL

----- create roles

create role manager_role;
create role viewer_role;

--------  grant specific permissions to role
grant update on emp_info to manager_role;
grant select on emp_info to viewer_role;

------ create user and assign roles
create user manager_user;
create user viewer_user;

------ assign roles to users
grant manager_role to manager_user;
grant viewer_role to viewer_user;

-------------------------------------------------------------------- JOINS

create table  emp_info1  (emp_Name varchar(22), emp_ID int, emp_deptName varchar(22) primary key, emp_hireDate date, emp_salary bigint , job_title varchar(22));
insert into emp_info1 select * from emp_info where emp_Name in (select emp_Name from emp_info) ;
select* from emp_info1;
create table emp_department1 (dept_Id int, emp_deptName varchar(22) , foreign key(emp_deptName) references emp_info (emp_deptName));
insert into emp_department1 select * from emp_department where emp_deptName in (select emp_deptName from emp_department);
select* from emp_department1;
insert into emp_info1 values ('devansh',7,'operation','2017-08-20',18000,'sr.engineer'),
('vaishu',8,'accounts','2019-11-12',14000,'jr.accountant'),('vidya',9,'sales','2021-10-05',19500,'sr.accountant');

select emp_info1.emp_deptName , emp_info1.emp_Name , emp_department1.dept_Id from emp_info1 inner join emp_department1 on emp_info1.emp_deptName = emp_department1.emp_deptName;
select emp_info1.emp_Name, emp_info1.emp_deptName, emp_department1.dept_Id from emp_info1 left join emp_department1 on emp_info1.emp_deptName = emp_department1.emp_deptName;
select emp_info1.emp_Name, emp_info1.emp_deptName, emp_department1.dept_Id from emp_info1 right join emp_department1 on emp_info1.emp_deptName = emp_department1.emp_deptName;


-------------------------------------------------------------------- CASE STUDY INTEGRATION

create table employees (emp_Id int primary key , emp_Name varchar(22) , department varchar(22));
insert into employees values(1,'john','IT'),(2,'jane','HR'),(3,'bob','Finance');
select * from employees;

create  table training_sessions(session_Id int primary key , dession_Name varchar(22) , session_date date , trainer_Name varchar(22));
insert into training_sessions values(101, 'SQL basics','2023-01-01','Vaibhav'),
(102,'soft skills','2023-10-02','smith'),(103,'project management','2023-05-20','charlie');
alter table training_sessions rename column dession_Name to session_Name;
select * from training_sessions;

create table employee_enrollment(enrollment_Id int primary key , emp_Id int ,foreign key(emp_Id) references employees(emp_Id) , 
session_Id int ,foreign key(session_Id) references training_sessions(session_Id) , enrollment_date date);
insert into employee_enrollment values(201,1,101,'2023-01-10') , (202,2,102,'2023-02-22') , (203,3,103,'2023-02-24');
select * from employee_enrollment;

select ee.enrollment_Id , e.emp_Name , ts.session_Name , ee.enrollment_date from employee_enrollment ee join employees e on ee.emp_Id = e.emp_Id 
join training_sessions ts on ee.session_Id = ts.session_Id;

---------DDL

Create Database ManUtd;

Use ManUtd;

Create Table Dept_Details(Job_role varchar(30) Primary Key, Department_Name varchar(30));

Create Table Employee_Details
(Employee_ID Int Primary Key, Employee_Name varchar(50) Not Null, Job_Role varchar(30) Foreign key references Dept_Details(Job_role) Not Null, WeeklyWage Bigint, HiringDate Date);

----------DML

Insert into Dept_Details values ('Director Of Football', 'Management'),
('Technical Director', 'Management'),
('Managing Director', 'Management'),
('Head Of Youth Development', 'Management'),
('Manager', 'Coaching Staff'),
('Asst. Manager', 'Coaching Staff'),
('Attacking Coach', 'Coaching Staff'),
('Defensive Coach', 'Coaching Staff'),
('Tactical Coach', 'Coaching Staff'),
('Goalkeeping Coach', 'Coaching Staff'),
('Technical Coach', 'Coaching Staff'),
('Set Piece Specialist', 'Coaching Staff'),
('Fitness Coach', 'Coaching Staff'),
('Key Player', 'Playing Squad'),
('First Team Player', 'Playing Squad'),
('Rotation Player', 'Playing Squad'),
('Backup', 'Playing Squad'),
('Hot Prospect', 'Playing Squad'),
('Youngster', 'Playing Squad'),
('Head Physio', 'Medical Department'),
('Physio', 'Medical Department'),
('Head of Sports Science', 'Medical Department'),
('Sports Scientist', 'Medical Department'),
('Loan Manager', 'Recruitment'),
('Chief Scout', 'Recruitment'),
('Scout', 'Recruitment'),
('Data Analyst', 'Recruitment'),
('Loaned Player', 'Playing Squad'),
('Loanee', 'Playing Squad');

Select* From Dept_Details;

Insert into Employee_Details values (1, 'John Murtough', 'Director Of Football', 25000, '2021-03-10'),
(2, 'Darren Fletcher', 'Technical Director', 25000, '2021-03-10'),
(3, 'Avram Glazer', 'Managing Director', 75000, '2005-06-01'),
(4, 'Nick Cox', 'Head Of Youth Development', 15000, '2019-07-01'),
(5, 'Erik Ten Hag', 'Manager', 180000, '2022-05-16'),
(6, 'Steve McClaren', 'Asst. Manager', 15000, '2022-05-19'),
(7, 'Benni McCarthy', 'Attacking Coach', 4000, '2022-07-20'),
(8, 'Mitchell Van der Gaag', 'Defensive Coach', 30000, '2022-05-23'),
(9, 'Mike Clegg', 'Tactical Coach', 5000, '2019-07-01'),
(10, 'Richard Hartis', 'Goalkeeping Coach', 7000, '2019-06-22'),
(11, 'Charlie Owen', 'Fitness Coach', 3000, '2019-07-01'),
(12, 'Eric Ramsay', 'Set Piece Specialist', 8000, '2021-07-12'),
(13, 'Richard Hawkins', 'Technical Coach', 3000, '2018-07-01'),
(14, 'Paulo Gaudino', 'Fitness Coach', 3000, '2018-07-01'),
(15, 'Bruno Fernandes', 'Key Player', 240000, '2020-06-29'),
(16, 'Marcus Rashford', 'Key Player', 300000, '2016-01-01'),
(17, 'Casemiro Henriques', 'Key Player', 350000, '2022-08-22'),
(18, 'Luke Shaw', 'Key Player', 150000, '2014-07-01'),
(19, 'Scott Mctominay', 'Rotation Player', 60000, '2017-07-01'),
(20, 'Harry Maguire', 'Rotation Player', 189904, '2019-08-05'),
(21, 'Diogo Dalot', 'First Team Player', 85000, '2018-07-01'),
(22, 'Aaron Wan Bissaka', 'Rotation Player', 90000, '2019-07-01'),
(23, 'Lisandro Martinez', 'First Team Player', 120000, '2022-07-27'),
(24, 'Raphael Varane', 'First Team Player', 340000, '2021-08-14'),
(25, 'Christian Eriksen', 'Rotation Player', 150000, '2022-07-15'),
(26, 'Mason Mount', 'Rotation Player', 250000, '2023-07-05'),
(27, 'Sofyan Amrabat', 'Loanee', 65000, '2023-09-01'),
(28, 'Sergio Reguilon', 'Loanee', 53000, '2023-09-01'),
(29, 'Brandon Williams', 'Loaned Player', 65000, '2019-07-01'),
(30, 'Tyrell Malacia', 'Backup', 75000, '2022-07-05'),
(31, 'Antony', 'Rotation Player', 200000, '2022-08-30'),
(32, 'Anthony Martial', 'Backup', 250000, '2015-09-01'),
(33, 'Alejandro Garnacho', 'Rotation Player', 50000, '2022-07-01'),
(34, 'Rasmus Hojlund', 'First Team Player', 85000, '2023-08-05'),
(35, 'Kobbie Mainoo', 'Hot Prospect', 10000, '2023-01-01'),
(36, 'Jadon Sancho', 'Backup', 250000, '2021-07-23'),
(37, 'Mason Greenwood', 'Loaned Player', 80000, '2019-07-01'),
(38, 'Facundo Pellistri', 'Hot Prospect', 20000, '2020-10-05'),
(39, 'Amad Diallo', 'Hot Prospect', 28846, '2021-01-02'),
(40, 'Altay Bayindir', 'Backup', 35000, '2023-09-01'),
(41, 'Johnny Evans', 'Backup', 60000, '2023-07-18'),
(42, 'Victor Lindelof', 'Backup', 120000, '2017-07-01'),
(43, 'Andre Onana', 'First Team Player', 120000, '2023-07-20'),
(44, 'Donny Van de Beek', 'Backup', 120000, '2020-09-02'),
(45, 'Hannibal', 'Youngster', 5000, '2022-07-01'),
(46, 'Willy Kambwala', 'Youngster', 5000, '2021-10-08'),
(47, 'Shola Shoretire', 'Youngster', 5000, '2021-02-08'),
(48, 'Gary O Driscoll', 'Head of Sports Science', 5000, '2023-09-17'),
(49, 'Ed Leng', 'Sports Scientist', 3000, '2023-03-07'),
(50, 'Alistair McBurnie', 'Sports Scientist', 1000, '2022-04-01'),
(51, 'Robin Sandler', 'Head Physio', 5000, '2021-04-01'),
(52, 'Richie Merron', 'Physio', 4000, '2021-04-01'),
(53, 'Ash Pracy', 'Physio', 750, '2018-04-01'),
(54, 'John Davin', 'Physio', 2000, '2019-07-01'),
(55, 'Steve Brown', 'Chief Scout', 3000, '2022-07-01'),
(56, 'Douglas George', 'Scout', 1000, '2020-07-01'),
(57, 'Simon Wells', 'Scout', 1000, '2019-07-01'),
(58, 'Les Parry', 'Loan Manager', 2000, '2020-08-01'),
(59, 'Ben McFarlan', 'Data Analyst', 600, '2016-10-01'),
(60, 'Anthony Bates', 'Data Analyst', 700, '2022-08-01');

Select* From Employee_Details;

-----------DQL

Select Employee_Details.Employee_Name, Dept_Details.Department_Name From Employee_Details Inner Join Dept_Details on Employee_Details.Job_Role=Dept_Details.Job_Role where Department_Name='Coaching Staff';


select Employee_Name , HiringDate  From Employee_Details where HiringDate >= DATEADD(MONTH, -6, GETDATE());  

------------TCL

BEGIN TRANSACTION;
update Employee_Details 
set  Job_Role = 'First Team Player', WeeklyWage=80000 where Employee_ID=33;
COMMIT TRANSACTION; 

Select* From Employee_Details;

BEGIN TRANSACTION;
update Employee_Details 
set  Job_Role = 'First Team Player', WeeklyWage=100000 where Employee_ID=33;
ROLLBACK TRANSACTION; 

BEGIN TRANSACTION;
Begin Transaction;
update Employee_Details 
set  Job_Role = 'First Team Player', WeeklyWage=80000 where Employee_ID=19;
save transaction savepoint1;

update Employee_Details 
set  Job_Role = 'Backup', WeeklyWage=30000 where Employee_ID=35;
save transaction savepoint2;
Commit transaction;

update Employee_Details 
set  Job_Role = 'First Team Player', WeeklyWage=275000 where Employee_ID=26;
save transaction savepoint3;

update Employee_Details 
set  Job_Role = 'Backup', WeeklyWage=100000 where Employee_ID=25;
save transaction savepoint4;
ROLLBACK TRANSACTION; 

Select* From Employee_Details;

--------DCL

----------JOINS

------Scenario-1(Check for Avg Salary in Each Department)

Select Department_Name, Avg(Employee_Details.WeeklyWage) as AvgWage from Dept_Details Inner Join Employee_Details on Employee_Details.Job_Role=Dept_Details.Job_Role GROUP BY Department_Name ORDER BY AvgWage ;

------Scenario-2(Check for No of Employees Earning More Than or Equal to 20000 in each Department)

Select Department_Name, Count(Employee_Details.WeeklyWage) as Wage from Dept_Details Inner Join Employee_Details on Employee_Details.Job_Role=Dept_Details.Job_Role where Employee_Details.WeeklyWage >=20000 GROUP BY Department_Name ;

---------Scenario-3(Check for Employee Names Earning Less Than 20000 Overall and List Departments to which they belong)

Select Employee_Details.Employee_Name, Dept_Details.Department_Name, Employee_Details.WeeklyWage  from Dept_Details Inner Join Employee_Details on Employee_Details.Job_Role=Dept_Details.Job_Role where Employee_Details.WeeklyWage<20000 ;

-------Case Study Integration

Create Table Training_Details
(Employee_ID Int Foreign key references Employee_Details(Employee_ID), Training varchar(30));

Insert into Training_Details Values (5, 'Resource Management'),
(8, 'Language'),
(15, 'Free Kick'),
(15, 'Leadership'),
(15, 'Shooting'),
(16, 'Shooting'),
(16, 'Decision Making'),
(16, 'Leadership'),
(17, 'Language'),
(18, 'Crossing'),
(18, 'Defending'),
(33, 'Language'),
(33, 'Decision Making'),
(33, 'Shooting'),
(33, 'Physical');

Select  Employee_Details.Employee_Name, Training_Details.Training from Employee_Details Inner Join Training_Details on Employee_Details.Employee_ID=Training_Details.Employee_ID;

------performing various operation on table.

Alter Table Training_Details
add TrainingIntensity varchar(10);

Update Training_Details
Set TrainingIntensity ='Normal';

Update Training_Details
Set TrainingIntensity='High' Where (Employee_ID=18 AND Training='Defending');

Update Training_Details
Set TrainingIntensity='Low' Where (Employee_ID=18 AND Training='Crossing');

Delete from Training_Details
where Employee_ID=5;

Select* From Training_Details;

create table student2(stu_id int primary key, stu_name varchar(20) not null, stu_grade varchar(5)not null, stu_marks int);
insert into student2 values(1, 'Samiksha', 'A', 80),
                          (2, 'Shraddha', 'B+', 70),
						  (3, 'Sakshi', 'B', 65),
						  (4, 'Snehal', 'C', 60),
						  (5, 'Dev', 'A+', 90),
						  (6, 'Raj', 'B', 72),
						  (7, 'Prachi', 'A+', 92),
						  (8, 'Sanika', 'C', 56),
						  (9, 'Vedant', 'B', 74),
						  (10, 'Omkar', 'D', 35);	
select*from student2;					
     
------performing various operation on table.

 Alter table student2
 add stu_email varchar(30);

 Alter table student2
 change column stu_id to id;
 Exec sp_rename 'stu_id', 'id';

 Alter table student2
 drop column stu_email;
  
 Truncate table student2;

 select*from student2;

 drop table student2;

 update student2
 set stu_grade= 'A', stu_marks=91
 where stu_id=4;

 update student2
 set stu_name='Komal'
 where stu_id=2;

 delete from student2
 where stu_id=10;

 delete from student2;
 
 select stu_id,stu_name from student2;

  select stu_id,stu_name
  from student2
  where stu_id=1;
  select distinct stu_id from student2;

  select stu_id,stu_name
  from student2
  where stu_marks>=75;

use Student1;
create table Person(
id int not null,
last_name varchar(20) not null,
first_name varchar(20) not null,
age int);

insert into Person values(1, 'ss', 'xx', 20);
insert into Person values(2, 'sss', 'www', null);
insert into Person values(3,null,'zzz', null);

create table Person1(
id int unique,
name1 varchar(20) unique);

insert into Person1 values(1,'samiksha');
insert into Person1 values(2,'samiksha');
insert into Person1 values(3, 'samiksha1');
 

create table Customer (cust_id int primary key, cust_name varchar(20), cust_product varchar(20), cust_price int);
insert into Customer values(1, 'Samiksha', 'Soap', 100),
                           (2, 'Snehal', 'Shampoo', 200),
						   (3, 'Komal', 'Patanjali oil', 350),
						   (4, 'Dev', 'Honey', 200),
						   (5, 'Shraddha', 'Hide and seek', 150),
						   (6, 'Aishwaraya', 'Body Wash', 650),
						   (7, 'Sakshi', 'Rice', 450),
						   (8, 'Sneha', 'Sugar', 500),
						   (9, 'Raj', 'Daal', 50),
						   (10, 'Krishi', 'Farsan', 75);
select*from Customer;

------performing various operation on table.

select cust_name
from Customer
where cust_price>=700 and cust_product='Body Wash';

select cust_name
from Customer
where not cust_product='Body Wash';

select* from Customer
where cust_price between 150 and 700;

select*from Customer
where cust_price in (350, 200, 150);

select*from Customer
where cust_name like 's%';

select*from Customer
where cust_name like 's%a';

select*from Customer
where cust_name like '_a%';

create table Employee2(emp_id int Primary key, first_name varchar(20) not null, last_name varchar(20) not null, emp_salary int,
emp_designation varchar(20), emp_phoneno int, emp_address varchar(20),emp_emailid varchar(20));

insert into Employee2 values(1,'Samiksha', 'Tambe', 25000, 'CA', 99999,'Koperkhairane','xyz@gmail.com'),
                            (2,'Sneha', 'Tawade', 35000, 'coder', 989898,'ghansoli','pqr@gmail.com'),
							(3,'Samiksha', 'Tambe', 10000, 'typist', 7777,'turbhe','tqs@gmail.com'),
							(4,'Komal', 'Sharma', 28000, 'youtuber', 56565,'seawoods','krs@gmail.com'),
							(5,'Kishor', 'Sharma', 29000, 'editor', 69696,'seawoods','lpq@gmail.com'),
							(6,'Snehal', 'Dalvi', 21000, 'coder', 89235,'nerul','sdp@gmail.com'),
							(7,'Kishor', 'Sharma', 29000, 'editor', 69696,'seawoods','lpq@gmail.com'),
							(8,'Komal', 'Sharma', 28000, 'Worker', 83547,'turbhe','ksp@gmail.com'),
							(9,'Sneha', 'Tawade', 20000, 'coder', 454545,'Airoli','spq@gmail.com'),
							(10,'Parth', 'Kale', 46000, 'Developer', 232323,'Sanpada','yst@gmail.com'),
							(11,'Snehal', 'Dalvi', 10000, 'youtuber', 828282,'APMC','xyz@gmail.com'),
							(12,'Parth', 'Kale',15000, 'Tester', 56104,'Thane','pqr@gmail.com');

select*from Employee2;

------performing various operation on table.

select* from Employee2
order by emp_designation DESC;

select emp_designation as designation
from Employee2;

select concat(first_name, last_name) as full_name
from Employee2;

select lower('Samiksha Tambe')
from Employee2;

select upper('Samiksha Tambe')
from Employee2;

select replace(first_name, 'Kishor','Dev')
from Employee2;

select reverse('Sneha Tawade')
from Employee2;

select len('Samiksha');

select substring(first_name,1, 4)
from Employee2;

select ltrim('  samiksha');
select rtrim('  samiksha   ');
select abs(-6);

select(7%2);
select floor(24.45);
select ceiling(24.45);
select ceiling(25.75);

select sqrt(144);
select sqrt(169);

create table order1(order_id int, order_date datetime, order_name varchar(30));

insert into order1 values(1, '2023-11-01 11:05:00', 'laptop'),
                        (2 , '2023-05-31 01:15:25', 'CPU'),
						(3 , '2022-07-18 15:06:18',' mouse'),
						(4 , '2022-08-19 19:28:14', 'keyboard'),
						(5 , '2023-08-05 06:18:30', 'desktop'),
                        (6 , '2021-06-08 09:19:20',' desk'),
						(7 , '2023-03-16 11:16:50', 'pendrive'),
						(8 , '2021-06-04 16:29:30', 'bluetoothspeakers'),
						(9 ,'2020-03-07 23:15:20', 'headsets'),
						(10,'2021-01-05 10:11:48', 'earphones');
						
select*from order1;

select getdate();
select SYSDATETIME();

------performing various operation on table.

select order_date as orderdate
from order1
where order_id=2;

select order_id,dateadd(Day,30,order_date) as Payout from order1;
select order_id,dateadd(Day,10,order_date) as Payout from order1;

select order_id,datediff(Day,2023-11-01, 2022-01-05) as Payout from order1;
select datediff(MONTH,'2023-11-01',' 2022-01-05 ') as Payout;
select datediff(YEAR,'2023-11-01',' 2022-01-05 ') as Payout;

select*from Employee2;

select avg(emp_salary) as avg_sal from Employee2;

select count(first_name) from Employee2;
select min(emp_salary) as avg_sal from Employee2;
select max(emp_salary) as avg_sal from Employee2;

select sum(emp_salary) from Employee2;
select count (order_id) from order1 group by order_name; 

select count (emp_id) from Employee2 group by emp_designation; 

select emp_address, sum(emp_salary) from Employee2 group by emp_address;

select emp_address, sum(emp_salary) from Employee2 group by emp_address having sum(emp_salary)>30000;

use Employee1;
create table Emp(ID int Primary key, name varchar(20));

insert into Emp values(1, 'Varsha'),(2, 'Samiksha'), (3, 'Komal'), (4, 'Shraddha'), (5, 'Sakshi'), (6,'Sandhya'), (7, 'Raj'), (8, 'Snehal'), (9, 'Manasi'),
(10, 'Prachi');

select*from Emp;

create table emp(emp_id int not null, name varchar(20), Id int Foreign key references Per(ID));
 insert into emp values(1, 'Samiksha' ,1), (2, 'Komal',2);


 create table emp1(id int not null, firstname varchar(20),Age int, Constraint chk_emp1 Check(Age>=18));

 insert into emp1 values(1, 'Samiksha', 19), (2, 'Snehal', 16);


 create table Student2(studentID int,Student_FirstName varchar(20),Student_LastName varchar(20), Student_PhoneNumber varchar(20), 
 Student_EmailId varchar(40) DEFAULT 'xyz@gmail.com');
 
 insert into Student2 values(1, 'Samiksha', 'Tambe', 99999, 'abc@gmail.com');
 select*from Student2;
 insert into Student2 values(2, 'Samiksha', 'Tambe', 99999, '');
 insert into Student2 values(3, 'Sam', 'Tambe', 98989, DEFAULT);

use Student1;
create table itv1(
id int, name varchar(20));

insert into itv1 values(1, 'abc'), (2, 'def'), (3, 'ghi'), (4, 'jkl');
 select*from itv1;

create table Customer (cust_id int primary key, cust_name varchar(20), cust_product varchar(20), cust_price int);
insert into Customer values(1, 'Samiksha', 'Soap', 100),
                           (2, 'Snehal', 'Shampoo', 200),
						   (3, 'Komal', 'Patanjali oil', 350),
						   (4, 'Dev', 'Honey', 200),
						   (5, 'Shraddha', 'Hide and seek', 150),
						   (6, 'Aishwaraya', 'Body Wash', 650),
						   (7, 'Sakshi', 'Rice', 450),
						   (8, 'Sneha', 'Sugar', 500),
						   (9, 'Raj', 'Daal', 50),
						   (10, 'Krishi', 'Farsan', 75);
select*from Customer;

------performing various operation on table.

select cust_name
from Customer
where cust_price>=700 and cust_product='Body Wash';

select cust_name
from Customer
where not cust_product='Body Wash';

select* from Customer
where cust_price between 150 and 700;

select*from Customer
where cust_price in (350, 200, 150);

select*from Customer
where cust_name like 's%';

select*from Customer
where cust_name like 's%a';

select*from Customer
where cust_name like '_a%';

create table Employee2(emp_id int Primary key, first_name varchar(20) not null, last_name varchar(20) not null, emp_salary int,
emp_designation varchar(20), emp_phoneno int, emp_address varchar(20),emp_emailid varchar(20));

insert into Employee2 values(1,'Samiksha', 'Tambe', 25000, 'CA', 99999,'Koperkhairane','xyz@gmail.com'),
                            (2,'Sneha', 'Tawade', 35000, 'coder', 989898,'ghansoli','pqr@gmail.com'),
							(3,'Samiksha', 'Tambe', 10000, 'typist', 7777,'turbhe','tqs@gmail.com'),
							(4,'Komal', 'Sharma', 28000, 'youtuber', 56565,'seawoods','krs@gmail.com'),
							(5,'Kishor', 'Sharma', 29000, 'editor', 69696,'seawoods','lpq@gmail.com'),
							(6,'Snehal', 'Dalvi', 21000, 'coder', 89235,'nerul','sdp@gmail.com'),
							(7,'Kishor', 'Sharma', 29000, 'editor', 69696,'seawoods','lpq@gmail.com'),
							(8,'Komal', 'Sharma', 28000, 'Worker', 83547,'turbhe','ksp@gmail.com'),
							(9,'Sneha', 'Tawade', 20000, 'coder', 454545,'Airoli','spq@gmail.com'),
							(10,'Parth', 'Kale', 46000, 'Developer', 232323,'Sanpada','yst@gmail.com'),
							(11,'Snehal', 'Dalvi', 10000, 'youtuber', 828282,'APMC','xyz@gmail.com'),
							(12,'Parth', 'Kale',15000, 'Tester', 56104,'Thane','pqr@gmail.com');

select*from Employee2;

------performing various operation on table.

select* from Employee2
order by emp_designation DESC;

select emp_designation as designation
from Employee2;

select concat(first_name, last_name) as full_name
from Employee2;

select lower('Samiksha Tambe')
from Employee2;

select upper('Samiksha Tambe')
from Employee2;

select replace(first_name, 'Kishor','Dev')
from Employee2;

select reverse('Sneha Tawade')
from Employee2;

select len('Samiksha');

select substring(first_name,1, 4)
from Employee2;

select ltrim('  samiksha');
select rtrim('  samiksha   ');
select abs(-6);

select(7%2);
select floor(24.45);
select ceiling(24.45);
select ceiling(25.75);

select sqrt(144);
select sqrt(169);

create table order1(order_id int, order_date datetime, order_name varchar(30));

insert into order1 values(1, '2023-11-01 11:05:00', 'laptop'),
                        (2 , '2023-05-31 01:15:25', 'CPU'),
						(3 , '2022-07-18 15:06:18',' mouse'),
						(4 , '2022-08-19 19:28:14', 'keyboard'),
						(5 , '2023-08-05 06:18:30', 'desktop'),
                        (6 , '2021-06-08 09:19:20',' desk'),
						(7 , '2023-03-16 11:16:50', 'pendrive'),
						(8 , '2021-06-04 16:29:30', 'bluetoothspeakers'),
						(9 ,'2020-03-07 23:15:20', 'headsets'),
						(10,'2021-01-05 10:11:48', 'earphones');
						
select*from order1;

select getdate();
select SYSDATETIME();

------performing various operation on table.

select order_date as orderdate
from order1
where order_id=2;

select order_id,dateadd(Day,30,order_date) as Payout from order1;
select order_id,dateadd(Day,10,order_date) as Payout from order1;

select order_id,datediff(Day,2023-11-01, 2022-01-05) as Payout from order1;
select datediff(MONTH,'2023-11-01',' 2022-01-05 ') as Payout;
select datediff(YEAR,'2023-11-01',' 2022-01-05 ') as Payout;

select*from Employee2;

select avg(emp_salary) as avg_sal from Employee2;

select count(first_name) from Employee2;
select min(emp_salary) as avg_sal from Employee2;
select max(emp_salary) as avg_sal from Employee2;

select sum(emp_salary) from Employee2;
select count (order_id) from order1 group by order_name; 

select count (emp_id) from Employee2 group by emp_designation; 

select emp_address, sum(emp_salary) from Employee2 group by emp_address;

select emp_address, sum(emp_salary) from Employee2 group by emp_address having sum(emp_salary)>30000;

#subqueries

create table product(product_id int primary key, product_name varchar(20), product_quantity int, product_price int);

insert into product values(1, 'dell laptop', 30, 68000),
(2, 'wireless mouse', 40, 500),
(3, 'cpu', 50, 10000),
(4, 'monitor', 40, 20000),
(5, 'pendrives', 25, 800),
(6, 'smartphones', 100, 25000),
(7, 'tables', 65, 2000),
(8, 'chairs', 70, 1500),
(9, 'tab', 25, 80000),
(10, 'headphones', 60, 40000);

select*from product;

Create table Customer1 (
	CustId int primary key,
    CustName varchar(20) not null,
    Product varchar(20),
    Price int
);

Insert into Customer1 values (1,'shubham','Laptop',50000), (2,'arya','mobile',25000), (3,'mrunal','keyboard',1500),
		(4,'aniket','bag',2500), (5,'tejal','tiffin',200), (6,'siddhant','notebooks',100),
        (7,'sakshi','mouse',150), (8,'sanket','pen',10), (9,'bhushan','laptop',30000), (10,'aalapi','mobile',20000);

Select * from Customer1;

------performing various operation on table.

select*from product
where product_id in(select product_id from product where product_price>1000);

select product_id from product where product_price>1000;

create table product2(product_id int primary key, product_name varchar(20), product_quantity int, product_price int);

insert into product2
select*from product where product_id in(select product_id from product);

select*from product2;

------performing various operation on table.

update product 
set product_price= product_price*0.25
where product_quantity in(select product_quantity from product2 where product_quantity>=25);

select*from product;
select*from product2;

delete from product
where product_quantity in(select product_quantity from product2 where product_quantity >=25);

create database student1;
use student1;
create table itv1(
id int , name varchar(20));

insert into itv1 values (1,'abc');
insert into itv1 values (2,'xyz') , (3,'pqr') , (4,'dfg') , (5,'rty');

drop database employee; 

create database employee;
use employee;
create table employee(
emp_id int , emp_name varchar(30) , emp_desigation varchar(30));

insert into employee values (1,'ajit chalke', 'manager'),
(2,'ankita mishra','data analyst');

select*from employee;

drop database student1;

create database student1;
use student1;
create table itvedant1(
id int , name varchar(20)
);

insert into itvedant1 values(1,'abc');

select*from itvedant1;

create database student2;
use student2;
create table person(
id int not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
age int
);

insert into person values(1,'ss','xx',20);

create table person1(
id int unique,
first_name varchar(20)
);

insert into person1 values(1,'ankita');

select*from person1;

create table student(
student_id int,
student_name varchar(20),
student_phonenumber varchar(20),
student_emailid varchar(20) default'xyz@gmail.com');

insert into student values (11,'snehal','123456789','ss@gmail.com');
insert into student values (11,'snehal','123456789','default');

select*from student;

create database teacher_student;
use teacher_student;
create table teacher(
tid int primary key,
tname varchar not null,
tphone bigint unique
);

insert into teacher values(1,'ankita','123456789');

create table student(
sid int not null,
sname varchar(20),
sage int
check age>=18,
slocation varchar(20) default 'kamothe',
foreign key(tid) references teacher(tid));

------performing various operation.

select abs(-6);
select(7%3);
select floor(25.75);
select ceiling(25.75);
select truncate (12.321,2);
select sqrt(144);
select sqrt(-989);

create database management;
create table management(
management_id int not null,
management_name varchar(20),
management_level varchar(20)
);
insert into management values(1,'ankita','data scientist');
insert into management values(2,'nikita','senior');

select*from management;

select lower ('junior');

select upper('junior');

select len('ankita');

select substring('ankita' , 1,4);

select rtrim( 'ankita');

select ltrim(    'ankita');

create table orders(
order_id int primary key,
order_date datetime,
productname varchar(20)
);

insert into orders values(25,'11-02-05 11:06:59','pen');

select*from orders; 

select now() from orders;

create database product1;
create table productdata1(
product_id int not null,
product_name varchar(20),
product_quan varchar(20),
unit_price int
);

insert into productdata1 values(1,'ankita','50000','10');

select*from productdata1;

------performing various operation on table.

update productdata1 set unit_price = unit_price * 0.25 where product_quan in ( select product_quan from productdata1 where product_quan>=5);

delete from productdata1 where product_quan in ( select product_quan from productdata1 where product_quan >=15);

select*from productdata1;

----some of the SQL commands does not work in SQL MANAGEMENT STUDIO 
-------WORKBENCH  is the 2nd option for the commands to be worked on .
