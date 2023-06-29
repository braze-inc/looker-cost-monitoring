# The name of this view in Looker is "Monitors Runs"
view: monitors_runs {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."MONITORS_RUNS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Name" in Explore.

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: full_table_name {
    type: string
    sql: ${TABLE}."FULL_TABLE_NAME" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_bucket_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_BUCKET_END" ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}."METRIC_NAME" ;;
  }

  dimension: metric_properties {
    type: string
    sql: ${TABLE}."METRIC_PROPERTIES" ;;
  }
  measure: count {
    type: count
    drill_fields: [column_name, metric_name, full_table_name]
  }
}
