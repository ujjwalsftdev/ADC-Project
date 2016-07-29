select customer_db.customer_data.first_name, 
customer_db.customer_data.last_name, 
 services_db.package.limited_cable_internet,
services_db.internet.data_plan,
employee_db.payment.amount,
customer_db.postcode.postcode,
services_db.voip.voip_plans
from customer_db.customer_data
inner join services_db.internet
on customer_db.customer_data.customer_data_id = services_db.internet.internet_id
inner join services_db.package
on services_db.package.package_id = customer_db.customer_data.customer_data_id
inner join employee_db.payment
on employee_db.payment.payment_id = customer_db.customer_data.customer_data_id
inner join customer_db.postcode
on customer_db.postcode.postcode_id = customer_db.customer_data.customer_data_id
inner join services_db.voip
on services_db.voip.voip_id = customer_db.customer_data.customer_data_id
order by customer_data.last_name;