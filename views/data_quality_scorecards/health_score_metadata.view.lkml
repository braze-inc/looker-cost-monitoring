# The name of this view in Looker is "Health Score Metadata"
view: health_score_metadata {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PROD_SCORECARD"."HEALTH_SCORE_METADATA" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description Coverage" in Explore.

  dimension: description_coverage {
    type: number
    sql: ${TABLE}."DESCRIPTION_COVERAGE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_description_coverage {
    type: sum
    sql: ${description_coverage} ;;  }
  measure: average_description_coverage {
    type: average
    sql: ${description_coverage} ;;  }

  dimension: meta_coverage {
    type: number
    sql: ${TABLE}."META_COVERAGE" ;;
  }

  dimension: owner_coverage {
    type: number
    sql: ${TABLE}."OWNER_COVERAGE" ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}."PROJECT" ;;
  }

  dimension: tags_coverage {
    type: number
    sql: ${TABLE}."TAGS_COVERAGE" ;;
  }
  measure: count {
    type: count
  }
}
