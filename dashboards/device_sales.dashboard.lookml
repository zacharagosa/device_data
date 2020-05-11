- dashboard: device_sales
  title: Device Sales
  layout: newspaper
  elements:
  - title: Total Device Sales Last 7 Days
    name: Total Device Sales Last 7 Days
    model: rtm
    explore: device_orders
    type: single_value
    fields: [device_orders.total_purchases, device_orders.activity_week]
    filters:
      device_orders.activity_date: 7 months
    sorts: [device_orders.activity_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: change_from_previous_week, label: Change
          from Previous Week, expression: "(${device_orders.total_purchases} - offset(${device_orders.total_purchases},1)\
          \ )/ offset(${device_orders.total_purchases},1)", value_format: !!null '',
        value_format_name: percent_0, is_disabled: false, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Previous Week
    series_types: {}
    defaults_version: 1
    listen:
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Total Device Revenue Last 7 Days
    name: Total Device Revenue Last 7 Days
    model: rtm
    explore: device_orders
    type: single_value
    fields: [device_orders.activity_week, device_orders.total_sold_amount]
    filters:
      device_orders.activity_date: 7 months
    sorts: [device_orders.activity_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: change_from_previous_week, label: Change
          from Previous Week, expression: "(${device_orders.total_purchases} - offset(${device_orders.total_purchases},1)\
          \ )/ offset(${device_orders.total_purchases},1)", value_format: !!null '',
        value_format_name: percent_0, is_disabled: true, _kind_hint: measure, _type_hint: number},
      {table_calculation: amount_change_from_previous_week, label: Amount Change from
          Previous Week, expression: "(${device_orders.total_sold_amount} - offset(${device_orders.total_sold_amount},1))\
          \ / ${device_orders.total_sold_amount}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    comparison_label: Previous Week
    series_types: {}
    defaults_version: 1
    listen:
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 4
    col: 0
    width: 6
    height: 3
  - title: Average Device Price Last 7 Days
    name: Average Device Price Last 7 Days
    model: rtm
    explore: device_orders
    type: single_value
    fields: [device_orders.activity_week, device_orders.average_sold_amount]
    filters:
      device_orders.activity_date: 7 months
    sorts: [device_orders.activity_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: change_from_previous_week, label: Change
          from Previous Week, expression: "(${device_orders.total_purchases} - offset(${device_orders.total_purchases},1)\
          \ )/ offset(${device_orders.total_purchases},1)", value_format: !!null '',
        value_format_name: percent_0, is_disabled: true, _kind_hint: dimension, _type_hint: number},
      {table_calculation: amount_change_from_previous_week, label: Amount Change from
          Previous Week, expression: "(${device_orders.total_sold_amount} - offset(${device_orders.total_sold_amount},1))\
          \ / ${device_orders.total_sold_amount}", value_format: !!null '', value_format_name: percent_0,
        is_disabled: true, _kind_hint: dimension, _type_hint: number}, {table_calculation: device_amount_change_from_previous_week,
        label: Device Amount Change from Previous Week, expression: "(${device_orders.average_sold_amount}\
          \ - offset( ${device_orders.average_sold_amount},1)) / offset( ${device_orders.average_sold_amount},1)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Previous Week
    series_types: {}
    defaults_version: 1
    listen:
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 7
    col: 0
    width: 6
    height: 4
  - title: New / Upgrade
    name: New / Upgrade
    model: rtm
    explore: device_orders
    type: looker_column
    fields: [device_orders.total_purchases, device_orders.activity_week, device_orders.purchase_type]
    pivots: [device_orders.purchase_type]
    fill_fields: [device_orders.activity_week]
    sorts: [device_orders.activity_week desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: New - device_orders.total_purchases,
            id: New - device_orders.total_purchases, name: New}, {axisId: Upgrade
              - device_orders.total_purchases, id: Upgrade - device_orders.total_purchases,
            name: Upgrade}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      device_orders.total_purchases: line
    series_colors:
      device_orders.total_purchases: "#616161"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Purchase Date: device_orders.activity_date
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 5
    col: 6
    width: 18
    height: 6
  - title: Sales by Week
    name: Sales by Week
    model: rtm
    explore: device_orders
    type: looker_column
    fields: [device_orders.total_sold_amount, device_orders.average_sold_amount, device_orders.total_purchases,
      device_orders.activity_week]
    sorts: [device_orders.activity_week desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: device_orders.total_sold_amount,
            id: device_orders.total_sold_amount, name: Total Sold Amount}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: device_orders.average_sold_amount,
            id: device_orders.average_sold_amount, name: Average Sold Amount}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: device_orders.total_purchases,
            id: device_orders.total_purchases, name: Total Purchases}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      device_orders.total_purchases: line
    series_colors:
      device_orders.total_purchases: "#616161"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Purchase Date: device_orders.activity_date
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 0
    col: 6
    width: 18
    height: 5
  - title: Purchases by Plan
    name: Purchases by Plan
    model: rtm
    explore: device_orders
    type: looker_donut_multiples
    fields: [device_orders.plan_ctgry, device_orders.total_purchases, device_orders.purchase_type]
    pivots: [device_orders.plan_ctgry]
    sorts: [device_orders.total_purchases desc 0, device_orders.purchase_type]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 12
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      Purchase Date: device_orders.activity_date
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 11
    col: 0
    width: 12
    height: 9
  - title: Upgrade Patterns Old to New Devices
    name: Upgrade Patterns Old to New Devices
    model: rtm
    explore: device_orders
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [device_orders.previous_device_is_android_or_iphone, device_orders.device_grouping,
      device_orders.total_purchases]
    sorts: [device_orders.previous_device_is_android_or_iphone desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_range: ["#d52b1e", "#333333", "#d2d3d4", "#ad2417", "#616161", "#f5f5f5",
      "#ff311f", "#a3a3a3"]
    label_type: name_value
    show_null_points: false
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
    series_types: {}
    listen:
      Purchase Date: device_orders.activity_date
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 20
    col: 0
    width: 12
    height: 9
  - title: Purchase Type by Segment
    name: Purchase Type by Segment
    model: rtm
    explore: device_orders
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [device_orders.lifestage, device_orders.total_purchases, device_orders.purchase_type]
    sorts: [device_orders.total_purchases desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name_value
    show_null_points: false
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
    series_types: {}
    listen:
      Purchase Date: device_orders.activity_date
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 11
    col: 12
    width: 12
    height: 9
  - title: Purchases by State
    name: Purchases by State
    model: rtm
    explore: device_orders
    type: looker_geo_choropleth
    fields: [device_orders.st_cd, device_orders.total_sold_amount]
    filters:
      device_orders.st_cd: "-?"
    sorts: [device_orders.total_sold_amount desc]
    limit: 500
    column_limit: 50
    map: usa
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    colors: [red]
    series_types: {}
    defaults_version: 1
    listen:
      Purchase Date: device_orders.activity_date
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 20
    col: 12
    width: 12
    height: 9
  - title: Purchases by Customer Segmentation
    name: Purchases by Customer Segmentation
    model: rtm
    explore: device_orders
    type: marketplace_viz_sunburst::sunburst-marketplace
    fields: [device_orders.total_sold_amount, device_orders.ethnicity_segmt, device_orders.lifestage,
      device_orders.segment, device_orders.brand_pref]
    sorts: [device_orders.segment desc]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    color_range: ["#9E0041", "#C32F4B", "#E1514B", "#F47245", "#FB9F59", "#FEC574",
      "#FAE38C", "#EAF195", "#C7E89E", "#9CD6A4", "#6CC4A4", "#4D9DB4", "#4776B4",
      "#5E4EA1"]
    color_by: node
    show_null_points: true
    legend: 'off'
    label_value: 'on'
    center_value: 'off'
    inner_circle_color: "#ffffff"
    text_color: "#000000"
    font_size: 40
    threshold: 0.2
    label_size: 10
    chart_size: 100%
    series_types: {}
    defaults_version: 0
    listen:
      Purchase Date: device_orders.activity_date
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 29
    col: 0
    width: 12
    height: 12
  - title: Purchases by Customer Segmentation
    name: Purchases by Customer Segmentation (2)
    model: rtm
    explore: device_orders
    type: looker_grid
    fields: [device_orders.segment, device_orders.ethnicity_segmt, device_orders.lifestage,
      device_orders.total_sold_amount, device_orders.total_purchases]
    sorts: [device_orders.segment desc, device_orders.ethnicity_segmt, device_orders.lifestage]
    subtotals: [device_orders.ethnicity_segmt, device_orders.segment]
    limit: 500
    total: true
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
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
    series_labels: {}
    series_column_widths: {}
    series_cell_visualizations:
      device_orders.total_sold_amount:
        is_active: true
    series_text_format:
      device_orders.ethnicity_segmt:
        bold: true
    series_collapsed:
      device_orders.ethnicity_segmt: true
    color_range: ["#9E0041", "#C32F4B", "#E1514B", "#F47245", "#FB9F59", "#FEC574",
      "#FAE38C", "#EAF195", "#C7E89E", "#9CD6A4", "#6CC4A4", "#4D9DB4", "#4776B4",
      "#5E4EA1"]
    color_by: node
    show_null_points: true
    legend: 'off'
    label_value: 'on'
    center_value: 'off'
    inner_circle_color: "#ffffff"
    text_color: "#000000"
    font_size: 40
    threshold: 0.2
    label_size: 10
    chart_size: 100%
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Purchase Date: device_orders.activity_date
      Device: device_orders.device_brand_nm
      Purchase Type (New / Upgrade): device_orders.purchase_type
      Plan: device_orders.plan_ctgry
    row: 29
    col: 12
    width: 12
    height: 12
  filters:
  - name: Purchase Date
    title: Purchase Date
    type: date_filter
    default_value: 14 weeks
    allow_multiple_values: true
    required: false
  - name: Device
    title: Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: rtm
    explore: device_orders
    listens_to_filters: []
    field: device_orders.device_brand_nm
  - name: Purchase Type (New / Upgrade)
    title: Purchase Type (New / Upgrade)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: rtm
    explore: device_orders
    listens_to_filters: []
    field: device_orders.purchase_type
  - name: Plan
    title: Plan
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: rtm
    explore: device_orders
    listens_to_filters: []
    field: device_orders.plan_ctgry
