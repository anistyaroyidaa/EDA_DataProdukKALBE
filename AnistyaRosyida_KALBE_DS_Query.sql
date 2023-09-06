--Query 1
SELECT "Marital Status", AVG(age) AS "Rata-Rata Umur"
FROM customer
GROUP BY "Marital Status";

--Query 2
SELECT gender, AVG(age) AS "Rata-Rata Umur"
FROM customer
GROUP BY gender;

--Query 3
select store.storename, sum("Transaction".qty) as "Total Quantity"
from store inner join "Transaction"
on store.storeid = "Transaction".storeid
group by store.storename 
order by "Total Quantity" desc
limit 1;

--Query 4
select product."Product Name", sum("Transaction".totalamount) as "Total Amount"
from product inner join "Transaction"
on product.productid = "Transaction".productid 
group by product."Product Name" 
order by "Total Amount" desc
limit 1; 