view: total_sales_look {
  derived_table: {
    sql: -- raw sql results do not include filled-in values for 'gcppoc_bikestore_virtuemart_order_items.delivery_date_month'

      SELECT
          (FORMAT_DATE('%Y-%m', gcppoc_bikestore_virtuemart_order_items.delivery_date )) AS gcppoc_bikestore_virtuemart_order_items_delivery_date_month,
          COALESCE(SUM(CAST( gcppoc_bikestore_virtuemart_orders.order_subtotal   AS FLOAT64)), 0) AS sum_of_order_subtotal
      FROM `vivense_poc.gcppoc_bikestore_virtuemart_orders`
           AS gcppoc_bikestore_virtuemart_orders
      INNER JOIN `vivense_poc.gcppoc_bikestore_virtuemart_order_items`
           AS gcppoc_bikestore_virtuemart_order_items ON gcppoc_bikestore_virtuemart_orders.virtuemart_order_id = gcppoc_bikestore_virtuemart_order_items.virtuemart_order_id
      WHERE (gcppoc_bikestore_virtuemart_orders.order_subtotal ) > 0 AND ((( gcppoc_bikestore_virtuemart_order_items.delivery_date  ) >= DATE('2019-01-01')))
      GROUP BY
          1
      ORDER BY
          1 DESC

       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: gcppoc_bikestore_virtuemart_order_items_delivery_date_month {
    type: string
    sql: ${TABLE}.gcppoc_bikestore_virtuemart_order_items_delivery_date_month ;;
  }

  dimension: sum_of_order_subtotal {
    type: number
    sql: ${TABLE}.sum_of_order_subtotal ;;
  }

  set: detail {
    fields: [gcppoc_bikestore_virtuemart_order_items_delivery_date_month, sum_of_order_subtotal]
  }
}
