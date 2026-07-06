SELECT *
FROM {{ref('joins')}}
WHERE date_part_year(order_date) = 2020