{{ config(
    partition_by={
      "field": "order_date",
      "data_type": "date"
    }
)}}
select
    o.customer_id,
    o.employee_id,
    o.ship_via,
    od.order_id,
    od.product_id,
    od.quantity,
    od.unit_price,
    od.discount,
    date(o.order_date) as order_date,
    o.shipped_date,
    o.required_date,
    current_timestamp as insertion_timestamp
from {{ ref('stg_order') }} o
left join {{ ref('stg_order_details') }} od
on od.order_id = o.order_id
where od.order_id is not null



