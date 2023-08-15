# The name of this view in Looker is "Table Storage Metrics"
view: table_storage_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."TABLE_STORAGE_METRICS" ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active Bytes" in Explore.

  dimension: active_bytes {
    type: number
    sql: ${TABLE}."ACTIVE_BYTES" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_active_bytes {
    type: sum
    sql: ${active_bytes} ;;  }
  measure: average_active_bytes {
    type: average
    sql: ${active_bytes} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: catalog_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CATALOG_CREATED" ;;
  }

  dimension_group: catalog_dropped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CATALOG_DROPPED" ;;
  }

  dimension: clone_group_id {
    type: number
    sql: ${TABLE}."CLONE_GROUP_ID" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: failsafe_bytes {
    type: number
    sql: ${TABLE}."FAILSAFE_BYTES" ;;
  }

  dimension: is_transient {
    type: string
    sql: ${TABLE}."IS_TRANSIENT" ;;
  }

  dimension: retained_for_clone_bytes {
    type: number
    sql: ${TABLE}."RETAINED_FOR_CLONE_BYTES" ;;
  }

  dimension_group: schema_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SCHEMA_CREATED" ;;
  }

  dimension_group: schema_dropped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SCHEMA_DROPPED" ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension_group: table_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."TABLE_CREATED" ;;
  }

  dimension_group: table_dropped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."TABLE_DROPPED" ;;
  }

  dimension_group: table_entered_failsafe {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."TABLE_ENTERED_FAILSAFE" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }

  dimension: time_travel_bytes {
    type: number
    sql: ${TABLE}."TIME_TRAVEL_BYTES" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, table_name]
  }
}
