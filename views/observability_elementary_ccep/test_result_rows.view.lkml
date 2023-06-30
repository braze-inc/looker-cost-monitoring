# The name of this view in Looker is "Test Result Rows"
view: test_result_rows {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."TEST_RESULT_ROWS" ;;

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
    # This dimension will be called "Elementary Test Results ID" in Explore.

  dimension: elementary_test_results_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ELEMENTARY_TEST_RESULTS_ID" ;;
  }

  dimension: result_row {
    type: string
    sql: ${TABLE}."RESULT_ROW" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	elementary_test_results.test_name,
	elementary_test_results.table_name,
	elementary_test_results.test_short_name,
	elementary_test_results.id,
	elementary_test_results.column_name,
	elementary_test_results.database_name,
	elementary_test_results.schema_name
	]
  }

}
