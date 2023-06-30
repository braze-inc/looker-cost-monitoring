# The name of this view in Looker is "Alerts"
view: alerts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."ALERTS" ;;
  drill_fields: [alert_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: alert_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ALERT_ID" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alert Description" in Explore.

  dimension: alert_description {
    type: string
    sql: ${TABLE}."ALERT_DESCRIPTION" ;;
  }

  dimension: alert_results_query {
    type: string
    sql: ${TABLE}."ALERT_RESULTS_QUERY" ;;
  }

  dimension: alert_sent {
    type: yesno
    sql: ${TABLE}."ALERT_SENT" ;;
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

  dimension: sent_at {
    type: string
    sql: ${TABLE}."SENT_AT" ;;
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

  dimension: suppression_status {
    type: string
    sql: ${TABLE}."SUPPRESSION_STATUS" ;;
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
	alert_id,
	test_name,
	test_short_name,
	schema_name,
	column_name,
	database_name,
	table_name,
	alerts_anomaly_detection.count,
	alerts_dbt_models.count,
	alerts_dbt_source_freshness.count,
	alerts_dbt_tests.count,
	alerts_models.count,
	alerts_schema_changes.count,
	alerts_source_freshness.count
	]
  }

}
