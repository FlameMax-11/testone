with source_data as (
    select
        id as customer_id,
        name as customer_name,
        lower(email) as customer_email,
        signup_date::date as registered_at
    from {{ ref('raw_customers') }}
)

select * from source_data
