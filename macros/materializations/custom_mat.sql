{% macro get_quarantine_tests(model) %}
  {% if execute %}
    {% set nodes = graph.nodes.values() %}
    {% set matching_tests = nodes | selectattr('resource_type', 'equalto', 'test') | list %}
  {% else %}
    {% set matching_tests = {} %}
  {% endif %}
   return(matching_tests) 
{% endmacro %}