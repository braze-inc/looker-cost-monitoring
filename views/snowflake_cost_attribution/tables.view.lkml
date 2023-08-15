# The name of this view in Looker is "Tables"
view: tables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."TABLES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Auto Clustering On" in Explore.

  dimension: auto_clustering_on {
    type: string
    sql: ${TABLE}."AUTO_CLUSTERING_ON" ;;
  }

  dimension: bytes {
    type: number
    sql: ${TABLE}."BYTES" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bytes {
    type: sum
    sql: ${bytes} ;;  }
  measure: average_bytes {
    type: average
    sql: ${bytes} ;;  }

  dimension: clustering_key {
    type: string
    sql: ${TABLE}."CLUSTERING_KEY" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: commit_action {
    type: string
    sql: ${TABLE}."COMMIT_ACTION" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: is_insertable_into {
    type: string
    sql: ${TABLE}."IS_INSERTABLE_INTO" ;;
  }

  dimension: is_transient {
    type: string
    sql: ${TABLE}."IS_TRANSIENT" ;;
  }

  dimension: is_typed {
    type: string
    sql: ${TABLE}."IS_TYPED" ;;
  }

  dimension_group: last_altered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension_group: last_ddl {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_DDL" ;;
  }

  dimension: last_ddl_by {
    type: string
    sql: ${TABLE}."LAST_DDL_BY" ;;
  }

  dimension: reference_generation {
    type: string
    sql: ${TABLE}."REFERENCE_GENERATION" ;;
  }

  dimension: retention_time {
    type: number
    sql: ${TABLE}."RETENTION_TIME" ;;
  }

  dimension: row_count {
    type: number
    sql: ${TABLE}."ROW_COUNT" ;;
  }

  dimension: self_referencing_column_name {
    type: string
    sql: ${TABLE}."SELF_REFERENCING_COLUMN_NAME" ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_owner {
    type: string
    sql: ${TABLE}."TABLE_OWNER" ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  dimension: user_defined_type_catalog {
    type: string
    sql: ${TABLE}."USER_DEFINED_TYPE_CATALOG" ;;
  }

  dimension: user_defined_type_name {
    type: string
    sql: ${TABLE}."USER_DEFINED_TYPE_NAME" ;;
  }

  dimension: user_defined_type_schema {
    type: string
    sql: ${TABLE}."USER_DEFINED_TYPE_SCHEMA" ;;
  }
  measure: count {
    type: count
    drill_fields: [user_defined_type_name, table_name, self_referencing_column_name]
  }
}
