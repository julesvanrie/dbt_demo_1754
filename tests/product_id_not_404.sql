select
    *
from
    {{ ref('stg_raw__stock') }}
where
    product_id LIKE "404"