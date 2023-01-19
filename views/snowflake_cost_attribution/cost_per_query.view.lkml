# The name of this view in Looker is "Cost per Query"
view: cost_per_query {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."COST_PER_QUERY"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cloud Services Cost" in Explore.

  dimension: cloud_services_cost {
    type: number
    sql: ${TABLE}."CLOUD_SERVICES_COST" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cloud_services_cost {
    type: sum
    sql: ${cloud_services_cost} ;;
  }

  measure: average_cloud_services_cost {
    type: average
    sql: ${cloud_services_cost} ;;
  }

  dimension: compute_cost {
    type: number
    sql: ${TABLE}."COMPUTE_COST" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension_group: execution_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."EXECUTION_START_TIME" ;;
  }

  dimension: query_cost {
    type: number
    sql: ${TABLE}."QUERY_COST" ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }

  dimension_group: start_time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."START_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
