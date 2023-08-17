# The name of this view in Looker is "Dbt Tests"
view: dbt_tests {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "ELEMENTARY"."DBT_TESTS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alias" in Explore.

  dimension: alias {
    type: string
    sql: ${TABLE}."ALIAS" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

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

  dimension: error_if {
    type: string
    sql: ${TABLE}."ERROR_IF" ;;
  }

  dimension: generated_at {
    type: string
    sql: ${TABLE}."GENERATED_AT" ;;
  }

  dimension: meta {
    type: string
    sql: ${TABLE}."META" ;;
  }

  dimension: metadata_hash {
    type: string
    sql: ${TABLE}."METADATA_HASH" ;;
  }

  dimension: model_owners {
    type: string
    sql: ${TABLE}."MODEL_OWNERS" ;;
  }

  dimension: model_tags {
    type: string
    sql: ${TABLE}."MODEL_TAGS" ;;
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

  dimension: parent_model_unique_id {
    type: string
    sql: ${TABLE}."PARENT_MODEL_UNIQUE_ID" ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}."PATH" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}."SEVERITY" ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}."SHORT_NAME" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  dimension: test_column_name {
    type: string
    sql: ${TABLE}."TEST_COLUMN_NAME" ;;
  }

  dimension: test_namespace {
    type: string
    sql: ${TABLE}."TEST_NAMESPACE" ;;
  }

  dimension: test_params {
    type: string
    sql: ${TABLE}."TEST_PARAMS" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }

  dimension: warn_if {
    type: string
    sql: ${TABLE}."WARN_IF" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	name,
	package_name,
	database_name,
	test_column_name,
	short_name,
	schema_name
	]
  }

}
