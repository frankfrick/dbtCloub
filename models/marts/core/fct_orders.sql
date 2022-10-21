select so.order_id, dc.customer_id, sp.amount
from {{ ref('dim_customers')}} dc
join {{ ref('stg_orders')}} so on so.customer_id = dc.customer_id
join {{ ref('stg_payments')}} sp on sp.order_id = so.order_id