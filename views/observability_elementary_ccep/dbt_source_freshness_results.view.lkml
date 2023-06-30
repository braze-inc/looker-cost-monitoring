# The name of this view in Looker is "Dbt Source Freshness Results"
view: dbt_source_freshness_results {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."DBT_SOURCE_FRESHNESS_RESULTS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Compile Completed At" in Explore.

  dimension: compile_completed_at {
    type: string
    sql: ${TABLE}."COMPILE_COMPLETED_AT" ;;
  }

  dimension: compile_started_at {
    type: string
    sql: ${TABLE}."COMPILE_STARTED_AT" ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}."ERROR" ;;
  }

  dimension: execute_completed_at {
    type: string
    sql: ${TABLE}."EXECUTE_COMPLETED_AT" ;;
  }

  dimension: execute_started_at {
    type: string
    sql: ${TABLE}."EXECUTE_STARTED_AT" ;;
  }

  dimension: generated_at {
    type: string
    sql: ${TABLE}."GENERATED_AT" ;;
  }

  dimension: invocation_id {
    type: string
    sql: ${TABLE}."INVOCATION_ID" ;;
  }

  dimension: max_loaded_at {
    type: string
    sql: ${TABLE}."MAX_LOADED_AT" ;;
  }

  dimension: max_loaded_at_time_ago_in_s {
    type: number
    sql: ${TABLE}."MAX_LOADED_AT_TIME_AGO_IN_S" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_max_loaded_at_time_ago_in_s {
    type: sum
    sql: ${max_loaded_at_time_ago_in_s} ;;  }
  measure: average_max_loaded_at_time_ago_in_s {
    type: average
    sql: ${max_loaded_at_time_ago_in_s} ;;  }

  dimension: snapshotted_at {
    type: string
    sql: ${TABLE}."SNAPSHOTTED_AT" ;;
  }

  dimension: source_freshness_execution_id {
    type: string
    sql: ${TABLE}."SOURCE_FRESHNESS_EXECUTION_ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }
  measure: count {
    type: count
  }
}
