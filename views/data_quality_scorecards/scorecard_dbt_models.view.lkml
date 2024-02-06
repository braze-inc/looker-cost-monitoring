# The name of this view in Looker is "Scorecard Dbt Models"
view: scorecard_dbt_models {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "TEST_TERR_SCORECARD"."SCORECARD_DBT_MODELS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: meta {
    type: string
    sql: ${TABLE}."META" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}."PROJECT" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }
  measure: count {
    type: count
  }
}
