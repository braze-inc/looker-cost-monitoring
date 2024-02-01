include: "/views/growth_observability_elementary/*.view"
include: "/views/data_quality_scorecards/*.view"

explore: growth_elementary_test_results {
  # hidden: yes
}

explore: growth_model_run_results {
  # hidden: yes
}

explore: elementary_test_results {
  # hidden: yes
}

explore: model_run_results {
  # hidden: yes
}

explore: health_score_accuracy {
  # hidden: yes
}

explore: health_score_coverage {
  # hidden: yes
}

explore: health_score_metadata {
  # hidden: yes
}



explore: dbt_tests {}
