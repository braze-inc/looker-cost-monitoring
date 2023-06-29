# The name of this view in Looker is "Metadata"
view: metadata {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."METADATA" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dbt Pkg Version" in Explore.

  dimension: dbt_pkg_version {
    type: string
    sql: ${TABLE}."DBT_PKG_VERSION" ;;
  }
  measure: count {
    type: count
  }
}
