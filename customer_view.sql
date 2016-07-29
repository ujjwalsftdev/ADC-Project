CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `customer_data_view` AS
    SELECT 
        `customer_data`.`first_name` AS `first_name`,
        `customer_data`.`last_name` AS `last_name`,
        `customer_data`.`gender` AS `gender`
    FROM
        `customer_data`
    WHERE
        (`customer_data`.`customer_data_id` = '% ')