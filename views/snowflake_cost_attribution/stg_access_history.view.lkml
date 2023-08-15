# The name of this view in Looker is "Stg Access History"
view: stg_access_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."STG_ACCESS_HISTORY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Base Objects Accessed" in Explore.

  dimension: base_objects_accessed {
    type: string
    sql: ${TABLE}."BASE_OBJECTS_ACCESSED" ;;
  }

  dimension: direct_objects_accessed {
    type: string
    sql: ${TABLE}."DIRECT_OBJECTS_ACCESSED" ;;
  }

  dimension: object_modified_by_ddl {
    type: string
    sql: ${TABLE}."OBJECT_MODIFIED_BY_DDL" ;;
  }

  dimension: objects_modified {
    type: string
    sql: ${TABLE}."OBJECTS_MODIFIED" ;;
  }

  dimension: policies_referenced {
    type: string
    sql: ${TABLE}."POLICIES_REFERENCED" ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: query_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."QUERY_START_TIME" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
