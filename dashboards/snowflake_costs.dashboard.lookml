- dashboard: snowflake_costs
  title: Snowflake Costs
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ov1nmD566JCWz0fkrVBGxC
  elements:
  - title: Query Cost Last 30 Days
    name: Query Cost Last 30 Days
    model: block_snowflake_usage_v2
    explore: query_cost_last_30_days_view
    type: looker_grid
    fields: [query_cost_last_30_days_view.query_signature, query_cost_last_30_days_view.num_executions,
      query_cost_last_30_days_view.avg_execution_time_s, query_cost_last_30_days_view.total_cost_last_30_d,
      query_cost_last_30_days_view.estimated_annual_cost]
    sorts: [query_cost_last_30_days_view.query_signature]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    series_types: {}
    show_null_points: true
    listen: {}
    row: 8
    col: 0
    width: 20
    height: 10
  - title: Monthly Spend per Warehouse
    name: Monthly Spend per Warehouse
    model: block_snowflake_usage_v2
    explore: daily_spend
    type: looker_column
    fields: [daily_spend.date_month, daily_spend.warehouse_name, daily_spend.total_spend]
    filters: {}
    sorts: [daily_spend.date_month desc]
    limit: 500
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen:
      Service: daily_spend.service
    row: 0
    col: 0
    width: 14
    height: 8
  filters:
  - name: Service
    title: Service
    type: field_filter
    default_value: Compute,Adj For Incl Cloud Services,Cloud Services
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: block_snowflake_usage_v2
    explore: daily_spend
    listens_to_filters: []
    field: daily_spend.service
