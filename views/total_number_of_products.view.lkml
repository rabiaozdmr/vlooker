view: total_number_of_products {
  derived_table: {
    sql: SELECT
          COUNT(gcppoc_bikestore_virtuemart_order_items.order_item_sku ) AS count_of_order_item_sku
      FROM `vivense_poc.gcppoc_bikestore_virtuemart_orders`
           AS gcppoc_bikestore_virtuemart_orders
      INNER JOIN `vivense_poc.gcppoc_bikestore_virtuemart_order_items`
           AS gcppoc_bikestore_virtuemart_order_items ON gcppoc_bikestore_virtuemart_orders.virtuemart_order_id = gcppoc_bikestore_virtuemart_order_items.virtuemart_order_id
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: count_of_order_item_sku {
    type: number
    sql: ${TABLE}.count_of_order_item_sku ;;
  }

  set: detail {
    fields: [count_of_order_item_sku]
  }
}
