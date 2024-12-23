{% macro substitute(table_name, seed_name) %}

    {% if var('to_substitute',false) %}
        SELECT * FROM {{seed_name}}
    {% else %}
        SELECT * FROM {{table_name}}

    {% endif %}
{% endmacro %}

