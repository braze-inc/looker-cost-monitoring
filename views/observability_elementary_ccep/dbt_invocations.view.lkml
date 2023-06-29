# The name of this view in Looker is "Dbt Invocations"
view: dbt_invocations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "BRAZE_CAMPAIGN_CANVAS_ELEMENTARY"."DBT_INVOCATIONS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cause" in Explore.

  dimension: cause {
    type: string
    sql: ${TABLE}."CAUSE" ;;
  }

  dimension: cause_category {
    type: string
    sql: ${TABLE}."CAUSE_CATEGORY" ;;
  }

  dimension: command {
    type: string
    sql: ${TABLE}."COMMAND" ;;
  }

  dimension: dbt_user {
    type: string
    sql: ${TABLE}."DBT_USER" ;;
  }

  dimension: dbt_version {
    type: string
    sql: ${TABLE}."DBT_VERSION" ;;
  }

  dimension: elementary_version {
    type: string
    sql: ${TABLE}."ELEMENTARY_VERSION" ;;
  }

  dimension: env {
    type: string
    sql: ${TABLE}."ENV" ;;
  }

  dimension: env_id {
    type: string
    sql: ${TABLE}."ENV_ID" ;;
  }

  dimension: full_refresh {
    type: yesno
    sql: ${TABLE}."FULL_REFRESH" ;;
  }

  dimension: generated_at {
    type: string
    sql: ${TABLE}."GENERATED_AT" ;;
  }

  dimension: git_sha {
    type: string
    sql: ${TABLE}."GIT_SHA" ;;
  }

  dimension: invocation_id {
    type: string
    sql: ${TABLE}."INVOCATION_ID" ;;
  }

  dimension: invocation_vars {
    type: string
    sql: ${TABLE}."INVOCATION_VARS" ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}."JOB_ID" ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}."JOB_NAME" ;;
  }

  dimension: job_run_id {
    type: string
    sql: ${TABLE}."JOB_RUN_ID" ;;
  }

  dimension: orchestrator {
    type: string
    sql: ${TABLE}."ORCHESTRATOR" ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}."PROJECT_ID" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: pull_request_id {
    type: string
    sql: ${TABLE}."PULL_REQUEST_ID" ;;
  }

  dimension: run_completed_at {
    type: string
    sql: ${TABLE}."RUN_COMPLETED_AT" ;;
  }

  dimension: run_started_at {
    type: string
    sql: ${TABLE}."RUN_STARTED_AT" ;;
  }

  dimension: selected {
    type: string
    sql: ${TABLE}."SELECTED" ;;
  }

  dimension: target_database {
    type: string
    sql: ${TABLE}."TARGET_DATABASE" ;;
  }

  dimension: target_name {
    type: string
    sql: ${TABLE}."TARGET_NAME" ;;
  }

  dimension: target_profile_name {
    type: string
    sql: ${TABLE}."TARGET_PROFILE_NAME" ;;
  }

  dimension: target_schema {
    type: string
    sql: ${TABLE}."TARGET_SCHEMA" ;;
  }

  dimension: threads {
    type: number
    sql: ${TABLE}."THREADS" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_threads {
    type: sum
    sql: ${threads} ;;  }
  measure: average_threads {
    type: average
    sql: ${threads} ;;  }

  dimension: vars {
    type: string
    sql: ${TABLE}."VARS" ;;
  }

  dimension: yaml_selector {
    type: string
    sql: ${TABLE}."YAML_SELECTOR" ;;
  }
  measure: count {
    type: count
    drill_fields: [target_name, target_profile_name, job_name, project_name]
  }
}
