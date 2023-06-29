# The name of this view in Looker is "Anomaly Threshold Sensitivity"
view: anomaly_threshold_sensitivity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."ANOMALY_THRESHOLD_SENSITIVITY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: full_table_name {
    type: string
    sql: ${TABLE}."FULL_TABLE_NAME" ;;
  }

  dimension: is_anomaly_1_5 {
    type: yesno
    sql: ${TABLE}."is_anomaly_1_5" ;;
  }

  dimension: is_anomaly_2 {
    type: yesno
    sql: ${TABLE}."is_anomaly_2" ;;
  }

  dimension: is_anomaly_2_5 {
    type: yesno
    sql: ${TABLE}."is_anomaly_2_5" ;;
  }

  dimension: is_anomaly_3 {
    type: yesno
    sql: ${TABLE}."is_anomaly_3" ;;
  }

  dimension: is_anomaly_3_5 {
    type: yesno
    sql: ${TABLE}."is_anomaly_3_5" ;;
  }

  dimension: is_anomaly_4 {
    type: yesno
    sql: ${TABLE}."is_anomaly_4" ;;
  }

  dimension: is_anomaly_4_5 {
    type: yesno
    sql: ${TABLE}."is_anomaly_4_5" ;;
  }

  dimension: latest_metric_value {
    type: number
    sql: ${TABLE}."LATEST_METRIC_VALUE" ;;
  }

  dimension: metric_avg {
    type: number
    sql: ${TABLE}."METRIC_AVG" ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}."METRIC_NAME" ;;
  }

  dimension: metric_stddev {
    type: number
    sql: ${TABLE}."METRIC_STDDEV" ;;
  }
  measure: count {
    type: count
    drill_fields: [column_name, full_table_name, metric_name]
  }
}
