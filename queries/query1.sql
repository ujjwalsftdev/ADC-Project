select customer_db.customer_data.first_name, 
customer_db.customer_data.last_name, 
 
services_db.internet.data_plan,

customer_db.postcode.postcode

from customer_db.customer_data
inner join services_db.internet
on customer_db.customer_data.customer_data_id = services_db.internet.internet_id

inner join customer_db.postcode
on customer_db.postcode.postcode_id = services_db.internet.internet_id

order by customer_data.last_name;