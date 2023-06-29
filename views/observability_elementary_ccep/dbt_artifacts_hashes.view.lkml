# The name of this view in Looker is "Dbt Artifacts Hashes"
view: dbt_artifacts_hashes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."DBT_ARTIFACTS_HASHES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Artifacts Model" in Explore.

  dimension: artifacts_model {
    type: string
    sql: ${TABLE}."ARTIFACTS_MODEL" ;;
  }

  dimension: metadata_hash {
    type: string
    sql: ${TABLE}."METADATA_HASH" ;;
  }
  measure: count {
    type: count
  }
}
