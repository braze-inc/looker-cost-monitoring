# The name of this view in Looker is "Alerts Dbt Models"
view: alerts_dbt_models {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."ALERTS_DBT_MODELS" ;;

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

  dimension: alias {
    type: string
    sql: ${TABLE}."ALIAS" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: detected_at {
    type: string
    sql: ${TABLE}."DETECTED_AT" ;;
  }

  dimension: full_refresh {
    type: yesno
    sql: ${TABLE}."FULL_REFRESH" ;;
  }

  dimension: materialization {
    type: string
    sql: ${TABLE}."MATERIALIZATION" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }

  dimension: original_path {
    type: string
    sql: ${TABLE}."ORIGINAL_PATH" ;;
  }

  dimension: owners {
    type: string
    sql: ${TABLE}."OWNERS" ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}."PATH" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
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
