---
- dashboard: globalit_demo_dashboard
  title: GlobalIT Demo Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Ul4lzBmB8DYnULJ3z5tRpz
  elements:
  - title: Customer - Invoice Total
    name: Customer - Invoice Total
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: single_value
    fields: [sum_of_order_subtotal]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_order_total
      based_on: gcppoc_bikestore_virtuemart_orders.order_total
      expression: ''
      label: Count of Order Total
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_order_total
      based_on: gcppoc_bikestore_virtuemart_orders.order_total
      expression: ''
      label: Sum of Order Total
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_order_subtotal
      based_on: gcppoc_bikestore_virtuemart_orders.order_subtotal
      expression: ''
      label: Sum of Order Subtotal
      type: sum
      _kind_hint: measure
      _type_hint: number
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#7CB342"
    single_value_title: Customer - Invoice Total
    value_format: '"₺"#,##0,, "B"'
    defaults_version: 1
    listen:
      Payment Date: gcppoc_bikestore_virtuemart_order_items.payment_date
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Total number of orders
    name: Total number of orders
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: single_value
    fields: [count_of_order_total]
    sorts: [count_of_order_total desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_order_total
      based_on: gcppoc_bikestore_virtuemart_orders.order_total
      expression: ''
      label: Count of Order Total
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_order_total
      based_on: gcppoc_bikestore_virtuemart_orders.order_total
      expression: ''
      label: Sum of Order Total
      type: sum
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E8710A"
    single_value_title: Total number of orders
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
    listen:
      Payment Date: gcppoc_bikestore_virtuemart_order_items.payment_date
    row: 0
    col: 4
    width: 4
    height: 2
  - title: Supplier - Invoice Total
    name: Supplier - Invoice Total
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: single_value
    fields: [sum_of_product_subtotal_with_tax]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_product_subtotal_with_tax
      based_on: gcppoc_bikestore_virtuemart_order_items.product_subtotal_with_tax
      expression: ''
      label: Sum of Product Subtotal with Tax
      type: sum
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Supplier - Invoice Total
    value_format: '"₺"#,##0,, "B"'
    defaults_version: 1
    listen:
      Payment Date: gcppoc_bikestore_virtuemart_order_items.payment_date
    row: 2
    col: 0
    width: 4
    height: 2
  - title: Total Sales Amount by Months
    name: Total Sales Amount by Months
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: looker_area
    fields: [gcppoc_bikestore_virtuemart_order_items.delivery_date_month, sum_of_order_subtotal]
    fill_fields: [gcppoc_bikestore_virtuemart_order_items.delivery_date_month]
    filters:
      gcppoc_bikestore_virtuemart_order_items.delivery_date_month: after 2019/01/01
      gcppoc_bikestore_virtuemart_orders.order_subtotal: ">0,NOT NULL"
    sorts: [gcppoc_bikestore_virtuemart_order_items.delivery_date_month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_order_subtotal
      based_on: gcppoc_bikestore_virtuemart_orders.order_subtotal
      expression: ''
      label: Sum of Order Subtotal
      type: sum
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
    limit_displayed_rows: true
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_order_subtotal,
            id: sum_of_order_subtotal, name: Sum of Order Subtotal}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 17,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '32'
    hide_legend: false
    font_size: 8 px
    label_value_format: '"₺"#,##0,, "M"'
    series_colors:
      sum_of_order_subtotal: "#12B5CB"
    label_color: ["#F8D210"]
    ordering: none
    show_null_labels: false
    show_dropoff: false
    defaults_version: 1
    listen:
      Payment Date: gcppoc_bikestore_virtuemart_order_items.payment_date
    row: 0
    col: 8
    width: 16
    height: 6
  - title: Top 10 Products
    name: Top 10 Products
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: looker_grid
    fields: [gcppoc_bikestore_virtuemart_order_items.order_item_name, sum_of_order_subtotal]
    sorts: [sum_of_order_subtotal desc 0]
    limit: 15
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_order_subtotal
      based_on: gcppoc_bikestore_virtuemart_orders.order_subtotal
      expression: ''
      label: Sum of Order Subtotal
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_order_item_sku
      based_on: gcppoc_bikestore_virtuemart_order_items.order_item_sku
      expression: ''
      label: Count of Order Item SKU
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: true
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      sum_of_order_subtotal:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    header_font_color: "#4276BE"
    header_background_color: "#FBB555"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius:
    start_angle:
    end_angle:
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
    show_null_points: true
    interpolation: linear
    font_size: 12
    listen:
      Payment Date: gcppoc_bikestore_virtuemart_order_items.payment_date
    row: 11
    col: 13
    width: 11
    height: 8
  - title: Delivery Cost
    name: Delivery Cost
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: single_value
    fields: [sum_of_delivery_cost]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_delivery_cost
      based_on: gcppoc_bikestore_virtuemart_orders.delivery_cost
      expression: ''
      label: Sum of Delivery Cost
      type: sum
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    custom_color: "#F8D210"
    single_value_title: Delivery Cost
    value_format: '"₺"#,##0'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    show_value_labels: true
    font_size: 12
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    truncate_column_names: false
    listen:
      Payment Date: gcppoc_bikestore_virtuemart_order_items.payment_date
    row: 4
    col: 0
    width: 4
    height: 2
  - title: Total Number of Products
    name: Total Number of Products
    model: vivense
    explore: total_number_of_products
    type: single_value
    fields: [total_number_of_products.count_of_order_item_sku]
    sorts: [total_number_of_products.count_of_order_item_sku]
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
    custom_color: "#EA4335"
    single_value_title: Total Number of Products
    show_view_names: false
    defaults_version: 1
    listen: {}
    row: 2
    col: 4
    width: 4
    height: 2
  - title: Store Sales Rate
    name: Store Sales Rate
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: looker_pie
    fields: [gcppoc_bikestore_virtuemart_order_items.showroom_stock_location, sum_of_product_subtotal_with_tax]
    filters:
      gcppoc_bikestore_virtuemart_order_items.showroom_stock_location: "-NULL"
    sorts: [sum_of_product_subtotal_with_tax desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_product_subtotal_with_tax
      based_on: gcppoc_bikestore_virtuemart_order_items.product_subtotal_with_tax
      expression: ''
      label: Sum of Product Subtotal with Tax
      type: sum
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
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
    listen:
      Payment Date: gcppoc_bikestore_virtuemart_order_items.payment_date
    row: 6
    col: 0
    width: 8
    height: 5
  - title: Supplier Segment
    name: Supplier Segment
    model: vivense
    explore: product_mongo
    type: looker_pie
    fields: [product_mongo.suplier_segment, product_mongo.count]
    filters:
      product_mongo.suplier_segment: "-NULL"
    sorts: [product_mongo.count desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    row: 6
    col: 16
    width: 8
    height: 5
  - title: Top 10 Suppliers
    name: Top 10 Suppliers
    model: vivense
    explore: product_mongo
    type: looker_pie
    fields: [product_mongo.supplier_official_name, product_mongo.count]
    filters:
      product_mongo.supplier_official_name: "-NULL"
    sorts: [product_mongo.count desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: count_of_unit_price
      based_on: product_mongo.unit_price
      expression: ''
      label: Count of Unit Price
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    inner_radius: 55
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: true
    series_labels: {}
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      product_mongo.count:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: product_mongo.count,
            id: product_mongo.count, name: Product Mongo Count}, {axisId: count_of_unit_price,
            id: count_of_unit_price, name: Count of Unit Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    hide_legend: true
    legend_position: center
    font_size: 12
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map: usa
    map_projection: ''
    quantize_colors: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hidden_pivots: {}
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 5
  - title: Top 10 Suppliers
    name: Top 10 Suppliers (2)
    model: vivense
    explore: product_mongo
    type: looker_grid
    fields: [product_mongo.supplier_official_name, product_mongo.count, count_of_unit_price]
    filters:
      product_mongo.supplier_official_name: "-NULL"
    sorts: [product_mongo.count desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: count_of_unit_price
      based_on: product_mongo.unit_price
      expression: ''
      label: Count of Unit Price
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    show_view_names: true
    show_row_numbers: false
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: true
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_cell_visualizations:
      product_mongo.count:
        is_active: true
        palette:
          palette_id: bc364017-c5c2-b425-6c1a-942bf0f904b2
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#F8D210"
          - "#FF6000"
          - "#F8D210"
          - "#F8D210"
        value_display: true
    header_font_color: "#1A73E8"
    header_background_color: "#F9AB00"
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: product_mongo.count,
            id: product_mongo.count, name: Product Mongo Count}, {axisId: count_of_unit_price,
            id: count_of_unit_price, name: Count of Unit Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    hide_legend: true
    legend_position: center
    font_size: 12
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map: usa
    map_projection: ''
    quantize_colors: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen: {}
    row: 11
    col: 0
    width: 13
    height: 5
  - title: Subtotal Growth Rates Overview
    name: Subtotal Growth Rates Overview
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: looker_column
    fields: [sum_of_order_subtotal_2, gcppoc_bikestore_virtuemart_order_items.payment_month]
    filters:
      gcppoc_bikestore_virtuemart_order_items.payment_month: after 2020/01/01
      gcppoc_bikestore_virtuemart_orders.order_subtotal: ">0,NOT NULL"
    sorts: [gcppoc_bikestore_virtuemart_order_items.payment_month desc]
    limit: 81
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_order_subtotal
      based_on: gcppoc_bikestore_virtuemart_orders.order_subtotal
      expression: ''
      label: Sum of Order Subtotal
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_order_subtotal_2
      based_on: gcppoc_bikestore_virtuemart_orders.order_subtotal
      expression: ''
      label: Sum of Order Subtotal
      type: sum
      _kind_hint: measure
      _type_hint: number
    - args:
      - sum_of_order_subtotal_2
      calculation_type: percent_difference_from_previous
      category: table_calculation
      based_on: sum_of_order_subtotal_2
      label: Percent change from previous -  Sum of Order Subtotal
      source_field: sum_of_order_subtotal_2
      table_calculation: percent_change_from_previous_sum_of_order_subtotal
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_change_from_previous_sum_of_order_subtotal,
            id: percent_change_from_previous_sum_of_order_subtotal, name: Percent
              change from previous -  Sum of Order Subtotal}], showLabels: true, showValues: true,
        minValue: -10, unpinAxis: false, tickDensity: custom, tickDensityCustom: 15,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    reference_lines: [{reference_type: margins, line_value: min, range_start: max,
        range_end: min, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", margin_top: deviation}]
    trend_lines: []
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
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: [sum_of_order_subtotal_2]
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen: {}
    row: 16
    col: 0
    width: 13
    height: 6
  - title: Order Status
    name: Order Status
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: table
    fields: [gcppoc_bikestore_virtuemart_order_items.pay_status, gcppoc_bikestore_virtuemart_orders.count,
      sum_of_order_subtotal]
    filters:
      gcppoc_bikestore_virtuemart_order_items.pay_status: "-NULL"
    sorts: [gcppoc_bikestore_virtuemart_orders.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_order_subtotal
      based_on: gcppoc_bikestore_virtuemart_orders.order_subtotal
      expression: ''
      label: Sum of Order Subtotal
      type: sum
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          custom: {id: 58625623-1a97-bd77-d112-bd27ace770ce, label: Custom, type: continuous,
            stops: [{color: "#FFFF", offset: 0}, {color: "#F8D210", offset: 25}, {
                color: "#F8D210", offset: 50}, {color: "#F8D210", offset: 75}, {color: "#F8D210",
                offset: 100}]}, options: {steps: 5}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      gcppoc_bikestore_virtuemart_orders.count:
        is_active: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 19
    col: 13
    width: 11
    height: 3
  - title: New Tile
    name: New Tile
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    type: looker_line
    fields: [gcppoc_bikestore_virtuemart_order_items.payment_month, sum_of_order_subtotal]
    fill_fields: [gcppoc_bikestore_virtuemart_order_items.payment_month]
    filters:
      gcppoc_bikestore_virtuemart_order_items.payment_month: after 2019/01/01
    sorts: [gcppoc_bikestore_virtuemart_order_items.payment_month desc]
    limit: 200
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_order_subtotal
      based_on: gcppoc_bikestore_virtuemart_orders.order_subtotal
      expression: ''
      label: Sum of Order Subtotal
      type: sum
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
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: 6dda4f8b-4e73-4e50-8760-eb378041ce07
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_colors: {}
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 22
    col: 0
    width: 8
    height: 6
  filters:
  - name: Payment Date
    title: Payment Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: vivense
    explore: gcppoc_bikestore_virtuemart_orders
    listens_to_filters: []
    field: gcppoc_bikestore_virtuemart_order_items.payment_date
