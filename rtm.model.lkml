connection: "bigquery_opensky"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard



explore: device_orders {
  query: purchases_by_service_preference {
    dimensions: [service_pref]
    measures: [total_purchases]
  }

}
