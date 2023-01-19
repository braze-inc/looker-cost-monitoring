# The name of this view in Looker is "Warehouse Credits Map"
view: warehouse_credits_map {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."WAREHOUSE_CREDITS_MAP"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Credits per Hour" in Explore.

  dimension: credits_per_hour {
    type: number
    sql: ${TABLE}."CREDITS_PER_HOUR" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_credits_per_hour {
    type: sum
    sql: ${credits_per_hour} ;;
  }

  measure: average_credits_per_hour {
    type: average
    sql: ${credits_per_hour} ;;
  }

  dimension: credits_per_minute {
    type: number
    sql: ${TABLE}."CREDITS_PER_MINUTE" ;;
  }

  dimension: credits_per_second {
    type: number
    sql: ${TABLE}."CREDITS_PER_SECOND" ;;
  }

  dimension: warehouse_size {
    type: string
    sql: ${TABLE}."WAREHOUSE_SIZE" ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}."WAREHOUSE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
