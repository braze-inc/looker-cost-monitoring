# The name of this view in Looker is "Health Score Accuracy"
view: health_score_accuracy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "TEST_TERR_SCORECARD"."HEALTH_SCORE_ACCURACY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Error Count" in Explore.

  dimension: error_count {
    type: number
    sql: ${TABLE}."ERROR_COUNT" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_error_count {
    type: sum
    sql: ${error_count} ;;  }
  measure: average_error_count {
    type: average
    sql: ${error_count} ;;  }

  dimension: pass_count {
    type: number
    sql: ${TABLE}."PASS_COUNT" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: test_count {
    type: number
    sql: ${TABLE}."TEST_COUNT" ;;
  }

  dimension: warn_count {
    type: number
    sql: ${TABLE}."WARN_COUNT" ;;
  }
  measure: count {
    type: count
    drill_fields: [schema_name]
  }
}
