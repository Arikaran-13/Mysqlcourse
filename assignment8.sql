use stockdb;
select * from stockMaster;
select * from instock;
select * from outstock;

-- a
select * from stockmaster  cross join instock,outstock;

-- b
select outstock.stock_id, outstock.quantity_sold,stockmaster.stock_title
from outstock 
join stockmaster 
on outstock.stock_id = stockmaster.stock_id;

-- c
insert into instock(stock_id,purchase_date,quantity_purchased) values(8,"2022-01-01",65);
insert into instock(stock_id,purchase_date,quantity_purchased) values(9,"2022-01-01",65);
select stockmaster.stock_id,instock.quantity_purchased from 
stockmaster 
inner join instock
on stockmaster.stock_id =instock.stock_id;

-- d
select instock.stock_id,stockmaster.stock_title from 
instock
 right join stockmaster
on stockmaster.stock_id =instock.stock_id;

-- e
select instock.stock_id,stockmaster.stock_title from 
instock
 join stockmaster
on stockmaster.stock_id =instock.stock_id;

-- a


