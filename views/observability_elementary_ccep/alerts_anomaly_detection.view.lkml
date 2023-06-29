# The name of this view in Looker is "Alerts Anomaly Detection"
view: alerts_anomaly_detection {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."ALERTS_ANOMALY_DETECTION" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alert Description" in Explore.

  dimension: alert_description {
    type: string
    sql: ${TABLE}."ALERT_DESCRIPTION" ;;
  }

  dimension: alert_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ALERT_ID" ;;
  }

  dimension: alert_results_query {
    type: string
    sql: ${TABLE}."ALERT_RESULTS_QUERY" ;;
  }

  dimension: alert_type {
    type: string
    sql: ${TABLE}."ALERT_TYPE" ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: data_issue_id {
    type: string
    sql: ${TABLE}."DATA_ISSUE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: detected {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DETECTED_AT" ;;
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

  dimension: sub_type {
    type: string
    sql: ${TABLE}."SUB_TYPE" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
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

  dimension: test_short_name {
    type: string
    sql: ${TABLE}."TEST_SHORT_NAME" ;;
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
	test_name,
	table_name,
	column_name,
	test_short_name,
	database_name,
	schema_name,
	alerts.test_name,
	alerts.alert_id,
	alerts.test_short_name,
	alerts.schema_name,
	alerts.column_name,
	alerts.database_name,
	alerts.table_name
	]
  }

}
