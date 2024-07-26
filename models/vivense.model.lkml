# Define the database connection to be used for this model.
connection: "gde-demo-data"

# include all the views
include: "/views/**/*.view"
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

include: "/dashboards/*.dashboard.lookml" # include all the views


datagroup: vivense_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: vivense_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Vivense"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.
label: "Vivense Model"


explore: product_mongo {
  label: "Product Mongo"
}


explore: total_number_of_products {
  label: "total_number_of_products"
}


explore: total_sales_look {
  label: "Total Sales Amount"
}

explore: gcppoc_bikestore_virtuemart_orders {
  label: "Vivense Order Data"
  view_label: "Orders"

  join: gcppoc_bikestore_virtuemart_order_items {
    view_label: "Order Items"
    type: inner
    sql_on: ${gcppoc_bikestore_virtuemart_orders.virtuemart_order_id} = ${gcppoc_bikestore_virtuemart_order_items.virtuemart_order_id} ;;
    relationship: one_to_one
  }


}
