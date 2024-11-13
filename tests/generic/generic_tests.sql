{% test is_id_not_unique(model, column_name)%}

with counting as (
    SELECT {{column_name}}, COUNT(*) AS NB
    FROM {{model}}
    GROUP BY {{column_name}}
)
SELECT * FROM counting
WHERE NB > 1

{% endtest%}

