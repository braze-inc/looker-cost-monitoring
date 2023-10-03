view: dbt_monitored_tables {

  derived_table: {
    sql:
       select 'models' as type,
            m.unique_id,
            case
                when t.parent_model_unique_id is not null then 'Monitored'
                else 'Unmonitored'
            end as status
        from DWH_PROD.ELEMENTARY.DBT_MODELS m
        left join DWH_PROD.ELEMENTARY.DBT_TESTS t on t.parent_model_unique_id = m.unique_id

        union

        select 'sources' as type,
            m.unique_id,
            case
                when t.parent_model_unique_id is not null then 'Monitored'
                else 'Unmonitored'
            end as status
        from DWH_PROD.ELEMENTARY.DBT_SOURCES m
        left join DWH_PROD.ELEMENTARY.DBT_TESTS t on t.parent_model_unique_id = m.unique_id

        union

        select 'seeds' as type,
            m.unique_id,
            case
                when t.parent_model_unique_id is not null then 'Monitored'
                else 'Unmonitored'
            end as status
        from DWH_PROD.ELEMENTARY.DBT_SEEDS m
        left join DWH_PROD.ELEMENTARY.DBT_TESTS t on t.parent_model_unique_id = m.unique_id

        union

        select 'snapshots' as type,
            m.unique_id,
            case
                when t.parent_model_unique_id is not null then 'Monitored'
                else 'Unmonitored'
            end as status
        from DWH_PROD.ELEMENTARY.DBT_SNAPSHOTS m
        left join DWH_PROD.ELEMENTARY.DBT_TESTS t on t.parent_model_unique_id = m.unique_id
      ;;
  }

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;

  # Define your dimensions and measures here, like this:
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.unique_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: dbt_monitored_tables {
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
