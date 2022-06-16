
create table branch(
branch_id int primary key auto_increment,
location varchar(10),
addr varchar(40) 

);
drop table employee;
create table employee(
emp_id int primary key auto_increment,
ename varchar(25) not null,
job_desc varchar(25),
sal int ,
branch_id int ,
constraint fk foreign key (branch_id) references branch(branch_id)
on delete set null
);
 insert into branch values
(1,"chennai","abc road tambaram"),
(2,"hyd","123 xyz"),
(3,"cbm","15th floor mount road");

insert into employee values(1,"aarthi","HR",250000,2),
(2,"mohan", "sales",20000,3),
(3,"kumar","engineer",35000,1),
(4,"salim","analyst",230000,2),
(5,"abinaya","HR",250000,2),
(6,"Harini","QA",190000,1),
(7,"vedika","Manager",350000,3),
(8,"Arikaran","Dev",600000,3),
(9,"ram","CEO",100000,1);

select * from employee;
select *from branch;

-- join 
select employee.emp_id,employee.ename,employee.job_desc,branch.location
from employee 
join branch 
on employee.branch_id = branch.branch_id;

-- same operation using where clause without join
select employee.emp_id,employee.ename,employee.job_desc,branch.location
from employee,branch
where employee.branch_id=branch.branch_id;
-- left join
select employee.emp_id,employee.ename,employee.job_desc,branch.location
from employee 
left join branch 
on employee.branch_id = branch.branch_id;

-- right join
select employee.emp_id,employee.ename,employee.job_desc,branch.location
from employee 
right join branch 
on employee.branch_id = branch.branch_id;

-- cross join
select employee.emp_id,employee.ename,employee.job_desc,branch.location
from employee 
cross join branch 
on employee.branch_id = branch.branch_id;

