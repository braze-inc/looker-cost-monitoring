include: "/views/observability_elementary_ccep/*.view"

explore: dbt_tests {
  # hidden: yes
}

explore: elementary_test_results {
  # hidden: yes
}

explore: model_run_results {
  # hidden: yes
}
