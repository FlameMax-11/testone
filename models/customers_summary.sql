select
    customer_id,
    customer_name,
    customer_email,
    registered_at,
    current_date - registered_at as days_active
from {{ ref('stg_customers') }}
