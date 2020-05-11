- dashboard: customer_lookup
  title: Customer Lookup
  layout: newspaper
  elements:
  - title: Lifetime Spend
    name: Lifetime Spend
    model: rtm
    explore: device_orders
    type: single_value
    fields: [device_orders.total_sold_amount]
    limit: 500
    dynamic_fields: [{table_calculation: change_from_previous_week, label: Change
          from Previous Week, expression: "(${device_orders.total_purchases} - offset(${device_orders.total_purchases},1)\
          \ )/ offset(${device_orders.total_purchases},1)", value_format: !!null '',
        value_format_name: percent_0, is_disabled: true, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
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
      Customer ID: device_orders.cust_id
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Customer Details
    name: Customer Details
    model: rtm
    explore: device_orders
    type: looker_single_record
    fields: [device_orders.cust_id, device_orders.acct_num, device_orders.age, device_orders.brand_pref,
      device_orders.channel_pref, device_orders.segment, device_orders.st_cd, device_orders.subscr_tenure]
    filters: {}
    sorts: [device_orders.cust_id]
    limit: 500
    column_limit: 50
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    listen:
      Customer ID: device_orders.cust_id
    row: 3
    col: 0
    width: 7
    height: 5
  - title: Device History
    name: Device History
    model: rtm
    explore: device_orders
    type: looker_line
    fields: [device_orders.activity_date, device_orders.count, device_orders.total_upgrades,
      device_orders.total_purchases, device_orders.total_sold_amount]
    filters:
      device_orders.count: ">0"
    sorts: [device_orders.activity_date]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: device_orders.total_upgrades,
            id: device_orders.total_upgrades, name: Total Upgrades}, {axisId: device_orders.total_purchases,
            id: device_orders.total_purchases, name: Total Purchases}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: device_orders.total_sold_amount,
            id: device_orders.total_sold_amount, name: Total Sold Amount}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      device_orders.total_purchases: scatter
      device_orders.total_upgrades: scatter
      device_orders.total_sold_amount: column
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    hidden_fields: [device_orders.count]
    listen:
      Customer ID: device_orders.cust_id
    row: 0
    col: 14
    width: 10
    height: 8
  - title: Current Plan Details
    name: Current Plan Details
    model: rtm
    explore: device_orders
    type: looker_single_record
    fields: [device_orders.plan, device_orders.plan_ctgry, device_orders.plan_data_group,
      device_orders.plan_feat_pref, device_orders.curr_contract_term, device_orders.data_tier,
      device_orders.port_carrier_cd, device_orders.port_service_provider, device_orders.port_status_desc,
      device_orders.prepaid_ind, device_orders.cust_id, device_orders.cust_line_seq_id]
    filters: {}
    sorts: [device_orders.cust_line_seq_id desc]
    limit: 500
    column_limit: 50
    show_view_names: false
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [device_orders.cust_id, device_orders.cust_line_seq_id]
    listen:
      Customer ID: device_orders.cust_id
    row: 0
    col: 7
    width: 7
    height: 8
  filters:
  - name: Customer ID
    title: Customer ID
    type: field_filter
    default_value: '48'
    allow_multiple_values: true
    required: false
    model: rtm
    explore: device_orders
    listens_to_filters: []
    field: device_orders.cust_id
