# The name of this view in Looker is "Dbt Metrics"
view: dbt_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."DBT_METRICS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Depends on Macros" in Explore.

  dimension: depends_on_macros {
    type: string
    sql: ${TABLE}."DEPENDS_ON_MACROS" ;;
  }

  dimension: depends_on_nodes {
    type: string
    sql: ${TABLE}."DEPENDS_ON_NODES" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: dimensions {
    type: string
    sql: ${TABLE}."DIMENSIONS" ;;
  }

  dimension: filters {
    type: string
    sql: ${TABLE}."FILTERS" ;;
  }

  dimension: generated_at {
    type: string
    sql: ${TABLE}."GENERATED_AT" ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}."LABEL" ;;
  }

  dimension: meta {
    type: string
    sql: ${TABLE}."META" ;;
  }

  dimension: metadata_hash {
    type: string
    sql: ${TABLE}."METADATA_HASH" ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}."MODEL" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: original_path {
    type: string
    sql: ${TABLE}."ORIGINAL_PATH" ;;
  }

  dimension: package_name {
    type: string
    sql: ${TABLE}."PACKAGE_NAME" ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}."PATH" ;;
  }

  dimension: sql {
    type: string
    sql: ${TABLE}."SQL" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  dimension: time_grains {
    type: string
    sql: ${TABLE}."TIME_GRAINS" ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}."TIMESTAMP" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [package_name, name]
  }
}
