
select CUST_NAME, CUST_CITY from customer;
select count(cust_country) from customer
where GRADE = 3;
select * from customer
where CUST_CITY = 'London' ; 
select * from customer
where CUST_CODE = 'C00015' ; 



select * from customer
where CUST_CITY NOT IN ('Bangalore') ; 

select * from customer
ORDER BY CUST_CITY desc ; 


select max(ORD_AMOUNT) from orders; 

select max(ORD_NUM) from orders; 

select avg(ORD_AMOUNT) from orders; 

select * from customer
where CUST_NAME like 'm%';

select * from customer
where CUST_NAME like 's%';

select * from customer
where CUST_COUNTRY IN ('USA','UK','Australia') ; 

select * from orders
WHERE ORD_DATE LIKE '%-01-%'; 

select * from customer
where PAYMENT_AMT BETWEEN 1000 AND 4000 ; 

SELECT * FROM customer , orders;

SELECT * FROM customer , orders
where orders.CUST_CODE = customer.CUST_CODE;

SELECT COUNT(CUST_CODE),CUST_COUNTRY FROM customer
group by CUST_COUNTRY;

SELECT COUNT(ORD_NUM),agent_code FROM orders
group by agent_code;

SELECT (COUNT(CUST_CODE)) C ,CUST_COUNTRY FROM customer
group by CUST_COUNTRY
having C >5;

