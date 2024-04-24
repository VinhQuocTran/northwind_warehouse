with source as (
  select * from {{ source('northwind', 'customers') }}
)
select
  *,
  current_timestamp AS ingestion_timestamp  -- Removed extra space and parenthesis
from source