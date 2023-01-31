include: "/views/snowflake_cost_attribution/*.view"

explore: query_history_enriched {
  join: dbt_queries {
    relationship: one_to_one
    type: left_outer
    sql_on: ${dbt_queries.query_id} = ${query_history_enriched.query_id} ;;
  }
}
