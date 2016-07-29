select customer_db.customer_data.first_name, customer_db.customer_data.last_name, employee_db.payment.amount, employee_db.payment.payment_date 
from customer_db.customer_data
inner join employee_db.payment
on customer_db.customer_data.customer_data_id = employee_db.payment.payment_id;