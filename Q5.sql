-- List the sum of top 5 most ordered pizza types along with their quantities.
SELECT pizza_types.name, COUNT(order_details.quantity) as most_order
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id= pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
LIMIT 5;