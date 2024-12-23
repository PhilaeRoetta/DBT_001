{% snapshot mock_orders %}
{% set new_schema = 'DBT_001_SNAPSHOT' %}

{{

    config(
        target_database = 'DBT',
        target_schema = new_schema,
        unique_key = 'order_id',
        strategy = 'timestamp',
        updated_at = 'updated_at',
    )

}}

select * from DBT.DBT_001.mock_orders

{% endsnapshot %}