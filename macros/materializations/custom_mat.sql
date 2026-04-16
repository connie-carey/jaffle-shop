{% materialization custom_mat, default %}

  {% set target_relation = this %}

  {% call statement('main') %}
    create or replace table {{ target_relation }} as (
      {{ sql }}
    )
  {% endcall %}

  {{ return({'relations': [target_relation]}) }}

{% endmaterialization %}