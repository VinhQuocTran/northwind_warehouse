WITH ranked_employees AS (
    SELECT *,
    ROW_NUMBER() OVER(PARTITION BY employee_id ORDER BY employee_id) as rn
    FROM {{ ref('stg_employee') }}
)
SELECT *
FROM ranked_employees
WHERE rn = 1