SELECT 
    product_id,
    SUM(quantity) as quantity,
    SUM(stock) as stock,
    AVG(price) as average_price
FROM {{ref("merged")}}
GROUP BY product_id
