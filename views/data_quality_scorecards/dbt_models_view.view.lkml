view: dbt_models_view {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  derived_table: {
    sql:
       select *, split_part(path,'/',2) as project
        from COMMON.PROD_ELEMENTARY.DBT_MODELS m

      ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: meta {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: original_path {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: generated_at {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.type ;;
  }
}

# view: dbt_models_view {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
