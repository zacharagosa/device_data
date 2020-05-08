connection: "bigquery_opensky"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard



explore: device_orders {
  sql_always_where: ${sold_price_amt} > 0 ;;
  query: purchases_by_plan_category {
    dimensions: [plan_ctgry]
    measures: [total_purchases]
    sorts: [total_purchases: desc]
  }

  query: purchases_by_date {
    dimensions: [activity_date]
    sorts: [activity_date: asc]
    measures: [total_purchases]
  }

  query: purchase_by_type {
    dimensions: [purchase_type]
    measures: [total_purchases]
  }

}
