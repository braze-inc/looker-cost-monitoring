# The name of this view in Looker is "Health Score Accuracy"
view: health_score_accuracy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PROD_SCORECARD"."HEALTH_SCORE_ACCURACY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Fail Percentage" in Explore.

  dimension: fail_percentage {
    type: number
    sql: ${TABLE}."FAIL_PERCENTAGE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fail_percentage {
    type: sum
    sql: ${fail_percentage} ;;  }
  measure: average_fail_percentage {
    type: average
    sql: ${fail_percentage} ;;  }

  dimension: fail_warn_percentage {
    type: number
    sql: ${TABLE}."FAIL_WARN_PERCENTAGE" ;;
  }

  dimension: pass_percentage {
    type: number
    sql: ${TABLE}."PASS_PERCENTAGE" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: warn_percentage {
    type: number
    sql: ${TABLE}."WARN_PERCENTAGE" ;;
  }
  measure: count {
    type: count
    drill_fields: [schema_name]
  }
}
