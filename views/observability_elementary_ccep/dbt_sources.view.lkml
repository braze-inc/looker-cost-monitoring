# The name of this view in Looker is "Dbt Sources"
view: dbt_sources {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."DBT_SOURCES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Database Name" in Explore.

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: freshness_error_after {
    type: string
    sql: ${TABLE}."FRESHNESS_ERROR_AFTER" ;;
  }

  dimension: freshness_filter {
    type: string
    sql: ${TABLE}."FRESHNESS_FILTER" ;;
  }

  dimension: freshness_warn_after {
    type: string
    sql: ${TABLE}."FRESHNESS_WARN_AFTER" ;;
  }

  dimension: generated_at {
    type: string
    sql: ${TABLE}."GENERATED_AT" ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}."IDENTIFIER" ;;
  }

  dimension: loaded_at_field {
    type: string
    sql: ${TABLE}."LOADED_AT_FIELD" ;;
  }

  dimension: meta {
    type: string
    sql: ${TABLE}."META" ;;
  }

  dimension: metadata_hash {
    type: string
    sql: ${TABLE}."METADATA_HASH" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: original_path {
    type: string
    sql: ${TABLE}."ORIGINAL_PATH" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: package_name {
    type: string
    sql: ${TABLE}."PACKAGE_NAME" ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}."PATH" ;;
  }

  dimension: relation_name {
    type: string
    sql: ${TABLE}."RELATION_NAME" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: source_description {
    type: string
    sql: ${TABLE}."SOURCE_DESCRIPTION" ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}."SOURCE_NAME" ;;
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
	relation_name,
	source_name,
	package_name,
	name,
	schema_name,
	database_name
	]
  }

}
