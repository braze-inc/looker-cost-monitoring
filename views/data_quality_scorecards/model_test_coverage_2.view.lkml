# The name of this view in Looker is "Model Test Coverage 2"
view: model_test_coverage_2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "DBT_TLIM_SCORECARD"."MODEL_TEST_COVERAGE_2" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Model Coverage" in Explore.

  dimension: model_coverage {
    type: number
    sql: ${TABLE}."MODEL_COVERAGE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_model_coverage {
    type: sum
    sql: ${model_coverage} ;;  }
  measure: average_model_coverage {
    type: average
    sql: ${model_coverage} ;;  }

  dimension: model_coverage_percentage_overall {
    type: number
    sql: ${TABLE}."MODEL_COVERAGE_PERCENTAGE_OVERALL" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [table_name, schema_name]
  }
}
