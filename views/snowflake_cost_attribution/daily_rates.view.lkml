# The name of this view in Looker is "Daily Rates"
view: daily_rates {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."DAILY_RATES"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Effective Rate" in Explore.

  dimension: effective_rate {
    type: number
    sql: ${TABLE}."EFFECTIVE_RATE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_effective_rate {
    type: sum
    sql: ${effective_rate} ;;
  }

  measure: average_effective_rate {
    type: average
    sql: ${effective_rate} ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}."SERVICE_TYPE" ;;
  }

  dimension: usage_type {
    type: string
    sql: ${TABLE}."USAGE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
