# The name of this view in Looker is "Stg Database Storage Usage History"
view: stg_database_storage_usage_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."STG_DATABASE_STORAGE_USAGE_HISTORY"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average Database Bytes" in Explore.

  dimension: average_database_bytes {
    type: number
    sql: ${TABLE}."AVERAGE_DATABASE_BYTES" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_average_database_bytes {
    type: sum
    sql: ${average_database_bytes} ;;
  }

  measure: average_average_database_bytes {
    type: average
    sql: ${average_database_bytes} ;;
  }

  dimension: average_failsafe_bytes {
    type: number
    sql: ${TABLE}."AVERAGE_FAILSAFE_BYTES" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name]
  }
}
