select customer_db.customer_data.first_name, 
customer_db.customer_data.last_name, 
 services_db.package.limited_cable_internet,

employee_db.payment.amount

from customer_db.customer_data

inner join services_db.package
on services_db.package.package_id = customer_db.customer_data.customer_data_id
inner join employee_db.payment
on employee_db.payment.payment_id = customer_db.customer_data.customer_data_id

order by customer_data.last_name;