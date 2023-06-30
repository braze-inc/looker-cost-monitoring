# The name of this view in Looker is "Job Run Results"
view: job_run_results {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."JOB_RUN_RESULTS" ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: run_completed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."RUN_COMPLETED_AT" ;;
  }

  dimension: run_execution_time {
    type: number
    sql: ${TABLE}."RUN_EXECUTION_TIME" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_run_execution_time {
    type: sum
    sql: ${run_execution_time} ;;  }
  measure: average_run_execution_time {
    type: average
    sql: ${run_execution_time} ;;  }

  dimension: run_id {
    type: string
    sql: ${TABLE}."RUN_ID" ;;
  }

  dimension_group: run_started {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."RUN_STARTED_AT" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
