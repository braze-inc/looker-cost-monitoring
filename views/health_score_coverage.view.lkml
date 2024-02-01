# The name of this view in Looker is "Health Score Coverage"
view: health_score_coverage {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PROD_SCORECARD"."HEALTH_SCORE_COVERAGE" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Schema Coverage Score" in Explore.

  dimension: schema_coverage_score {
    type: number
    sql: ${TABLE}."SCHEMA_COVERAGE_SCORE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_schema_coverage_score {
    type: sum
    sql: ${schema_coverage_score} ;;  }
  measure: average_schema_coverage_score {
    type: average
    sql: ${schema_coverage_score} ;;  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [schema_name]
  }
}
