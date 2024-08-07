select
    *,
    qty * price as revenue
from {{ ref("stg_raw__sales") }}
join {{ ref("stg_raw__stock") }}
using (product_id)