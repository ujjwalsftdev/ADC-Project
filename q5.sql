select customer_db.customer_data.first_name, 
customer_db.customer_data.last_name, 
 services_db.package.limited_cable_internet,
services_db.internet.data_plan 
from customer_db.customer_data, services_db.package
inner join customer_db.customer_data
on customer_db.customer_data.customer_data_id = services_db.internet.internet_id
inner join services_db.package
on services_db.package.package_id = services_db.internet.internet_id
order by customer_data.last_name;