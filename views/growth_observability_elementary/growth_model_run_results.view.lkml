# The name of this view in Looker is "Growth Model Run Results"
view: growth_model_run_results {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "ELEMENTARY"."GROWTH_MODEL_RUN_RESULTS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alias" in Explore.

  dimension: alias {
    type: string
    sql: ${TABLE}."ALIAS" ;;
  }

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

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
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

  dimension: is_the_first_invocation_of_the_day {
    type: yesno
    sql: ${TABLE}."IS_THE_FIRST_INVOCATION_OF_THE_DAY" ;;
  }

  dimension: is_the_last_invocation_of_the_day {
    type: yesno
    sql: ${TABLE}."IS_THE_LAST_INVOCATION_OF_THE_DAY" ;;
  }

  dimension: materialization {
    type: string
    sql: ${TABLE}."MATERIALIZATION" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }

  dimension: model_execution_id {
    type: string
    sql: ${TABLE}."MODEL_EXECUTION_ID" ;;
  }

  dimension: model_invocation_reverse_index {
    type: number
    sql: ${TABLE}."MODEL_INVOCATION_REVERSE_INDEX" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: original_path {
    type: string
    sql: ${TABLE}."ORIGINAL_PATH" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: package_name {
    type: string
    sql: ${TABLE}."PACKAGE_NAME" ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}."PATH" ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
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
    drill_fields: [package_name, schema_name, name, database_name]
  }
}
