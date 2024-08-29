---
- dashboard: nova_dashboard
  title: Nova Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  background_color: "#F6F6F8"
  preferred_slug: bcln7QCImCGDmYPFi27mwa
  elements:
  - title: Countries
    name: Countries
    model: vestel_nova
    explore: tables
    background_color: "#FFFFFF"
    inner_background_color: "#F9F9F9"
    border_radius: 20
    type: looker_wordcloud
    fields: [tables.country, tables.count]
    filters:
      tables.table: devices
    sorts: [tables.count desc]
    limit: 50
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    rotation: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 1
    title_hidden: true
    listen: {}
    row: 3
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Nova Dashboard"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 1
    col: 5
    width: 5
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "![Alt Text](https://statics.vestel.com.tr/contents/images/archive/vestel-kirmizi-logo-buyuk1(1).png)"
    row: 0
    col: 0
    width: 5
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 1
    col: 10
    width: 5
    height: 1
  - type: button
    name: button_329
    rich_content_json: '{"text":"Dark Mode","description":"","newTab":true,"alignment":"right","size":"small","style":"FILLED","color":"#80868B"}'
    row: 0
    col: 5
    width: 19
    height: 1
  - title: TD Program usage
    name: TD Program usage
    model: vestel_nova
    explore: tables
    type: single_value
    fields: [tables.total_usage_count]
    filters:
      tables.table: '"td_weekly_program_usage"'
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
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 0
    width: 4
    height: 3
  - title: DW Program usage
    name: DW Program usage
    model: vestel_nova
    explore: tables
    type: single_value
    fields: [tables.total_usage_count]
    filters:
      tables.table: '"dw_weekly_program_usage"'
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
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 4
    width: 4
    height: 3
  - title: WM Program usage
    name: WM Program usage
    model: vestel_nova
    explore: tables
    type: single_value
    fields: [tables.total_usage_count]
    filters:
      tables.table: '"wm_weekly_program_usage"'
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
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 8
    width: 4
    height: 3
  - title: Worldwide Total Active Device Count
    name: Worldwide Total Active Device Count
    model: vestel_nova
    explore: tables
    type: single_value
    fields: [tables.total_count_devices]
    filters:
      tables.table: devices
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
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 12
    width: 4
    height: 3
  - title: TV App Total Click
    name: TV App Total Click
    model: vestel_nova
    explore: tables
    type: single_value
    fields: [tables.click_count_sum]
    filters:
      tables.table: '"tv_app_usage"'
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
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 16
    width: 4
    height: 3
  - title: Tv App Total Time Spent
    name: Tv App Total Time Spent
    model: vestel_nova
    explore: tables
    type: single_value
    fields: [tables.sum_time_spent]
    filters:
      tables.table: '"tv_app_time_spent"'
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
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 20
    width: 4
    height: 3
  - title: Channel Watch Time by Brand
    name: Channel Watch Time by Brand
    model: vestel_nova
    explore: tables
    background_color: "#000000"
    inner_background_color: "#F9F9F9"
    border_radius: 20
    type: looker_pie
    fields: [tables.brand, tables.sum_time_spent]
    filters:
      tables.table: '"channel_duration"'
    sorts: [tables.sum_time_spent desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 13
    col: 0
    width: 7
    height: 8
  - title: Channel Watch Time by Country
    name: Channel Watch Time by Country
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.sum_time_spent, tables.country]
    filters:
      tables.table: '"channel_duration"'
    sorts: [tables.sum_time_spent desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 13
    col: 17
    width: 7
    height: 8
  - title: Active Devices by Country
    name: Active Devices by Country
    model: vestel_nova
    explore: tables
    type: looker_google_map
    fields: [tables.location, tables.country, tables.count_devices]
    filters:
      tables.table: devices
    sorts: [tables.count_devices desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map: world
    map_projection: ''
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 0
    listen: {}
    row: 13
    col: 7
    width: 10
    height: 8
  - title: Active Devices by Country
    name: Active Devices by Country (2)
    model: vestel_nova
    explore: tables
    type: looker_geo_coordinates
    fields: [tables.location, tables.country, tables.count_devices]
    filters:
      tables.table: devices
    sorts: [tables.count_devices desc]
    limit: 500
    column_limit: 50
    map: world
    map_projection: ''
    show_view_names: true
    point_color: "#F9ED32"
    map_color: "#4E5E65"
    hidden_fields: [tables.country]
    hidden_points_if_no: []
    series_labels: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 91
    col: 0
    width: 8
    height: 6
  - title: Distribution of Device Count by Brand
    name: Distribution of Device Count by Brand
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.brand, tables.total_count_devices]
    filters:
      tables.table: devices
    sorts: [tables.total_count_devices desc 0]
    limit: 7
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: count-temperature
      palette_id: count-temperature-categorical-0
      options:
        steps: 5
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
    listen: {}
    row: 21
    col: 16
    width: 8
    height: 7
  - title: Distribution of Device Count by Brand 2
    name: Distribution of Device Count by Brand 2
    model: vestel_nova
    explore: tables
    type: looker_grid
    fields: [tables.brand, tables.total_count_devices]
    filters:
      tables.table: devices
    sorts: [tables.total_count_devices desc 0]
    limit: 100
    column_limit: 50
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      tables.total_count_devices:
        is_active: true
        palette:
          palette_id: f9548ea5-80aa-bd25-3667-c69fbb99a41a
          collection_id: error
          custom_colors:
          - "#FF3600"
          - "#FF9B6A"
          - "#FFF2ED"
    value_labels: labels
    label_type: labPer
    inner_radius: 50
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
    listen: {}
    row: 21
    col: 8
    width: 8
    height: 7
  - title: Distribution of Device Count by Country
    name: Distribution of Device Count by Country
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.country, tables.brand_count]
    filters:
      tables.table: devices
    sorts: [tables.brand_count desc]
    limit: 10
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: count-temperature
      palette_id: count-temperature-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      tables.total_count_devices:
        is_active: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen: {}
    row: 21
    col: 0
    width: 8
    height: 7
  - title: TV App Click Count by Country
    name: TV App Click Count by Country
    model: vestel_nova
    explore: tables
    type: marketplace_viz_sunburst::sunburst-marketplace
    fields: [tables.country, tables.click_count_sum]
    filters:
      tables.table: '"tv_app_usage"'
    sorts: [tables.click_count_sum desc 0]
    limit: 6
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_range: ["#FF3600", "#FF5027", "#FF6A48", "#FF7A39", "#FF8C5F", "#FF9B6A",
      "#FFBD9C", "#FFD0BB", "#FFDFD2", "#FFF2ED"]
    color_by: root
    show_null_points: false
    value_format_override: 0.0%
    show_percent: true
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: count-temperature
      palette_id: count-temperature-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      tables.total_count_devices:
        is_active: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen: {}
    row: 28
    col: 0
    width: 8
    height: 7
  - title: Distribution of Device Count by Country
    name: Distribution of Device Count by Country (2)
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.country, tables.total_count_devices]
    filters:
      tables.table: devices
    sorts: [tables.total_count_devices desc 0]
    limit: 10
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: count-temperature
      palette_id: count-temperature-categorical-0
      options:
        steps: 5
    series_labels: {}
    color_range: ["#FF3600", "#FF5027", "#FF6A48", "#FF7A39", "#FF8C5F", "#FF9B6A",
      "#FFBD9C", "#FFD0BB", "#FFDFD2", "#FFF2ED"]
    color_by: root
    show_null_points: false
    value_format_override: 0.0%
    show_percent: true
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      tables.total_count_devices:
        is_active: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    listen: {}
    row: 28
    col: 8
    width: 8
    height: 7
  - title: TV App Click Count by Country
    name: TV App Click Count by Country (2)
    model: vestel_nova
    explore: tables
    type: looker_column
    fields: [tables.country, tables.click_count_sum]
    filters:
      tables.table: '"tv_app_usage"'
    sorts: [tables.click_count_sum desc 0]
    limit: 10
    column_limit: 50
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
    color_application:
      collection_id: count-temperature
      palette_id: count-temperature-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: false
    series_labels: {}
    x_axis_label_rotation: 270
    hidden_fields: []
    hidden_points_if_no: []
    color_range: ["#FF3600", "#FF5027", "#FF6A48", "#FF7A39", "#FF8C5F", "#FF9B6A",
      "#FFBD9C", "#FFD0BB", "#FFDFD2", "#FFF2ED"]
    color_by: root
    show_null_points: false
    value_format_override: 0.0%
    show_percent: true
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      tables.total_count_devices:
        is_active: true
    table_theme: transparent
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen: {}
    row: 28
    col: 16
    width: 8
    height: 7
  - title: TV App Watch Time by Country
    name: TV App Watch Time by Country
    model: vestel_nova
    explore: tables
    type: looker_column
    fields: [tables.country, tables.sum_time_spent]
    filters:
      tables.table: '"tv_app_time_spent"'
    sorts: [tables.sum_time_spent desc 0]
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
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels: {}
    advanced_vis_config: |-
      {
        "chart": {
          "type": "column", // Ensure vertical bars
          "borderRadius": 5, // Rounded corners for the bars
          "backgroundColor": "#ffffff"
        },
        "title": {
          "text": "TV App Watch Time by Country"
        },
        "xAxis": {
          "categories": ["United Kingdom", "Turkey", "Germany", "France", "Greece", "Romania", "Spain", "Ireland", "Italy", "Czech Republic"], // Use your exact country names
          "title": {
            "text": "Country"
          },
          "labels": {
            "rotation": -45,
            "align": "right"
          }
        },
        "yAxis": {
          "min": 0,
          "title": {
            "text": "Sum Time Spent"
          },
          "gridLineWidth": 0.5,
          "gridLineColor": "#e6e6e6"
        },
        "plotOptions": {
          "series": {
            "pointPadding": 0.2,
            "groupPadding": 0.1,
            "borderRadius": 5 // Rounded corners
          },
          "column": {
            "dataLabels": {
              "enabled": true,
              "inside": false,
              "format": "{y:,0}" // Format large numbers with commas
            }
          }
        },
        "series": [{
          "name": "Sum Time Spent",
          "data": [{
              "y": 156068544,
              "color": "#006838"
            }, // United Kingdom, dark green for the highest
            {
              "y": 113913577,
              "color": "#8DC63F"
            }, // Turkey
            {
              "y": 34849757,
              "color": "#8DC63F"
            }, // Germany
            {
              "y": 18814563,
              "color": "#8DC63F"
            }, // France
            {
              "y": 13708074,
              "color": "#8DC63F"
            }, // Greece
            {
              "y": 13319449,
              "color": "#8DC63F"
            }, // Romania
            {
              "y": 10723901,
              "color": "#8DC63F"
            }, // Spain
            {
              "y": 9885759,
              "color": "#8DC63F"
            }, // Ireland
            {
              "y": 8495009,
              "color": "#8DC63F"
            }, // Italy
            {
              "y": 7453149,
              "color": "#8DC63F"
            } // Czech Republic
          ]
        }],
        "legend": {
          "enabled": false
        },
        "tooltip": {
          "headerFormat": "<b>{point.key}</b><br>",
          "pointFormat": "Time Spent: {point.y:,0}" // Add comma separators in the tooltip
        }
      }
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    listen: {}
    row: 35
    col: 0
    width: 8
    height: 8
  - title: TV App Watch Time by Brand
    name: TV App Watch Time by Brand
    model: vestel_nova
    explore: tables
    type: looker_column
    fields: [tables.brand, tables.sum_time_spent]
    filters:
      tables.table: '"tv_app_time_spent"'
    sorts: [tables.sum_time_spent desc 0]
    limit: 10
    column_limit: 50
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
    point_style: circle
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
      collection_id: watch-time-energy
      palette_id: watch-time-energy-sequential-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      tables.sum_time_spent: "#39B54A"
    series_labels: {}
    label_rotation: 280
    advanced_vis_config: |-
      {
        "chart": {
          "type": "column",  // Vertical bars
          "borderRadius": 20,  // Increase the rounding for a more pronounced effect
          "backgroundColor": "#ffffff"
        },
        "title": {
          "text": "TV App Watch Time by Brand"
        },
        "xAxis": {
          "categories": ["Brand 1", "Brand 2", "Brand 3", "Brand 4", "Brand 5", "Brand 6", "Brand 7", "Brand 9", "Brand 11", "Brand 16"],  // Randomized order
          "title": {
            "text": "Brand"
          },
          "labels": {
            "rotation": -90,  // Rotate brand names to be vertical
            "align": "right"
          }
        },
        "yAxis": {
          "min": 0,
          "title": {
            "text": "Sum Time Spent"
          },
          "gridLineWidth": 0.5,
          "gridLineColor": "#e6e6e6"
        },
        "plotOptions": {
          "series": {
            "pointPadding": 0.05,  // Make bars thinner
            "groupPadding": 0.02,  // Reduce space between groups of bars even more
            "borderRadius": 20  // Rounded corners for the bars
          },
          "column": {
            "dataLabels": {
              "enabled": true,
              "inside": false,
              "format": "{y:,0}"  // Format large numbers with commas
            }
          }
        },
        "series": [{
          "name": "Sum Time Spent",
          "colorByPoint": true,
          "data": [{
              "y": 58930329,
              "color": "#8DC63F"
            },  // Randomized values
            {
              "y": 83807015,
              "color": "#006838"
            },  // Darker green for the highest value
            {
              "y": 56462437,
              "color": "#8DC63F"
            },
            {
              "y": 26753664,
              "color": "#8DC63F"
            },
            {
              "y": 14095616,
              "color": "#8DC63F"
            },
            {
              "y": 26753664,
              "color": "#8DC63F"
            },
            {
              "y": 15599605,
              "color": "#8DC63F"
            },
            {
              "y": 12886703,
              "color": "#8DC63F"
            },
            {
              "y": 9889315,
              "color": "#8DC63F"
            },
            {
              "y": 10083161,
              "color": "#8DC63F"
            }
          ]
        }],
        "legend": {
          "enabled": false
        },
        "tooltip": {
          "headerFormat": "<b>{point.key}</b><br>",
          "pointFormat": "Time Spent: {point.y:,0}"  // Add comma separators in the tooltip
        }
      }
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_range: ["#FF3600", "#FF5027", "#FF6A48", "#FF7A39", "#FF8C5F", "#FF9B6A",
      "#FFBD9C", "#FFD0BB", "#FFDFD2", "#FFF2ED"]
    color_by: root
    show_null_points: false
    value_format_override: 0.0%
    show_percent: true
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      tables.total_count_devices:
        is_active: true
    table_theme: transparent
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    listen: {}
    row: 35
    col: 8
    width: 8
    height: 8
  - title: TV App Click Count by Brand
    name: TV App Click Count by Brand
    model: vestel_nova
    explore: tables
    type: looker_column
    fields: [tables.brand, tables.click_count_sum]
    filters:
      tables.table: '"tv_app_usage"'
    sorts: [tables.click_count_sum desc 0]
    limit: 10
    column_limit: 50
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
    point_style: circle
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
      collection_id: count-temperature
      palette_id: count-temperature-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      tables.sum_time_spent: "#39B54A"
    series_labels: {}
    label_rotation: 280
    advanced_vis_config: |-
      {
        "chart": {
          "type": "column",  // Vertical bars
          "borderRadius": 10,  // Rounded corners for the bars
          "backgroundColor": "#ffffff"
        },
        "title": {
          "text": "TV App Click Count by Brand"
        },
        "xAxis": {
          "categories": ["Brand 1", "Brand 2", "Brand 3", "Brand 4", "Brand 6", "Brand 7", "Brand 9", "Brand 11", "Brand 13", "Brand 16"],  // Ordered by brand number
          "title": {
            "text": "Brand"
          },
          "labels": {
            "rotation": 0,
            "align": "center"
          }
        },
        "yAxis": {
          "min": 0,
          "title": {
            "text": "Click Count Sum"
          },
          "gridLineWidth": 0.5,
          "gridLineColor": "#e6e6e6"
        },
        "plotOptions": {
          "series": {
            "pointPadding": 0.1,  // Narrower bars
            "groupPadding": 0.05,  // Less space between groups of bars
            "borderRadius": 10  // Rounded corners for the bars
          },
          "column": {
            "dataLabels": {
              "enabled": true,
              "inside": false,
              "format": "{y:,0}"  // Format large numbers with commas
            }
          }
        },
        "series": [{
          "name": "Click Count Sum",
          "colorByPoint": true,
          "data": [
            { "y": 21125373, "color": "#FF5027" },  // Brand 1, light red
            { "y": 27207848, "color": "#FF3600" },  // Brand 2, dark red (most clicks)
            { "y": 5760851, "color": "#FF5027" },   // Brand 3
            { "y": 7992920, "color": "#FF5027" },   // Brand 4
            { "y": 6006007, "color": "#FF5027" },   // Brand 6
            { "y": 6006007, "color": "#FF5027" },   // Brand 7
            { "y": 5760851, "color": "#FF5027" },   // Brand 9
            { "y": 5760851, "color": "#FF5027" },   // Brand 11
            { "y": 5760851, "color": "#FF5027" },   // Brand 13
            { "y": 5760851, "color": "#FF5027" }    // Brand 16
          ]
        }],
        "legend": {
          "enabled": false
        },
        "tooltip": {
          "headerFormat": "<b>{point.key}</b><br>",
          "pointFormat": "Click Count: {point.y:,0}"  // Add comma separators in the tooltip
        }
      }
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_range: ["#FF3600", "#FF5027", "#FF6A48", "#FF7A39", "#FF8C5F", "#FF9B6A",
      "#FFBD9C", "#FFD0BB", "#FFDFD2", "#FFF2ED"]
    color_by: root
    show_null_points: false
    value_format_override: 0.0%
    show_percent: true
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      tables.total_count_devices:
        is_active: true
    table_theme: transparent
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    listen: {}
    row: 35
    col: 16
    width: 8
    height: 8
  - title: TV App Watch Time by Country Stacked Bar Chart
    name: TV App Watch Time by Country Stacked Bar Chart
    model: vestel_nova
    explore: tables
    type: looker_bar
    fields: [tables.app_name, tables.sum_time_spent, tables.country]
    pivots: [tables.app_name]
    filters:
      tables.table: '"tv_app_time_spent"'
    sorts: [tables.app_name, tables.sum_time_spent desc 0]
    limit: 10
    column_limit: 50
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
    stacking: percent
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
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 43
    col: 0
    width: 16
    height: 8
  - title: TV App Watch Time by Brand Stacked Bar Chart
    name: TV App Watch Time by Brand Stacked Bar Chart
    model: vestel_nova
    explore: tables
    type: looker_bar
    fields: [tables.app_name, tables.sum_time_spent, tables.brand]
    pivots: [tables.app_name]
    filters:
      tables.table: '"tv_app_time_spent"'
    sorts: [tables.app_name, tables.sum_time_spent desc 0]
    limit: 10
    column_limit: 50
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
    stacking: normal
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
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 43
    col: 16
    width: 8
    height: 8
  - title: RF Door Open Count By Brand Stacked Bar Chart
    name: RF Door Open Count By Brand Stacked Bar Chart
    model: vestel_nova
    explore: tables
    type: looker_column
    fields: [tables.brand, tables.hour, tables.count]
    pivots: [tables.hour]
    filters:
      tables.table: '"rf_door_open"'
    sorts: [tables.hour, tables.count desc 0]
    limit: 10
    column_limit: 50
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    advanced_vis_config: |-
      {
        "chart": {
          "type": "column",
          "backgroundColor": "#ffffff"
        },
        "plotOptions": {
          "series": {
            "borderRadius": 50,  // This will make the bars more oval-shaped
            "pointPadding": 0.2,
            "groupPadding": 0.1
          }
        },
        series: [{
          name: '0'
        }, {
          name: '1'
        }, {
          name: '2'
        }, {
          name: '3'
        }, {
          name: '4'
        }, {
          name: '5'
        }, {
          name: '6'
        }, {
          name: '7'
        }, {
          name: '8'
        }, {
          name: '9'
        }, {
          name: '10'
        }, {
          name: '11'
        }, {
          name: '12'
        }, {
          name: '13'
        }, {
          name: '14'
        }, {
          name: '15'
        }, {
          name: '16'
        }, {
          name: '17'
        }, {
          name: '18'
        }, {
          name: '19'
        }, {
          name: '20'
        }, {
          name: '21'
        }, {
          name: '22'
        }, {
          name: '23'
        }]
      }
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 51
    col: 0
    width: 16
    height: 6
  - title: RF Door Open Count By Country Stacked Bar Chart
    name: RF Door Open Count By Country Stacked Bar Chart
    model: vestel_nova
    explore: tables
    type: looker_column
    fields: [tables.hour, tables.count, tables.country]
    pivots: [tables.hour]
    filters:
      tables.table: '"rf_door_open"'
    sorts: [tables.hour, tables.count desc 0]
    limit: 10
    column_limit: 50
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    advanced_vis_config: |-
      {
        "chart": {
          "type": "column",
          "backgroundColor": "#ffffff"
        },
        "plotOptions": {
          "series": {
            "borderRadius": 50,  // This will make the bars more oval-shaped
            "pointPadding": 0.2,
            "groupPadding": 0.1
          }
        },
        series: [{
          name: '0'
        }, {
          name: '1'
        }, {
          name: '2'
        }, {
          name: '3'
        }, {
          name: '4'
        }, {
          name: '5'
        }, {
          name: '6'
        }, {
          name: '7'
        }, {
          name: '8'
        }, {
          name: '9'
        }, {
          name: '10'
        }, {
          name: '11'
        }, {
          name: '12'
        }, {
          name: '13'
        }, {
          name: '14'
        }, {
          name: '15'
        }, {
          name: '16'
        }, {
          name: '17'
        }, {
          name: '18'
        }, {
          name: '19'
        }, {
          name: '20'
        }, {
          name: '21'
        }, {
          name: '22'
        }, {
          name: '23'
        }]
      }
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 57
    col: 0
    width: 16
    height: 6
  - title: AC Set Temperature By Brand
    name: AC Set Temperature By Brand
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.brand, tables.total_count_ac_set_temperature]
    filters:
      tables.table: '"ac_set_temperature"'
    sorts: [tables.total_count_ac_set_temperature desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: count-temperature
      palette_id: count-temperature-categorical-0
      options:
        steps: 5
    series_colors: {}
    advanced_vis_config: |-
      {
        "chart": {
          "type": "pie",
          "backgroundColor": "#ffffff"
        },
        "title": {
          "text": "AC Set Temperature By Brand"
        },
        "plotOptions": {
          "pie": {
            "allowPointSelect": true,
            "cursor": "pointer",
            "dataLabels": {
              "enabled": false,
              "format": "<b>{point.name}</b>: {point.percentage:.1f} %",
              "distance": -50,
              "style": {
                "color": "white"
              }
            },
            "showInLegend": true,
            "borderColor": "#ffffff", // White border between segments
            "borderWidth": 2, // Thickness of the white border
            "colors": [
              "#FF5733", "#FF6F61", "#FF7F50", "#FF8C00", "#FFA07A",
              "#FFC300", "#FFD700", "#FFE4B5", "#FA8072", "#F08080"
            ]
          }
        },
        "series": [{
          "name": "Brands",
          "colorByPoint": true,
          "data": [{
              "name": "Brand 3",
              "y": 98.71
            },
            {
              "name": "Brand 124",
              "y": 0.49
            },
            {
              "name": "Brand 4",
              "y": 0.26
            },
            {
              "name": "Brand 170",
              "y": 0.21
            },
            {
              "name": "Brand 164",
              "y": 0.18
            },
            {
              "name": "Brand 44",
              "y": 0.09
            },
            {
              "name": "Brand 125",
              "y": 0.03
            },
            {
              "name": "Brand 163",
              "y": 0.03
            }
          ]
        }],
        "tooltip": {
          "pointFormat": "{series.name}: <b>{point.percentage:.1f}%</b>"
        },
        "legend": {
          "enabled": true,
          "layout": "vertical",
          "align": "right",
          "verticalAlign": "middle",
          "itemMarginTop": 10,
          "itemMarginBottom": 10
        }
      }
    hidden_pivots: {}
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
    listen: {}
    row: 57
    col: 16
    width: 8
    height: 6
  - title: AC Set Temperature By Country
    name: AC Set Temperature By Country
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.total_count_ac_set_temperature, tables.country]
    filters:
      tables.table: '"ac_set_temperature"'
    sorts: [tables.total_count_ac_set_temperature desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    start_angle: 5
    end_angle: 5
    color_application:
      collection_id: count-temperature
      palette_id: count-temperature-categorical-0
      options:
        steps: 5
    series_colors: {}
    advanced_vis_config: |-
      {
        "chart": {
          "type": "pie",
          "backgroundColor": "#ffffff"
        },
        "title": {
          "text": "AC Set Temperature By Country"
        },
        "plotOptions": {
          "pie": {
            "allowPointSelect": true,
            "cursor": "pointer",
            "dataLabels": {
              "enabled": false // Disable data labels on the pie segments
            },
            "showInLegend": true,
            "borderColor": "#ffffff", // White border between segments
            "borderWidth": 2, // Thickness of the white border
            "colors": [
              "#FF5733", "#FF6F61", "#FF7F50", "#FF8C00", "#FFA07A",
              "#FFC300", "#FFD700", "#FFE4B5", "#FA8072", "#F08080"
            ]
          }
        },
        "tooltip": {
          "pointFormat": "{series.name}: <b>{point.percentage:.2f}%</b>"
        },
        "legend": {
          "enabled": true,
          "layout": "vertical",
          "align": "right",
          "verticalAlign": "middle",
          "itemMarginTop": 10,
          "itemMarginBottom": 10
        }
      }
    hidden_pivots: {}
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
    listen: {}
    row: 51
    col: 16
    width: 8
    height: 6
  - title: Program Usage by Country
    name: Program Usage by Country
    model: vestel_nova
    explore: tables
    type: looker_column
    fields: [tables.country, tables.total_count_oven_daily_program_usage, tables.program_17]
    pivots: [tables.program_17]
    filters:
      tables.table: '"oven_daily_program_usage"'
    sorts: [tables.program_17, tables.total_count_oven_daily_program_usage desc 0]
    limit: 500
    column_limit: 50
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
    color_application:
      collection_id: usage
      palette_id: usage-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    advanced_vis_config: |-
      {
        "chart": {
          "type": "column",
          "backgroundColor": "#ffffff"
        },
        "title": {
          "text": "Program Usage by Country"
        },
        "xAxis": {
          "categories": ["Turkey", "Moldova", "Unknown"],  // Replace with your actual categories
          "title": {
            "text": "Country"
          },
          "labels": {
            "rotation": 0,
            "align": "center"
          }
        },
        "yAxis": {
          "min": 0,
          "title": {
            "text": "Total Count"
          },
          "gridLineWidth": 0.5,
          "gridLineColor": "#e6e6e6"
        },
        "plotOptions": {
          "series": {
            "pointPadding": 0.1,  // Reduce padding for thinner bars
            "groupPadding": 0.1,  // Reduce padding between groups
            "borderRadius": 10,  // Rounded corners for bars
            "shadow": {
              "color": "#BEBEBE",  // Light shadow color for a 3D effect
              "offsetX": 0,
              "offsetY": 4,
              "opacity": 0.5,
              "width": 2
            }
          }
        },
        "series": [
          {
            "name": "Bottom",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#6a1b9a"], [1, "#8e24aa"]]
            }
          },
          {
            "name": "Conventional",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#8e24aa"], [1, "#ab47bc"]]
            }
          },
          {
            "name": "Defrost",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#ab47bc"], [1, "#ce93d8"]]
            }
          },
          {
            "name": "FanAssisted",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#d81b60"], [1, "#e91e63"]]
            }
          },
          {
            "name": "FullGrill",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#e91e63"], [1, "#f06292"]]
            }
          },
          {
            "name": "FullGrillFan",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#f06292"], [1, "#f48fb1"]]
            }
          },
          {
            "name": "GrillChicken",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#f48fb1"], [1, "#f8bbd0"]]
            }
          },
          {
            "name": "NormalCookingFinished",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#f8bbd0"], [1, "#fce4ec"]]
            }
          },
          {
            "name": "Pizza",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#e91e63"], [1, "#f06292"]]
            }
          },
          {
            "name": "Turbo",
            "color": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [[0, "#f06292"], [1, "#f48fb1"]]
            }
          }
        ],
        "tooltip": {
          "shared": true,
          "crosshairs": true
        },
        "legend": {
          "enabled": true,
          "layout": "horizontal",
          "align": "center",
          "verticalAlign": "bottom",
          "itemMarginTop": 10,
          "itemMarginBottom": 10
        }
      }
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 63
    col: 0
    width: 16
    height: 7
  - title: Program Usage by Brand
    name: Program Usage by Brand
    model: vestel_nova
    explore: tables
    type: looker_column
    fields: [tables.total_count_oven_daily_program_usage, tables.program_17, tables.brand]
    pivots: [tables.program_17]
    filters:
      tables.table: '"oven_daily_program_usage"'
    sorts: [tables.program_17, tables.total_count_oven_daily_program_usage 0]
    limit: 500
    column_limit: 50
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
    color_application:
      collection_id: usage
      palette_id: usage-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    advanced_vis_config: "{\n  \n  \"plotOptions\": {\n    \"series\": {\n      \"\
      borderRadius\": 10,  // Rounded corners for bars\n      \"pointPadding\": 0.1,\
      \  // Adjust padding for better spacing\n      \"groupPadding\": 0.1  // Adjust\
      \ padding between groups\n    }\n  },\n\n  series: [{\n    name: 'Bottom'\n\
      \  }, {\n    name: 'Conventional'\n  }, {\n    name: 'Defrost'\n  }, {\n   \
      \ name: 'FanAssisted'\n  }, {\n    name: 'FullGrill'\n  }, {\n    name: 'FullGrillFan'\n\
      \  }, {\n    name: 'GrillChicken'\n  }, {\n    name: 'NormalCookingFinished'\n\
      \  }, {\n    name: 'Pizza'\n  }, {\n    name: 'Turbo'\n  }]\n}"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 70
    col: 0
    width: 16
    height: 6
  - title: Device Error by Country
    name: Device Error by Country
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.country, tables.total_error_count]
    filters:
      tables.table: '"device_error_counts"'
    sorts: [tables.total_error_count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_labels: {}
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    defaults_version: 1
    listen: {}
    row: 63
    col: 16
    width: 8
    height: 7
  - title: Device Error Sum by Device Type
    name: Device Error Sum by Device Type
    model: vestel_nova
    explore: tables
    type: looker_bar
    fields: [tables.total_error_count, tables.device_type]
    filters:
      tables.table: '"device_error_counts"'
    sorts: [tables.total_error_count desc]
    limit: 500
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
      collection_id: error
      palette_id: error-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    series_labels: {}
    advanced_vis_config: "{\n  \n  \"chart\": {\n    \"type\": \"bar\",\n    \"backgroundColor\"\
      : \"#ffffff\"\n  },\n  \"plotOptions\": {\n    \"series\": {\n      \"borderRadius\"\
      : 20,  // Rounded corners for the bar ends\n      \"pointPadding\": 0.1,  //\
      \ Adjust padding for better spacing\n      \"groupPadding\": 0.1,  // Adjust\
      \ padding between groups\n      \"color\": \"#ED1C24\"  // Updated bar color\
      \ to #ED1C24\n    }\n  },\n  \"series\": [{\n    \"color\": \"#ED1C24\"  //\
      \ Updated bar color to #ED1C24\n  }]\n}"
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    listen: {}
    row: 70
    col: 16
    width: 8
    height: 6
  - title: The Most 10 Error Code
    name: The Most 10 Error Code
    model: vestel_nova
    explore: tables
    type: looker_area
    fields: [tables.total_error_count, tables.error_code]
    filters:
      tables.table: '"device_error_counts"'
    sorts: [tables.total_error_count desc]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: error
      palette_id: error-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: 10px
    series_colors: {}
    series_labels: {}
    label_color: ["#ED1C24"]
    swap_axes: false
    advanced_vis_config: |-
      {
        "chart": {
          "type": "areaspline",  // Keeps the chart type as areaspline
          "backgroundColor": "#ffffff"
        },
        "plotOptions": {
          "areaspline": {
            "fillColor": {
              "linearGradient": { "x1": 0, "y1": 0, "x2": 0, "y2": 1 },
              "stops": [
                [0, "#ED1C24"],
                [1, "rgba(237, 28, 36, 0.1)"]
              ]
            },
            "lineColor": "#ED1C24",
            "lineWidth": 3,
            "marker": {
              "enabled": true,
              "radius": 5,
              "lineWidth": 2,
              "lineColor": "#ED1C24",
              "fillColor": "#ffffff"
            }
          }
        },
        "series": [{
          "color": "#ED1C24",
          "dashStyle": "Solid",  // Changes the line to a solid style
          "lineWidth": 2,
          "marker": {
            "enabled": false
          }
        }]
      }
    ordering: none
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    listen: {}
    row: 76
    col: 0
    width: 16
    height: 8
  - title: Device Error by Brand
    name: Device Error by Brand
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.total_error_count, tables.brand]
    filters:
      tables.table: '"device_error_counts"'
    sorts: [tables.total_error_count desc]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: error
      palette_id: error-categorical-0
      options:
        steps: 5
    series_colors:
      Brand 3: "#ED1C24"
    series_labels: {}
    advanced_vis_config: |-
      {
        "chart": {
          "type": "pie",
          "backgroundColor": "#ffffff"
        },
        "plotOptions": {
          "pie": {
            "innerSize": "60%",
            "borderWidth": 2,
            "borderColor": "#ffffff",
            "dataLabels": {
              "enabled": false
            }
          }
        },
        "series": [
          // Your existing series data goes here
        ],
        "subtitle": {
          "text": "99.64%",
          "align": "center",
          "verticalAlign": "middle",
          "y": 30, // Adjusted to move text upwards slightly
          "x": -60,
          "style": {
            "fontSize": "24px",
            "color": "#333333",
            "fontWeight": ""
          }
        }
      }
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    legend_position: center
    font_size: 10px
    point_style: none
    show_value_labels: true
    label_density: 25
    label_color: ["#ED1C24"]
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    listen: {}
    row: 76
    col: 16
    width: 8
    height: 8
  - title: Usage Time of AC By Brand
    name: Usage Time of AC By Brand
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.brand, tables.total_duration]
    filters:
      tables.table: '"ac_duration"'
    sorts: [tables.total_duration desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: usage
      palette_id: usage-categorical-0
      options:
        steps: 5
    advanced_vis_config: |-
      {
        "chart": {
          "type": "pie",
          "backgroundColor": "#ffffff"
        },
        "plotOptions": {
          "pie": {
            "innerSize": "60%",
            "borderWidth": 2,
            "borderColor": "#ffffff",
            "dataLabels": {
              "enabled": false
            }
          }
        },
        "series": [
          // Your existing series data goes here
        ],
        "subtitle": {
          "text": "98.81%",
          "align": "center",
          "verticalAlign": "middle",
          "y": 30, // Adjusted to move text upwards slightly
          "x": -60,
          "style": {
            "fontSize": "24px",
            "color": "#333333",
            "fontWeight": ""
          }
        }
      }
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
    listen: {}
    row: 84
    col: 0
    width: 8
    height: 7
  - title: Usage Time of AC By Country
    name: Usage Time of AC By Country
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.total_duration, tables.country]
    filters:
      tables.table: '"ac_duration"'
    sorts: [tables.total_duration desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: usage
      palette_id: usage-categorical-0
      options:
        steps: 5
    advanced_vis_config: |-
      {
        "chart": {
          "type": "pie",
          "backgroundColor": "#ffffff"
        },
        "plotOptions": {
          "pie": {
            "innerSize": "60%",
            "borderWidth": 2,
            "borderColor": "#ffffff",
            "dataLabels": {
              "enabled": false
            }
          }
        },
        "series": [
          // Your existing series data goes here
        ],
        "subtitle": {
          "text": "78.81%",
          "align": "center",
          "verticalAlign": "middle",
          "y": 30, // Adjusted to move text upwards slightly
          "x": -60,
          "style": {
            "fontSize": "24px",
            "color": "#333333",
            "fontWeight": ""
          }
        }
      }
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
    listen: {}
    row: 84
    col: 8
    width: 8
    height: 7
  - title: EVC Energy Consumption by Country
    name: EVC Energy Consumption by Country
    model: vestel_nova
    explore: tables
    type: looker_pie
    fields: [tables.country, tables.total_energy]
    filters:
      tables.table: '"evc_energy"'
    sorts: [tables.total_energy desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    series_colors: {}
    advanced_vis_config: |-
      {
        "chart": {
          "type": "pie",
          "backgroundColor": "#ffffff"
        },
        "plotOptions": {
          "pie": {
            "innerSize": "60%",
            "borderWidth": 2,
            "borderColor": "#ffffff",
            "dataLabels": {
              "enabled": false
            }
          }
        },
        "series": [
          // Your existing series data goes here
        ],
        "subtitle": {
          "text": "76.02%",
          "align": "center",
          "verticalAlign": "middle",
          "y": 30, // Adjusted to move text upwards slightly
          "x": -60,
          "style": {
            "fontSize": "24px",
            "color": "#333333",
            "fontWeight": ""
          }
        }
      }
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
    row: 84
    col: 16
    width: 8
    height: 7
  - title: EVC Energy Consumption by Brand
    name: EVC Energy Consumption by Brand
    model: vestel_nova
    explore: tables
    type: marketplace_viz_liquid_fill_gauge::liquid_fill_gauge-marketplace
    fields: [tables.total_energy, tables.brand]
    filters:
      tables.table: '"evc_energy"'
    sorts: [tables.total_energy desc 0]
    limit: 10
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.1
    circleFillGap: 0
    circleColor: "#009444"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1801
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#8DC63F"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 0.8
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: watch-time-energy
      palette_id: watch-time-energy-categorical-0
      options:
        steps: 5
    series_colors: {}
    advanced_vis_config: |-
      {
        chart: {},
        series: [{}]
      }
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
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 91
    col: 16
    width: 8
    height: 6
