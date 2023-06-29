# The name of this view in Looker is "Filtered Information Schema Columns"
view: filtered_information_schema_columns {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."FILTERED_INFORMATION_SCHEMA_COLUMNS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Name" in Explore.

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: full_table_name {
    type: string
    sql: ${TABLE}."FULL_TABLE_NAME" ;;
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
    drill_fields: [column_name, schema_name, full_table_name, table_name, database_name]
  }
}
