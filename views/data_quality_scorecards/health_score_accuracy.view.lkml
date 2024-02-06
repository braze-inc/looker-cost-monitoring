# The name of this view in Looker is "Health Score Accuracy"
view: health_score_accuracy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "TEST_TERR_SCORECARD"."HEALTH_SCORE_ACCURACY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: detected {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DETECTED_AT" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Schema Name" in Explore.

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: test_name {
    type: string
    sql: ${TABLE}."TEST_NAME" ;;
  }

  dimension: test_short_name {
    type: string
    sql: ${TABLE}."TEST_SHORT_NAME" ;;
  }

  dimension: test_type {
    type: string
    sql: ${TABLE}."TEST_TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [table_name, test_short_name, test_name, schema_name]
  }
}
