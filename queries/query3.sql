select customer_db.customer_data.first_name, 
customer_db.customer_data.last_name, 
 
services_db.internet.data_plan,

services_db.voip.voip_plans
from customer_db.customer_data
inner join services_db.internet
on customer_db.customer_data.customer_data_id = services_db.internet.internet_id

inner join services_db.voip
on services_db.voip.voip_id = customer_db.customer_data.customer_data_id
order by customer_data.last_name;