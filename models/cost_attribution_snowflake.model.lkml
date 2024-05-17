# Define the database connection to be used for this model.
connection: "braze_data_services_cost_attribution"

# include all the views
# include: "/views/snowflake_cost_attribution/*.view"
include: "/views/snowflake_cost_attribution/*.view"
# include: "/explores/*.explore"
include: "/explores/SIEM.explore"
include: "/explores/cost_per_query.explore"
include: "/explores/daily_spend.explore"
include: "/explores/dbt_model_cost_last_30_days.explore"
include: "/explores/query_cost_last_30_days.explore"
include: "/explores/query_history.explore"
include: "/explores/query_history_enriched.explore"
include: "/explores/storage_usage.explore"
include: "/explores/warehouse_metering_history.explore"
include: "/dashboards/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: cost_attribution_snowflake_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cost_attribution_snowflake_default_datagroup
