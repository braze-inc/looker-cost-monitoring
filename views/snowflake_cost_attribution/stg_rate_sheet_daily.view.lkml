# The name of this view in Looker is "Stg Rate Sheet Daily"
view: stg_rate_sheet_daily {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SNOWFLAKE"."STG_RATE_SHEET_DAILY"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Locator" in Explore.

  dimension: account_locator {
    type: string
    sql: ${TABLE}."ACCOUNT_LOCATOR" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: contract_number {
    type: number
    sql: ${TABLE}."CONTRACT_NUMBER" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_contract_number {
    type: sum
    sql: ${contract_number} ;;
  }

  measure: average_contract_number {
    type: average
    sql: ${contract_number} ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: effective_rate {
    type: number
    sql: ${TABLE}."EFFECTIVE_RATE" ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}."ORGANIZATION_NAME" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: service_level {
    type: string
    sql: ${TABLE}."SERVICE_LEVEL" ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}."SERVICE_TYPE" ;;
  }

  dimension: usage_type {
    type: string
    sql: ${TABLE}."USAGE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [organization_name, account_name]
  }
}
