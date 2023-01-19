# The name of this view in Looker is "Stg Query History"
view: stg_query_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."STG_QUERY_HISTORY"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bytes Deleted" in Explore.

  dimension: bytes_deleted {
    type: number
    sql: ${TABLE}."BYTES_DELETED" ;;
  }

  dimension: bytes_read_from_result {
    type: number
    sql: ${TABLE}."BYTES_READ_FROM_RESULT" ;;
  }

  dimension: bytes_scanned {
    type: number
    sql: ${TABLE}."BYTES_SCANNED" ;;
  }

  dimension: bytes_sent_over_the_network {
    type: number
    sql: ${TABLE}."BYTES_SENT_OVER_THE_NETWORK" ;;
  }

  dimension: bytes_spilled_to_local_storage {
    type: number
    sql: ${TABLE}."BYTES_SPILLED_TO_LOCAL_STORAGE" ;;
  }

  dimension: bytes_spilled_to_remote_storage {
    type: number
    sql: ${TABLE}."BYTES_SPILLED_TO_REMOTE_STORAGE" ;;
  }

  dimension: bytes_written {
    type: number
    sql: ${TABLE}."BYTES_WRITTEN" ;;
  }

  dimension: bytes_written_to_result {
    type: number
    sql: ${TABLE}."BYTES_WRITTEN_TO_RESULT" ;;
  }

  dimension: cluster_number {
    type: number
    sql: ${TABLE}."CLUSTER_NUMBER" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cluster_number {
    type: sum
    sql: ${cluster_number} ;;
  }

  measure: average_cluster_number {
    type: average
    sql: ${cluster_number} ;;
  }

  dimension: compilation_time {
    type: number
    sql: ${TABLE}."COMPILATION_TIME" ;;
  }

  dimension: credits_used_cloud_services {
    type: number
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}."ERROR_CODE" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }

  dimension: execution_status {
    type: string
    sql: ${TABLE}."EXECUTION_STATUS" ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}."EXECUTION_TIME" ;;
  }

  dimension: external_function_total_invocations {
    type: number
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_INVOCATIONS" ;;
  }

  dimension: external_function_total_received_bytes {
    type: number
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_RECEIVED_BYTES" ;;
  }

  dimension: external_function_total_received_rows {
    type: number
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_RECEIVED_ROWS" ;;
  }

  dimension: external_function_total_sent_bytes {
    type: number
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_SENT_BYTES" ;;
  }

  dimension: external_function_total_sent_rows {
    type: number
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_SENT_ROWS" ;;
  }

  dimension: inbound_data_transfer_bytes {
    type: number
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_BYTES" ;;
  }

  dimension: inbound_data_transfer_cloud {
    type: string
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_CLOUD" ;;
  }

  dimension: inbound_data_transfer_region {
    type: string
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_REGION" ;;
  }

  dimension: is_client_generated_statement {
    type: yesno
    sql: ${TABLE}."IS_CLIENT_GENERATED_STATEMENT" ;;
  }

  dimension: list_external_files_time {
    type: number
    sql: ${TABLE}."LIST_EXTERNAL_FILES_TIME" ;;
  }

  dimension: outbound_data_transfer_bytes {
    type: number
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_BYTES" ;;
  }

  dimension: outbound_data_transfer_cloud {
    type: string
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_CLOUD" ;;
  }

  dimension: outbound_data_transfer_region {
    type: string
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_REGION" ;;
  }

  dimension: partitions_scanned {
    type: number
    sql: ${TABLE}."PARTITIONS_SCANNED" ;;
  }

  dimension: partitions_total {
    type: number
    sql: ${TABLE}."PARTITIONS_TOTAL" ;;
  }

  dimension: percentage_scanned_from_cache {
    type: number
    sql: ${TABLE}."PERCENTAGE_SCANNED_FROM_CACHE" ;;
  }

  dimension: query_acceleration_bytes_scanned {
    type: number
    sql: ${TABLE}."QUERY_ACCELERATION_BYTES_SCANNED" ;;
  }

  dimension: query_acceleration_partitions_scanned {
    type: number
    sql: ${TABLE}."QUERY_ACCELERATION_PARTITIONS_SCANNED" ;;
  }

  dimension: query_acceleration_upper_limit_scale_factor {
    type: number
    sql: ${TABLE}."QUERY_ACCELERATION_UPPER_LIMIT_SCALE_FACTOR" ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }

  dimension: query_load_percent {
    type: number
    sql: ${TABLE}."QUERY_LOAD_PERCENT" ;;
  }

  dimension: query_tag {
    type: string
    sql: ${TABLE}."QUERY_TAG" ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }

  dimension: query_type {
    type: string
    sql: ${TABLE}."QUERY_TYPE" ;;
  }

  dimension: queued_overload_time {
    type: number
    sql: ${TABLE}."QUEUED_OVERLOAD_TIME" ;;
  }

  dimension: queued_provisioning_time {
    type: number
    sql: ${TABLE}."QUEUED_PROVISIONING_TIME" ;;
  }

  dimension: queued_repair_time {
    type: number
    sql: ${TABLE}."QUEUED_REPAIR_TIME" ;;
  }

  dimension: release_version {
    type: string
    sql: ${TABLE}."RELEASE_VERSION" ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}."ROLE_NAME" ;;
  }

  dimension: rows_deleted {
    type: number
    sql: ${TABLE}."ROWS_DELETED" ;;
  }

  dimension: rows_inserted {
    type: number
    sql: ${TABLE}."ROWS_INSERTED" ;;
  }

  dimension: rows_produced {
    type: number
    sql: ${TABLE}."ROWS_PRODUCED" ;;
  }

  dimension: rows_unloaded {
    type: number
    sql: ${TABLE}."ROWS_UNLOADED" ;;
  }

  dimension: rows_updated {
    type: number
    sql: ${TABLE}."ROWS_UPDATED" ;;
  }

  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}."SESSION_ID" ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension: total_elapsed_time {
    type: number
    sql: ${TABLE}."TOTAL_ELAPSED_TIME" ;;
  }

  dimension: transaction_blocked_time {
    type: number
    sql: ${TABLE}."TRANSACTION_BLOCKED_TIME" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."WAREHOUSE_ID" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }

  dimension: warehouse_size {
    type: string
    sql: ${TABLE}."WAREHOUSE_SIZE" ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}."WAREHOUSE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name, schema_name, role_name, database_name, warehouse_name]
  }
}
