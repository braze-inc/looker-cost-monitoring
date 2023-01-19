# The name of this view in Looker is "Query Cost Last 30 Days View"
view: query_cost_last_30_days_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."QUERY_COST_LAST_30_DAYS_VIEW"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg Execution Time S" in Explore.

  dimension: avg_execution_time_s {
    type: number
    sql: ${TABLE}."AVG_EXECUTION_TIME_S" ;;
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

  dimension: latest_query_id {
    type: string
    sql: ${TABLE}."LATEST_QUERY_ID" ;;
  }

  dimension: latest_warehouse_name {
    type: string
    sql: ${TABLE}."LATEST_WAREHOUSE_NAME" ;;
  }

  dimension: latest_warehouse_size {
    type: string
    sql: ${TABLE}."LATEST_WAREHOUSE_SIZE" ;;
  }

  dimension: num_executions {
    type: number
    sql: ${TABLE}."NUM_EXECUTIONS" ;;
  }

  dimension: query_signature {
    type: string
    sql: ${TABLE}."QUERY_SIGNATURE" ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }

  dimension: total_cost_last_30_d {
    type: number
    sql: ${TABLE}."TOTAL_COST_LAST_30D" ;;
  }

  measure: count {
    type: count
    drill_fields: [latest_warehouse_name]
  }
}
