use arikaran;

-- a

update  employee set sal=sal+1000 where sal<5000;
select * from employee;

-- b
update employee set job_desc="salesperson" where job_desc= "engineer";
select * from employee;

-- c
select * from branch;
update branch set location ="pune" where location = "hyd"; 
select * from branch;