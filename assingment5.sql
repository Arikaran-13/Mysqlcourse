use stockdb;
select * from stockMaster;
select * from instock;
select * from outstock;

insert into instock values(5,"2022-01-01",65,1700);
insert into instock values(6,"2022-02-01",100,1800);
insert into instock values (7,"2022-12-04",89,2000);

-- a
-- sum of quantity purchased on each group date
select stock_id, sum(quantity_purchased) from instock group by purchase_date;

-- b
select sum(quantity_purchased)stock_available from instock;

-- c
-- min
select stock_id from instock where purchase_cost =( select  min(purchase_cost) from
instock); 

-- max
select stock_id from instock where purchase_cost =( select  max(purchase_cost) from
instock); 

-- d
insert into outstock values(5,"2022-02-02",65,1700);
insert into outstock values(6,"2022-03-02",100,1800);
insert into outstock values (7,"2022-04-02",89,2000);

select selling_date,sum(quantity_sold) from outstock group by selling_date;

