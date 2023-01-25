# Define the database connection to be used for this model.
connection: "braze_data_services_cost_attribution"

# include all the views
# include: "/views/snowflake_cost_attribution/*.view"
include: "/views/snowflake_cost_attribution/query_history_enriched.view"
include: "/views/snowflake_cost_attribution/query_cost_last_30_days_view.view"
include: "/explores/*.explore"
include: "/dashboards/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: cost_attribution_snowflake_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cost_attribution_snowflake_default_datagroup
