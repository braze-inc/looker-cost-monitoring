# The name of this view in Looker is "Alerts Source Freshness"
view: alerts_source_freshness {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."ALERTS_SOURCE_FRESHNESS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alert ID" in Explore.

  dimension: alert_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ALERT_ID" ;;
  }

  dimension: alert_sent {
    type: yesno
    sql: ${TABLE}."ALERT_SENT" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: detected_at {
    type: string
    sql: ${TABLE}."DETECTED_AT" ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}."ERROR" ;;
  }

  dimension: freshness_error_after {
    type: string
    sql: ${TABLE}."FRESHNESS_ERROR_AFTER" ;;
  }

  dimension: freshness_filter {
    type: string
    sql: ${TABLE}."FRESHNESS_FILTER" ;;
  }

  dimension: freshness_warn_after {
    type: string
    sql: ${TABLE}."FRESHNESS_WARN_AFTER" ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}."IDENTIFIER" ;;
  }

  dimension: max_loaded_at {
    type: string
    sql: ${TABLE}."MAX_LOADED_AT" ;;
  }

  dimension: max_loaded_at_time_ago_in_s {
    type: number
    sql: ${TABLE}."MAX_LOADED_AT_TIME_AGO_IN_S" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_max_loaded_at_time_ago_in_s {
    type: sum
    sql: ${max_loaded_at_time_ago_in_s} ;;  }
  measure: average_max_loaded_at_time_ago_in_s {
    type: average
    sql: ${max_loaded_at_time_ago_in_s} ;;  }

  dimension: meta {
    type: string
    sql: ${TABLE}."META" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: package_name {
    type: string
    sql: ${TABLE}."PACKAGE_NAME" ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}."PATH" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: sent_at {
    type: string
    sql: ${TABLE}."SENT_AT" ;;
  }

  dimension: snapshotted_at {
    type: string
    sql: ${TABLE}."SNAPSHOTTED_AT" ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}."SOURCE_NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: suppression_status {
    type: string
    sql: ${TABLE}."SUPPRESSION_STATUS" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	schema_name,
	source_name,
	database_name,
	package_name,
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
