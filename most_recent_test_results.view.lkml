
view: most_recent_test_results {
  derived_table: {
    sql: with models_list as (
        SELECT
            max(date(generated_at)) as max_date
        FROM "ELEMENTARY"."MODEL_RUN_RESULTS"  AS models
      )
      ,
      models as (
      select
        *
      FROM "ELEMENTARY"."MODEL_RUN_RESULTS"  AS models
      inner join models_list
      on date(generated_at) = models_list.max_date
      ),
      test_list as (
        SELECT
            max(date(detected_at)) as max_date
        FROM "ELEMENTARY"."ELEMENTARY_TEST_RESULTS"  AS tests
      )
      ,
      tests as (
      select *
      FROM "ELEMENTARY"."ELEMENTARY_TEST_RESULTS"  AS tests
      inner join test_list
      on date(detected_at) = test_list.max_date
      )
      select
      models.name,
      elementary_test_results."STATUS"  AS "elementary_test_results.status"
      from models
      left join tests  AS elementary_test_results
      on models.name = elementary_test_results.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: elementary_test_results_status {
    type: string
    sql: ${TABLE}."elementary_test_results.status" ;;
  }

  set: detail {
    fields: [
        name,
  elementary_test_results_status
    ]
  }
}
