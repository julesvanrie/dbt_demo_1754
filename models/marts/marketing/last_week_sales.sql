select
    date_date,
    tot_revenue
from {{ ref('int_sales_daily') }}
order by date_date desc
limit 7