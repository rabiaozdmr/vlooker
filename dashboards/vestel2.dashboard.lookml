---
- dashboard: vestel_nova_dashboard
  title: Vestel Nova Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: MloIFX68xEd5zuVcT13Zt5
  elements:
  - title: Active Devices by Country
    name: Active Devices by Country
    model: vestel_nova
    explore: devices
    type: looker_google_map
    fields: [devices.country, devices.count_devices]
    sorts: [devices.country]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    map: usa
    map_projection: ''
    quantize_colors: false
    color_application: undefined
    listen: {}
    row: 7
    col: 8
    width: 8
    height: 6
  - title: Channel watch time by brand
    name: Channel watch time by brand
    model: vestel_nova
    explore: channel_duration
    type: looker_pie
    fields: [channel_duration.total_time_spent, channel_duration.brand]
    sorts: [channel_duration.brand, channel_duration.total_time_spent desc]
    limit: 10
    column_limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    start_angle: -3
    color_application: undefined
    series_labels: {}
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    defaults_version: 1
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
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    up_color: false
    down_color: false
    total_color: false
    map: usa
    map_projection: ''
    quantize_colors: false
    listen: {}
    row: 7
    col: 0
    width: 8
    height: 6
  - title: Channel watch time by country
    name: Channel watch time by country
    model: vestel_nova
    explore: channel_duration
    type: looker_pie
    fields: [channel_duration.country, channel_duration.total_time_spent]
    sorts: [channel_duration.total_time_spent desc]
    limit: 10
    column_limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    start_angle: -3
    series_labels: {}
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    defaults_version: 1
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
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 7
    col: 16
    width: 8
    height: 6
  - title: Countries
    name: Countries
    model: vestel_nova
    explore: devices
    type: looker_wordcloud
    fields: [devices.country, devices.count]
    sorts: [devices.count desc]
    limit: 50
    column_limit: 50
    total: true
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Worldwide Total Active Device Count
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    series_labels: {}
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    show_null_points: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    interpolation: linear
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 5
  - title: Distribution of brand count by country
    name: Distribution of brand count by country
    model: vestel_nova
    explore: devices
    type: looker_pie
    fields: [devices.country, devices.brand_count]
    sorts: [devices.brand_count desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: count(${devices.brand})
      label: Brand_count
      value_format:
      value_format_name:
      dimension: brand_count
      _kind_hint: dimension
      _type_hint: number
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    series_labels: {}
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    defaults_version: 1
    listen: {}
    row: 19
    col: 8
    width: 8
    height: 6
  - title: Distribution of device count by brand
    name: Distribution of device count by brand
    model: vestel_nova
    explore: devices
    type: looker_grid
    fields: [devices.count, devices.brand]
    sorts: [devices.count desc 0]
    limit: 10
    column_limit: 50
    total: true
    show_view_names: true
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Worldwide Total Active Device Count
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    series_labels: {}
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 13
    col: 8
    width: 8
    height: 6
  - title: Distribution of device count by brand 2
    name: Distribution of device count by brand 2
    model: vestel_nova
    explore: devices
    type: looker_pie
    fields: [devices.count, devices.brand]
    sorts: [devices.count desc 0]
    limit: 10
    column_limit: 50
    total: true
    value_labels: labels
    label_type: labVal
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Worldwide Total Active Device Count
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    inner_radius: 50
    series_labels: {}
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    show_null_points: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    interpolation: linear
    listen: {}
    row: 13
    col: 0
    width: 8
    height: 6
  - title: Distribution of device count by country
    name: Distribution of device count by country
    model: vestel_nova
    explore: devices
    type: looker_pie
    fields: [devices.country, devices.brand_count]
    sorts: [devices.brand_count desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: count(${devices.brand})
      label: Brand_count
      value_format:
      value_format_name:
      dimension: brand_count
      _kind_hint: dimension
      _type_hint: number
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    series_labels: {}
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    defaults_version: 1
    listen: {}
    row: 13
    col: 16
    width: 8
    height: 6
  - title: DW Program usage
    name: DW Program usage
    model: vestel_nova
    explore: dw_weekly_program_usage
    type: single_value
    fields: [dw_weekly_program_usage.total_usage_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: DW Program usage
    defaults_version: 1
    listen: {}
    row: 5
    col: 4
    width: 4
    height: 2
  - title: TD Program usage
    name: TD Program usage
    model: vestel_nova
    explore: td_weekly_program_usage
    type: single_value
    fields: [td_weekly_program_usage.total_usage_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: TD Program usage
    defaults_version: 1
    listen: {}
    row: 5
    col: 0
    width: 4
    height: 2
  - title: TV App click count by brand
    name: TV App click count by brand
    model: vestel_nova
    explore: tv_app_usage
    type: looker_column
    fields: [tv_app_usage.click_count_m, tv_app_usage.brand]
    sorts: [tv_app_usage.click_count_m desc]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: 6dda4f8b-4e73-4e50-8760-eb378041ce07
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    series_labels: {}
    color_range: ["#81BE56", "#CCC54B", "#55A3B3", "#F9CB67", "#80CABB", "#FCA33D",
      "#6877A4", "#7C478E", "#F57237", "#D14242", "#CD3B8A", "#AF71CB"]
    color_by: root
    show_null_points: false
    value_format_override: ''
    show_percent: true
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 25
    col: 16
    width: 8
    height: 6
  - title: TV App click count by country
    name: TV App click count by country
    model: vestel_nova
    explore: tv_app_usage
    type: looker_column
    fields: [tv_app_usage.country, tv_app_usage.click_count_m]
    sorts: [tv_app_usage.click_count_m desc]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    color_range: ["#81BE56", "#CCC54B", "#55A3B3", "#F9CB67", "#80CABB", "#FCA33D",
      "#6877A4", "#7C478E", "#F57237", "#D14242", "#CD3B8A", "#AF71CB"]
    color_by: root
    show_null_points: false
    value_format_override: ''
    show_percent: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 19
    col: 16
    width: 8
    height: 6
  - title: TV App click count by country Sunburst Chart
    name: TV App click count by country Sunburst Chart
    model: vestel_nova
    explore: tv_app_usage
    type: marketplace_viz_sunburst::sunburst-marketplace
    fields: [tv_app_usage.country, tv_app_usage.click_count_m]
    sorts: [tv_app_usage.click_count_m desc]
    limit: 10
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    color_range: ["#81BE56", "#CCC54B", "#55A3B3", "#F9CB67", "#80CABB", "#FCA33D",
      "#6877A4", "#7C478E", "#F57237", "#D14242", "#CD3B8A", "#AF71CB"]
    color_by: root
    show_null_points: false
    value_format_override: ''
    show_percent: true
    defaults_version: 0
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
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 19
    col: 0
    width: 8
    height: 6
  - title: TV App Total Click
    name: TV App Total Click
    model: vestel_nova
    explore: tv_app_usage
    type: single_value
    fields: [tv_app_usage.click_count_sum]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: TV App Total Click
    value_format: ''
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 16
    width: 4
    height: 2
  - title: Tv App Total Time Spent
    name: Tv App Total Time Spent
    model: vestel_nova
    explore: tv_app_time_spent
    type: single_value
    fields: [tv_app_time_spent.sum_time_spent]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    single_value_title: Tv App Total Time Spent
    defaults_version: 1
    listen: {}
    row: 5
    col: 20
    width: 4
    height: 2
  - title: TV App watch time by brand
    name: TV App watch time by brand
    model: vestel_nova
    explore: tv_app_time_spent
    type: looker_column
    fields: [tv_app_time_spent.country, tv_app_time_spent.sum_time_spent]
    sorts: [tv_app_time_spent.sum_time_spent desc]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: 52550bde-5d63-4b91-9b67-2aed0fb2f505
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    font_size: 8px
    series_colors: {}
    series_labels: {}
    column_group_spacing_ratio: 0
    color_by_type: gradient
    toColor: ["#81BE56", "#CCC54B", "#55A3B3", "#F9CB67", "#80CABB", "#FCA33D", "#6877A4",
      "#7C478E", "#F57237", "#D14242", "#CD3B8A", "#AF71CB"]
    value_labels: true
    value_titles: true
    size_by: tv_app_time_spent.sum_time_spent
    color_by: tv_app_time_spent.sum_time_spent
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    label_type: labPer
    interpolation: linear
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 25
    col: 0
    width: 8
    height: 6
  - title: TV App watch time by country
    name: TV App watch time by country
    model: vestel_nova
    explore: tv_app_time_spent
    type: looker_column
    fields: [tv_app_time_spent.country, tv_app_time_spent.sum_time_spent]
    sorts: [tv_app_time_spent.sum_time_spent desc]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: 52550bde-5d63-4b91-9b67-2aed0fb2f505
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    font_size: 8px
    series_colors: {}
    series_labels: {}
    column_group_spacing_ratio: 0
    color_by_type: gradient
    toColor: ["#81BE56", "#CCC54B", "#55A3B3", "#F9CB67", "#80CABB", "#FCA33D", "#6877A4",
      "#7C478E", "#F57237", "#D14242", "#CD3B8A", "#AF71CB"]
    value_labels: true
    value_titles: true
    size_by: tv_app_time_spent.sum_time_spent
    color_by: tv_app_time_spent.sum_time_spent
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    label_type: labPer
    interpolation: linear
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 25
    col: 8
    width: 8
    height: 6
  - title: WM Program usage
    name: WM Program usage
    model: vestel_nova
    explore: wm_weekly_program_usage
    type: single_value
    fields: [wm_weekly_program_usage.usage_count_summ, wm_weekly_program_usage.device_type]
    sorts: [wm_weekly_program_usage.usage_count_summ desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: WM Program usage
    value_format: ''
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
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 8
    width: 4
    height: 2
  - title: Worldwide Total Active Device Count
    name: Worldwide Total Active Device Count
    model: vestel_nova
    explore: devices
    type: single_value
    fields: [devices.total_count_devices]
    limit: 5000
    column_limit: 50
    total: true
    dynamic_fields:
    - category: table_calculation
      expression: sum(${devices.count})
      label: sum of devices
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: sum_of_devices
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    single_value_title: Worldwide Total Active Device Count
    value_format: ''
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    series_labels: {}
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    defaults_version: 1
    listen: {}
    row: 5
    col: 12
    width: 4
    height: 2
  - title: TV App watch time by brand stacked bar chart
    name: TV App watch time by brand stacked bar chart
    model: vestel_nova
    explore: tv_app_time_spent
    type: looker_bar
    fields: [tv_app_time_spent.sum_time_spent, tv_app_time_spent.brand, tv_app_time_spent.app_name]
    pivots: [tv_app_time_spent.app_name]
    sorts: [tv_app_time_spent.app_name, tv_app_time_spent.sum_time_spent desc 0]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: 52550bde-5d63-4b91-9b67-2aed0fb2f505
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    font_size: 8px
    series_colors: {}
    series_labels: {}
    column_group_spacing_ratio: 0
    color_by_type: gradient
    toColor: ["#81BE56", "#CCC54B", "#55A3B3", "#F9CB67", "#80CABB", "#FCA33D", "#6877A4",
      "#7C478E", "#F57237", "#D14242", "#CD3B8A", "#AF71CB"]
    value_labels: true
    value_titles: true
    size_by: tv_app_time_spent.sum_time_spent
    color_by: tv_app_time_spent.sum_time_spent
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    label_type: labPer
    interpolation: linear
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 31
    col: 16
    width: 8
    height: 6
  - title: TV App watch time by country stacked bar chart
    name: TV App watch time by country stacked bar chart
    model: vestel_nova
    explore: tv_app_time_spent
    type: looker_bar
    fields: [tv_app_time_spent.country, tv_app_time_spent.sum_time_spent, tv_app_time_spent.app_name]
    pivots: [tv_app_time_spent.app_name]
    sorts: [tv_app_time_spent.app_name, tv_app_time_spent.sum_time_spent desc 0]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: 52550bde-5d63-4b91-9b67-2aed0fb2f505
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    font_size: 8px
    series_colors: {}
    series_labels: {}
    column_group_spacing_ratio: 0
    color_by_type: gradient
    toColor: ["#81BE56", "#CCC54B", "#55A3B3", "#F9CB67", "#80CABB", "#FCA33D", "#6877A4",
      "#7C478E", "#F57237", "#D14242", "#CD3B8A", "#AF71CB"]
    value_labels: true
    value_titles: true
    size_by: tv_app_time_spent.sum_time_spent
    color_by: tv_app_time_spent.sum_time_spent
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    label_type: labPer
    interpolation: linear
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 31
    col: 0
    width: 16
    height: 6
