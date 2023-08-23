- dashboard: weekly_dbt_health_report
  title: Weekly Dbt Health Report
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  description: ''
  preferred_slug: 1jpfNJhtlddyuxKOClohsS
  elements:
  - title: Average Model Run Time
    name: Average Model Run Time
    model: observability_elementary
    explore: model_run_results
    type: looker_column
    fields: [model_run_results.name, average_of_execution_time_secs]
    sorts: [average_of_execution_time_secs desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: Filtered model_run_results.average_execution_time
      based_on: model_run_results.average_execution_time
      _kind_hint: measure
      measure: filtered_model_run_resultsaverage_execution_time
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Execution Time (Secs)
      based_on: model_run_results.execution_time
      _kind_hint: measure
      measure: average_of_execution_time_secs
      type: average
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: model_run_results.average_execution_time,
            id: model_run_results.average_execution_time, name: Average Execution
              Time}], showLabels: true, showValues: true, valueFormat: '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 8
    width: 12
    height: 7
  - title: Unique tests executions
    name: Unique tests executions
    model: observability_elementary
    explore: elementary_test_results
    type: looker_area
    fields: [elementary_test_results.detected_date, elementary_test_results.status,
      count_of_table_name_test_name]
    pivots: [elementary_test_results.status]
    sorts: [elementary_test_results.status, elementary_test_results.detected_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: concat(${elementary_test_results.table_name},"_", ${elementary_test_results.test_short_name})
      label: Table Name + Test Name
      value_format:
      value_format_name:
      dimension: table_name_test_name
      _kind_hint: dimension
      _type_hint: string
    - measure: count_of_status
      based_on: elementary_test_results.status
      expression: ''
      label: Count of Status
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_table_name_test_name
      based_on: table_name_test_name
      expression: ''
      label: Count of Table Name + Test Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    row: 0
    col: 0
    width: 8
    height: 7
  - title: Test Failures
    name: Test Failures
    model: observability_elementary
    explore: elementary_test_results
    type: looker_area
    fields: [elementary_test_results.created_date, count_of_test_sub_type]
    fill_fields: [elementary_test_results.created_date]
    filters:
      elementary_test_results.status: fail
    sorts: [elementary_test_results.created_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_test_sub_type
      based_on: elementary_test_results.test_sub_type
      expression: ''
      label: Count of Test Sub Type
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 7
    col: 0
    width: 8
    height: 6
