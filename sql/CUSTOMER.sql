

SELECT AVG(review_rating)
FROM customer_shopping_clean;

SELECT gender, sum(purchase_amount)as revenue
FROM customer_shopping_clean
group by gender ;

SELECT customer_id, purchase_amount
FROM customer_shopping_clean
WHERE discount_applied = 'Yes' AND purchase_amount >=(SELECT AVG(purchase_amount) FROM customer_shopping_clean);

SELECT item_purchased,AVG(review_rating) AS average_review_rating
FROM customer_shopping_clean
GROUP BY item_purchased 
ORDER BY AVG(review_rating)desc LIMIT 5;

SELECT shipping_type, AVG(purchase_amount)
FROM customer_shopping_clean
WHERE shipping_type in ('Standard', 'Express')
GROUP BY shipping_type;

SELECT subscription_status,
COUNT(customer_id) as total_customer,
AVG(purchase_amount)as avg_purchase,
SUM(purchase_amount)as total_revenue
FROM customer_shopping_clean
GROUP BY subscription_status
ORDER BY total_revenue, avg_purchase desc;

SELECT item_purchased,
SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*)*100 as discount_rate
FROM customer_shopping_clean 
GROUP BY item_purchased
ORDER BY discount_rate desc 
Limit 5;

WITH customer_type as (
SELECT customer_id, previous_purchases,
CASE
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
FROM customer_shopping_clean
)
SELECT customer_segment , COUNT(*) as 'Number of Customers'
FROM customer_type
GROUP BY customer_segment;


WITH item_counts as (
SELECT category, item_purchased,
COUNT(customer_id)as total_orders,
ROW_NUMBER () OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC)AS item_rank
FROM customer_shopping_clean
GROUP BY category, item_purchased

)

SELECT item_rank, category, item_purchased, total_orders
FROM item_counts 
WHERE item_rank <= 3;

SELECT subscription_status,
COUNT(customer_id) as repeat_buyers
FROM customer_shopping_clean
WHERE previous_purchases > 5
GROUP BY subscription_status;

SELECT age_group,
SUM(purchase_amount) as total_revenue
FROM customer_shopping_clean
GROUP BY age_group
ORDER BY total_revenue DESC;