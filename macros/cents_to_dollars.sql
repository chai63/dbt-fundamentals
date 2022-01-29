{%- macro cents_to_dollars(column_name, decima_places=2) -%}
round(1.0 * {{ column_name }} / 100, {{ decima_places }})
{%- endmacro -%}