-- Calculate the total revenue obtained from pizza sales
SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price)) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id