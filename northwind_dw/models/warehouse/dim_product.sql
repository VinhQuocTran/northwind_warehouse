SELECT  p.*,
        s.company_name as supplier_company,
        current_timestamp as insertion_timestamp
FROM {{ ref('stg_product') }} p
left join {{ ref('stg_supplier') }} s 
on p.supplier_id = s.supplier_id
