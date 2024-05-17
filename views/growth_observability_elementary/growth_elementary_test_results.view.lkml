# The name of this view in Looker is "Growth Elementary Test Results"
view: growth_elementary_test_results {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "ELEMENTARY"."GROWTH_ELEMENTARY_TEST_RESULTS" ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Dbt Source Relation" in Explore.

  dimension: _dbt_source_relation {
    type: string
    sql: ${TABLE}."_DBT_SOURCE_RELATION" ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: data_issue_id {
    type: string
    sql: ${TABLE}."DATA_ISSUE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension_group: detected {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DETECTED_AT" ;;
  }

  dimension: failures {
    type: number
    sql: ${TABLE}."FAILURES" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_failures {
    type: sum
    sql: ${failures} ;;  }
  measure: average_failures {
    type: average
    sql: ${failures} ;;  }

  dimension: invocation_id {
    type: string
    sql: ${TABLE}."INVOCATION_ID" ;;
  }

  dimension: model_unique_id {
    type: string
    sql: ${TABLE}."MODEL_UNIQUE_ID" ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}."OTHER" ;;
  }

  dimension: owners {
    type: string
    sql: ${TABLE}."OWNERS" ;;
  }

  dimension: result_rows {
    type: string
    sql: ${TABLE}."RESULT_ROWS" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}."SEVERITY" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  dimension: test_alias {
    type: string
    sql: ${TABLE}."TEST_ALIAS" ;;
  }

  dimension: test_execution_id {
    type: string
    sql: ${TABLE}."TEST_EXECUTION_ID" ;;
  }

  dimension: test_name {
    type: string
    sql: ${TABLE}."TEST_NAME" ;;
  }

  dimension: test_params {
    type: string
    sql: ${TABLE}."TEST_PARAMS" ;;
  }

  dimension: test_results_description {
    type: string
    sql: ${TABLE}."TEST_RESULTS_DESCRIPTION" ;;
  }

  dimension: test_results_query {
    type: string
    sql: ${TABLE}."TEST_RESULTS_QUERY" ;;
  }

  dimension: test_short_name {
    type: string
    sql: ${TABLE}."TEST_SHORT_NAME" ;;
  }

  dimension: test_sub_type {
    type: string
    sql: ${TABLE}."TEST_SUB_TYPE" ;;
  }

  dimension: test_type {
    type: string
    sql: ${TABLE}."TEST_TYPE" ;;
  }

  dimension: test_unique_id {
    type: string
    sql: ${TABLE}."TEST_UNIQUE_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	schema_name,
	database_name,
	test_name,
	table_name,
	column_name,
	test_short_name
	]
  }

}
