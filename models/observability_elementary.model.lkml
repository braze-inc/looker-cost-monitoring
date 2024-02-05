connection: "sf_brazegrowtheast_bi_dwh_prod"

include: "/views/growth_observability_elementary/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard
# include: "/views/observability_elementary_ccep/*.view.lkml"
include: "/explores/growth_observability.explore"
include: "/dashboards/*.dashboard.lookml"


explore: dbt_models {
  join: dbt_tests {
    relationship: many_to_many
    sql_on: ${dbt_models.unique_id} = ${dbt_tests.parent_model_unique_id} ;;
  }
}

explore: dbt_monitored_tables {}
