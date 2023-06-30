# The name of this view in Looker is "Metrics Anomaly Score"
view: metrics_anomaly_score {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."METRICS_ANOMALY_SCORE" ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Anomaly Score" in Explore.

  dimension: anomaly_score {
    type: number
    sql: ${TABLE}."ANOMALY_SCORE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_anomaly_score {
    type: sum
    sql: ${anomaly_score} ;;  }
  measure: average_anomaly_score {
    type: average
    sql: ${anomaly_score} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: bucket_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."BUCKET_END" ;;
  }

  dimension_group: bucket_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."BUCKET_START" ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}."DIMENSION" ;;
  }

  dimension: dimension_value {
    type: string
    sql: ${TABLE}."DIMENSION_VALUE" ;;
  }

  dimension: full_table_name {
    type: string
    sql: ${TABLE}."FULL_TABLE_NAME" ;;
  }

  dimension: is_anomaly {
    type: yesno
    sql: ${TABLE}."IS_ANOMALY" ;;
  }

  dimension: latest_metric_value {
    type: number
    sql: ${TABLE}."LATEST_METRIC_VALUE" ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}."METRIC_NAME" ;;
  }

  dimension: training_avg {
    type: number
    sql: ${TABLE}."TRAINING_AVG" ;;
  }

  dimension_group: training_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."TRAINING_END" ;;
  }

  dimension: training_set_size {
    type: number
    sql: ${TABLE}."TRAINING_SET_SIZE" ;;
  }

  dimension_group: training_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."TRAINING_START" ;;
  }

  dimension: training_stddev {
    type: number
    sql: ${TABLE}."TRAINING_STDDEV" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."UPDATED_AT" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, metric_name, full_table_name, column_name]
  }
}
