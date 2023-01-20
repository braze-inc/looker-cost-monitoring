# The name of this view in Looker is "Cost Dbt Models Last 30 Days View"
view: cost_dbt_models_last_30_days_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."COST_DBT_MODELS_LAST_30_DAYS_VIEW"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dbt Node ID" in Explore.

  dimension: dbt_node_id {
    type: string
    sql: ${TABLE}."DBT_NODE_ID" ;;
  }

  dimension: estimated_annual_cost {
    type: number
    sql: ${TABLE}."ESTIMATED_ANNUAL_COST" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_estimated_annual_cost {
    type: sum
    sql: ${estimated_annual_cost} ;;
  }

  measure: average_estimated_annual_cost {
    type: average
    sql: ${estimated_annual_cost} ;;
  }

  dimension: total_cost_last_30_d {
    type: number
    sql: ${TABLE}."TOTAL_COST_LAST_30D" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
