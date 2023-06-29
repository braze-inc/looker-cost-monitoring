# The name of this view in Looker is "Schema Columns Snapshot"
view: schema_columns_snapshot {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."SCHEMA_COLUMNS_SNAPSHOT" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Name" in Explore.

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: column_state_id {
    type: string
    sql: ${TABLE}."COLUMN_STATE_ID" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: detected {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DETECTED_AT" ;;
  }

  dimension: full_column_name {
    type: string
    sql: ${TABLE}."FULL_COLUMN_NAME" ;;
  }

  dimension: full_table_name {
    type: string
    sql: ${TABLE}."FULL_TABLE_NAME" ;;
  }

  dimension: is_new {
    type: yesno
    sql: ${TABLE}."IS_NEW" ;;
  }
  measure: count {
    type: count
    drill_fields: [full_table_name, column_name, full_column_name]
  }
}
