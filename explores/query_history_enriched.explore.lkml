include: "/views/snowflake_cost_attribution/*.view"

explore: query_history_enriched {
  join: dbt_queries {
    relationship: one_to_one
    type: left_outer
    sql_on: ${dbt_queries.query_id} = ${query_history_enriched.query_id} ;;
  }

  sql_always_where:
  1=1
  {% if query_history_enriched.current_vs_previous_period_advanced._in_query %}and ${query_history_enriched.current_vs_previous_period_advanced} is not null{% endif %}
  {% if parameters.apply_to_date_filter_advanced._is_filtered %}and ${query_history_enriched.is_to_date_advanced}{% endif %}
  ;;

  join: parameters {}

}
