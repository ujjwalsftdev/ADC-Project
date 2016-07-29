create view customer_db.cust_view as select first_name, last_name from customer_db.customer_data;

select  * from customer_db.cust_view;