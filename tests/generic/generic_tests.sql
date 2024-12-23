{% test is_id_not_unique(model, column_name)%}

with counting as (
    SELECT {{column_name}}, COUNT(*) AS NB
    FROM {{model}}
    GROUP BY {{column_name}}
)
SELECT * FROM counting
WHERE NB > 1

{% endtest %}

{% test result_minus_expected(model,seed) %}

    SELECT * FROM {{model}} MINUS SELECT * FROM {{seed}}

{% endtest %}

{% test expected_minus_result(model,seed) %}

    SELECT * FROM {{seed}} MINUS SELECT * FROM {{model}}

{% endtest %}
