
WITH source AS (
        SELECT *

        FROM {{ source('thelook_ecommerce', 'orders') }}
)

SELECT
        -- IDs
        order_id,
        user_id,

        -- Other columns
        status,
        num_of_item as num_items_ordered,

        -- Timestamps
        created_at,
        returned_at,
        shipped_at,
        delivered_at


FROM source

