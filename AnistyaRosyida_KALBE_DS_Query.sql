--Query 1
SELECT "Marital Status", AVG(age) AS "Rata-Rata Umur"
FROM customer
GROUP BY "Marital Status";

--Query 2
SELECT gender, AVG(age) AS "Rata-Rata Umur"
FROM customer
GROUP BY gender;

--Query 3
select store.storename, "Transaction".qty as "Total Quantity"
from store inner join "Transaction"
on store.storeid = "Transaction".storeid
order by "Total Quantity" desc
limit 1;

--Query 4
select product."Product Name", "Transaction".totalamount as "Total Amount"
from product inner join "Transaction"
on product.productid = "Transaction".productid 
order by "Total Amount" desc
limit 1; 