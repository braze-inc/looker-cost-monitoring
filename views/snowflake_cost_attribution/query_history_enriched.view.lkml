# The name of this view in Looker is "Query History Enriched"
view: query_history_enriched {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."QUERY_HISTORY_ENRICHED"
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

  dimension: cloud_services_cost {
    type: number
    sql: ${TABLE}."CLOUD_SERVICES_COST" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cloud_services_cost {
    type: sum
    sql: ${cloud_services_cost} ;;
  }

  measure: average_cloud_services_cost {
    type: average
    sql: ${cloud_services_cost} ;;
  }

  dimension: cluster_number {
    type: number
    sql: ${TABLE}."CLUSTER_NUMBER" ;;
  }

  dimension: compilation_time_ms {
    type: number
    sql: ${TABLE}."COMPILATION_TIME_MS" ;;
  }

  dimension: compilation_time_s {
    type: number
    sql: ${TABLE}."COMPILATION_TIME_S" ;;
  }

  dimension: compute_cost {
    type: number
    sql: ${TABLE}."COMPUTE_COST" ;;
  }

  dimension: credits_used_cloud_services {
    type: number
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
  }

  dimension: data_scanned_from_cache_gb {
    type: number
    sql: ${TABLE}."DATA_SCANNED_FROM_CACHE_GB" ;;
  }

  dimension: data_scanned_gb {
    type: number
    sql: ${TABLE}."DATA_SCANNED_GB" ;;
  }

  dimension: data_sent_over_the_network_gb {
    type: number
    sql: ${TABLE}."DATA_SENT_OVER_THE_NETWORK_GB" ;;
  }

  dimension: data_spilled_to_local_storage_gb {
    type: number
    sql: ${TABLE}."DATA_SPILLED_TO_LOCAL_STORAGE_GB" ;;
  }

  dimension: data_spilled_to_remote_storage_gb {
    type: number
    sql: ${TABLE}."DATA_SPILLED_TO_REMOTE_STORAGE_GB" ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: dbt_metadata {
    type: string
    sql: ${TABLE}."DBT_METADATA" ;;
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

  dimension_group: execution_start {
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
    sql: ${TABLE}."EXECUTION_START_TIME" ;;
  }

  dimension: execution_status {
    type: string
    sql: ${TABLE}."EXECUTION_STATUS" ;;
  }

  dimension: execution_time_ms {
    type: number
    sql: ${TABLE}."EXECUTION_TIME_MS" ;;
  }

  dimension: execution_time_s {
    type: number
    sql: ${TABLE}."EXECUTION_TIME_S" ;;
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

  dimension: list_external_files_time_ms {
    type: number
    sql: ${TABLE}."LIST_EXTERNAL_FILES_TIME_MS" ;;
  }

  dimension: list_external_files_time_s {
    type: number
    sql: ${TABLE}."LIST_EXTERNAL_FILES_TIME_S" ;;
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

  dimension: query_cost {
    type: number
    sql: ${TABLE}."QUERY_COST" ;;
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

  dimension: query_text_no_comments {
    type: string
    sql: ${TABLE}."QUERY_TEXT_NO_COMMENTS" ;;
  }

  dimension: query_type {
    type: string
    sql: ${TABLE}."QUERY_TYPE" ;;
  }

  dimension: queued_overload_time_ms {
    type: number
    sql: ${TABLE}."QUEUED_OVERLOAD_TIME_MS" ;;
  }

  dimension: queued_overload_time_s {
    type: number
    sql: ${TABLE}."QUEUED_OVERLOAD_TIME_S" ;;
  }

  dimension: queued_provisioning_time_ms {
    type: number
    sql: ${TABLE}."QUEUED_PROVISIONING_TIME_MS" ;;
  }

  dimension: queued_provisioning_time_s {
    type: number
    sql: ${TABLE}."QUEUED_PROVISIONING_TIME_S" ;;
  }

  dimension: queued_repair_time_ms {
    type: number
    sql: ${TABLE}."QUEUED_REPAIR_TIME_MS" ;;
  }

  dimension: queued_repair_time_s {
    type: number
    sql: ${TABLE}."QUEUED_REPAIR_TIME_S" ;;
  }

  dimension: ran_on_warehouse {
    type: yesno
    sql: ${TABLE}."RAN_ON_WAREHOUSE" ;;
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

  dimension_group: start_time {
    type: time
    view_label: "_PoP"
    timeframes: [
      # raw,
      # time,
      # date,
      # week,
      # month,
      # quarter,
      # year
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension: total_elapsed_time {
    type: number
    sql: ${TABLE}."TOTAL_ELAPSED_TIME" ;;
  }

  dimension: total_elapsed_time_ms {
    type: number
    sql: ${TABLE}."TOTAL_ELAPSED_TIME_MS" ;;
  }

  dimension: total_elapsed_time_s {
    type: number
    sql: ${TABLE}."TOTAL_ELAPSED_TIME_S" ;;
  }

  dimension: transaction_blocked_time_ms {
    type: number
    sql: ${TABLE}."TRANSACTION_BLOCKED_TIME_MS" ;;
  }

  dimension: transaction_blocked_time_s {
    type: number
    sql: ${TABLE}."TRANSACTION_BLOCKED_TIME_S" ;;
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
    drill_fields: [role_name, user_name, warehouse_name, schema_name, database_name]
  }






  # period over period pt.2
  dimension: start_time_month_of_quarter_advanced {
    label: "Query Month of Quarter"
    group_label: "Query Dates"
    group_item_label: "Month of Quarter"
    type: number
    sql:
      case
        when ${query_history_enriched.start_time_month_num} IN (1,4,7,10) THEN 1
        when ${query_history_enriched.start_time_month_num} IN (2,5,8,11) THEN 2
        else 3
      end
    ;;
  }

  dimension: is_to_date_advanced {
    hidden: yes
    type: yesno
    sql:
      {% if parameters.select_timeframe_advanced._parameter_value == 'ytd' %}true
      {% else %}
        {% if parameters.apply_to_date_filter_advanced._parameter_value == 'true' %}
          {% if parameters.select_timeframe_advanced._parameter_value == 'week' %}
            ${query_history_enriched.start_time_day_of_week_index} <= ${parameters.current_timestamp_advanced_day_of_week_index}
          {% elsif parameters.select_timeframe_advanced._parameter_value == 'day' %}
            ${query_history_enriched.start_time_hour_of_day} <= ${parameters.current_timestamp_advanced_hour_of_day}
          {% elsif parameters.select_dynamic_timeframe_advanced._parameter_value == 'quarter' %}
            ${query_history_enriched.start_time_month_of_quarter_advanced} <= ${parameters.current_timestamp_month_of_quarter_advanced}
          {% elsif parameters.select_timeframe_advanced._parameter_value == 'year' %}
            ${query_history_enriched.start_time_day_of_year} <= ${parameters.current_timestamp_advanced_day_of_year}
          {% else %}
            ${query_history_enriched.start_time_day_of_month} <= ${parameters.current_timestamp_advanced_day_of_month}
          {% endif %}
        {% else %} true
        {% endif %}
      {% endif %}
    ;;
  }

  dimension: selected_dynamic_timeframe_advanced  {
    label_from_parameter: parameters.select_timeframe_advanced
    type: string
    hidden: yes
    sql:
      {% if parameters.select_timeframe_advanced._parameter_value == 'day' %}
        ${query_history_enriched.start_time_date}
      {% elsif parameters.select_timeframe_advanced._parameter_value == 'week' %}
        ${query_history_enriched.start_time_week}
      {% elsif parameters.select_timeframe_advanced._parameter_value == 'year' %}
        ${query_history_enriched.start_time_year}
      {% elsif parameters.select_timeframe_advanced._parameter_value == 'quarter' %}
        ${query_history_enriched.start_time_quarter}
      {% elsif parameters.select_timeframe_advanced._parameter_value == 'ytd' %}
        CONCAT('YTD (',${query_history_enriched.start_time_year},'-',${parameters.selected_reference_date_default_today_advanced_month_num},'-',${parameters.selected_reference_date_default_today_advanced_day_of_month},')')
      {% else %}
        ${query_history_enriched.start_time_month}
      {% endif %}
    ;;
  }

  dimension: selected_dynamic_day_of_advanced  {
    label: "{%
    if parameters.select_timeframe_advanced._is_filtered and parameters.select_timeframe_advanced._parameter_value == 'month' %}Day of Month{%
    elsif parameters.select_timeframe_advanced._is_filtered and parameters.select_timeframe_advanced._parameter_value == 'week' %}Day of Week{%
    elsif parameters.select_timeframe_advanced._is_filtered and parameters.select_timeframe_advanced._parameter_value == 'day' %}Hour of Day{%
    elsif parameters.select_timeframe_advanced._is_filtered and parameters.select_timeframe_advanced._parameter_value == 'year' %}Months{%
    elsif parameters.select_timeframe_advanced._is_filtered and parameters.select_timeframe_advanced._parameter_value == 'ytd' %}Day of Year{%
    else %}Selected Dynamic Timeframe Granularity{%
    endif %}"
    order_by_field: query_history_enriched.selected_dynamic_day_of_sort_advanced
    type: string
    sql:
    {% if parameters.select_timeframe_advanced._parameter_value == 'day' %}
      ${query_history_enriched.start_time_hour_of_day}
    {% elsif parameters.select_timeframe_advanced._parameter_value == 'week' %}
      ${query_history_enriched.start_time_day_of_week}
    {% elsif parameters.select_timeframe_advanced._parameter_value == 'year' %}
      ${query_history_enriched.start_time_month_name}
    {% elsif parameters.select_timeframe_advanced._parameter_value == 'quarter' %}
      ${query_history_enriched.start_time_month_of_quarter_advanced}
      {% elsif parameters.select_timeframe_advanced._parameter_value == 'ytd' %}
      ${query_history_enriched.start_time_day_of_year}
    {% else %}
      ${query_history_enriched.start_time_day_of_month}
    {% endif %}
    ;;
  }

  dimension: selected_dynamic_day_of_sort_advanced  {
    hidden: yes
    label_from_parameter: parameters.select_timeframe_advanced
    type: number
    sql:
    {% if parameters.select_timeframe_advanced._parameter_value == 'day' %}
      ${query_history_enriched.start_time_hour_of_day}
    {% elsif parameters.select_timeframe_advanced._parameter_value == 'week' %}
      ${query_history_enriched.start_time_day_of_week_index}
    {% elsif parameters.select_timeframe_advanced._parameter_value == 'year' %}
      ${query_history_enriched.start_time_month_num}
    {% elsif parameters.select_timeframe_advanced._parameter_value == 'quarter' %}
      ${query_history_enriched.start_time_month_of_quarter_advanced}
    {% elsif parameters.select_timeframe_advanced._parameter_value == 'ytd' %}
      ${query_history_enriched.start_time_day_of_year}
    {% else %}
      ${query_history_enriched.start_time_day_of_month}
    {% endif %}
    ;;
  }





  # period over period pt.3
  ### replace any reference to query_history_enriched.created_[...] by the view/dimensions of your choosing
  ### We're assuming here that the date dimension we want to leverage in the PoP is query_history_enriched.created_date labeled as "Orders Date"
  #####  CURRENT/REFERENCE [Timeframe] VS PREVIOUS [Timeframe]

  dimension: current_vs_previous_period_advanced {
    label: "Current vs Previous Period"
    description: "Use this dimension along with \"Select Timeframe\", \"Select Reference Date\", \"To Date\" and \"Select Comparison\" filters"
    type: string
    sql:
      {% if parameters.select_timeframe_advanced._parameter_value == "ytd" %}
        case
          when ${query_history_enriched.start_time_date} BETWEEN date_trunc(year, ${parameters.selected_reference_date_default_today_advanced_raw}) and ${parameters.selected_reference_date_default_today_advanced_date}
            then ${selected_dynamic_timeframe_advanced}
          when ${query_history_enriched.start_time_date} BETWEEN date_trunc(year, dateadd(year, -1,${parameters.selected_reference_date_default_today_advanced_raw})) and dateadd(year, -1, ${parameters.selected_reference_date_default_today_advanced_date})
            then ${selected_dynamic_timeframe_advanced}
          else null
        end
      {% else %}
        {% if parameters.select_comparison._parameter_value == "year" %}
          case
            when date_trunc({% parameter parameters.select_timeframe_advanced %}, ${query_history_enriched.start_time_raw}) = date_trunc({% parameter parameters.select_timeframe_advanced %}, ${parameters.selected_reference_date_default_today_advanced_raw})
              then ${selected_dynamic_timeframe_advanced}
            when date_trunc({% parameter parameters.select_timeframe_advanced %}, ${query_history_enriched.start_time_raw}) = date_trunc({% parameter parameters.select_timeframe_advanced %}, dateadd(year, -1, ${parameters.selected_reference_date_default_today_advanced_raw}))
              then ${selected_dynamic_timeframe_advanced}
          end
        {% elsif parameters.select_comparison._parameter_value == "period" %}
          case
            when date_trunc({% parameter parameters.select_timeframe_advanced %}, ${query_history_enriched.start_time_raw}) = date_trunc({% parameter parameters.select_timeframe_advanced %}, ${parameters.selected_reference_date_default_today_advanced_raw})
              then ${selected_dynamic_timeframe_advanced}
            when date_trunc({% parameter parameters.select_timeframe_advanced %}, ${query_history_enriched.start_time_raw}) = date_trunc({% parameter parameters.select_timeframe_advanced %}, dateadd({% parameter parameters.select_timeframe_advanced %}, -1, ${parameters.selected_reference_date_default_today_advanced_raw}))
              then ${selected_dynamic_timeframe_advanced}
          end
        {% endif %}
      {% endif %}
      ;;
  }


  dimension: current_vs_previous_period_hidden_advanced {
    label: "Current vs Previous Period (Hidden - for measure only)"
    hidden: yes
    description: "Hide this measure so that it doesn't appear in the field picket and use it to filter measures (since the values are static)"
    type: string
    sql:
      {% if parameters.select_timeframe_advanced._parameter_value == "ytd" %}
        case
          when ${query_history_enriched.start_time_raw} BETWEEN date_trunc(year, ${parameters.selected_reference_date_default_today_advanced_raw}) and ${parameters.selected_reference_date_default_today_advanced_raw}
            then 'reference'
          when ${query_history_enriched.start_time_raw} BETWEEN date_trunc(year, dateadd(year, -1, ${parameters.selected_reference_date_default_today_advanced_raw})) and dateadd(year, -1, ${parameters.selected_reference_date_default_today_advanced_date})
            then 'comparison'
          else null
        end
      {% else %}
        {% if parameters.select_comparison._parameter_value == "year" %}
          case
            when date_trunc({% parameter parameters.select_timeframe_advanced %}, ${query_history_enriched.start_time_raw}) = date_trunc({% parameter parameters.select_timeframe_advanced %}, ${parameters.selected_reference_date_default_today_advanced_raw})
              then 'reference'
            when date_trunc({% parameter parameters.select_timeframe_advanced %}, ${query_history_enriched.start_time_raw}) = date_trunc({% parameter parameters.select_timeframe_advanced %}, dateadd(year, -1, ${parameters.selected_reference_date_default_today_advanced_raw}))
              then 'comparison'
          end
        {% elsif parameters.select_comparison._parameter_value == "period" %}
          case
            when date_trunc({% parameter parameters.select_timeframe_advanced %}, ${query_history_enriched.start_time_raw}) = date_trunc({% parameter parameters.select_timeframe_advanced %}, ${parameters.selected_reference_date_default_today_advanced_raw})
              then 'reference'
            when date_trunc({% parameter parameters.select_timeframe_advanced %}, ${query_history_enriched.start_time_raw}) = date_trunc({% parameter parameters.select_timeframe_advanced %}, dateadd({% parameter parameters.select_timeframe_advanced %}, -1, ${parameters.selected_reference_date_default_today_advanced_raw}))
              then 'comparison'
          end
        {% endif %}
      {% endif %}
    ;;
  }

}
