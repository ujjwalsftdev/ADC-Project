select customer_db.customer_data.first_name, customer_db.customer_data.last_name, services_db.internet.data_plan 
from customer_db.customer_data
inner join services_db.internet
on customer_db.customer_data.customer_data_id = services_db.internet.internet_id;