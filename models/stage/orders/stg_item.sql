with items_source as (
    {{ substitute(source('DBT_INFO','ALL_INFO'), ref('STG_ITEM_CSV')) }}
),

items as (
    select distinct 
        ITEM_ID,
        ITEM_NAME
    FROM items_source
)

SELECT * FROM items