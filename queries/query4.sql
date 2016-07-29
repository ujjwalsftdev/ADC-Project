select customer_db.customer_data.first_name, 
customer_db.customer_data.last_name, 
 services_db.tv.tv_plans,

customer_db.postcode.postcode

from customer_db.customer_data

inner join customer_db.postcode
on customer_db.postcode.postcode_id = customer_db.customer_data.customer_data_id
inner join services_db.tv
on services_db.tv.tv_id = customer_db.customer_data.customer_data_id
order by customer_data.last_name;