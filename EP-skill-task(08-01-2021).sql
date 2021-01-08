create database EP;
use EP;
show tables;
create table Employee10(emp_id int primary key,emp_name varchar(45),emp_dob varchar(20),emp_age varchar(45),emp_dep varchar(45),emp_desg varchar(20));
insert into Employee10 values(41,'chandu','3-08-1997',25,'CSE','Professor');
insert into Employee10 values(42,'hemanth','5-06-1999',30,'ECE','Asst.Professor');
insert into Employee10 values(43,'john','2-04-1996',26,'CSE','Asst.Professor');
insert into Employee10 values(44,'gopi','7-07-1997',25,'CSE','Professor');
insert into Employee10 values(45,'karthik','031-12-1995',26,'ECE','Professor');
insert into Employee10 values(46,'gopi','5-07-1979',42,'CSE','Asst.Professor');
insert into Employee10 values(47,'ramesh','13-04-1987',34,'ME','Professor');
insert into Employee10 values(48,'goutham','11-04-1997',31,'EEE','Professor');
insert into Employee10 values(49,'nithin','15-11-1994',30,'BT','Professor');
insert into Employee10 values(50,'rishi','27-03-1989',32,'BBA','Professor');
select * from Employee10;

insert into Employee10 (emp_id, emp_name, emp_dob, emp_age, emp_dep, emp_desg)
values (51, 'Hari','2-11-1996', 25, 'CSE', 'Asst.Professor');

update Employee10 set emp_name='karthik' where emp_id=45;

delete from Employee10 where emp_name='rishi';

desc Employee10;

alter table Employee10 drop emp_age;

alter table Employee10 add emp_salary int;
insert into Employee10 (emp_salary) value(50000);