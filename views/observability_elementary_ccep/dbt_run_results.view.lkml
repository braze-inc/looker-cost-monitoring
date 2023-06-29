# The name of this view in Looker is "Dbt Run Results"
view: dbt_run_results {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."DBT_RUN_RESULTS" ;;

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

  dimension: compiled_code {
    type: string
    sql: ${TABLE}."COMPILED_CODE" ;;
  }

  dimension: execute_completed_at {
    type: string
    sql: ${TABLE}."EXECUTE_COMPLETED_AT" ;;
  }

  dimension: execute_started_at {
    type: string
    sql: ${TABLE}."EXECUTE_STARTED_AT" ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}."EXECUTION_TIME" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_execution_time {
    type: sum
    sql: ${execution_time} ;;  }
  measure: average_execution_time {
    type: average
    sql: ${execution_time} ;;  }

  dimension: failures {
    type: number
    sql: ${TABLE}."FAILURES" ;;
  }

  dimension: full_refresh {
    type: yesno
    sql: ${TABLE}."FULL_REFRESH" ;;
  }

  dimension: generated_at {
    type: string
    sql: ${TABLE}."GENERATED_AT" ;;
  }

  dimension: invocation_id {
    type: string
    sql: ${TABLE}."INVOCATION_ID" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }

  dimension: model_execution_id {
    type: string
    sql: ${TABLE}."MODEL_EXECUTION_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}."RESOURCE_TYPE" ;;
  }

  dimension: rows_affected {
    type: number
    sql: ${TABLE}."ROWS_AFFECTED" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: thread_id {
    type: string
    sql: ${TABLE}."THREAD_ID" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
