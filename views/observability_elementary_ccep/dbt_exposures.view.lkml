# The name of this view in Looker is "Dbt Exposures"
view: dbt_exposures {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."DBT_EXPOSURES" ;;

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

  dimension: generated_at {
    type: string
    sql: ${TABLE}."GENERATED_AT" ;;
  }

  dimension: maturity {
    type: string
    sql: ${TABLE}."MATURITY" ;;
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

  dimension: owner_email {
    type: string
    sql: ${TABLE}."OWNER_EMAIL" ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}."OWNER_NAME" ;;
  }

  dimension: package_name {
    type: string
    sql: ${TABLE}."PACKAGE_NAME" ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}."PATH" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }
  measure: count {
    type: count
    drill_fields: [name, owner_name, package_name]
  }
}
