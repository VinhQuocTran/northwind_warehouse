WITH ranked_customers AS (
    SELECT *,
    ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY customer_id) as rn
    FROM {{ ref('stg_customer') }}
)
SELECT *
FROM ranked_customers
WHERE rn = 1