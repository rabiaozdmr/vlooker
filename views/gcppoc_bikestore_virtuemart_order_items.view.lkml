# The name of this view in Looker is "Gcppoc Bikestore Virtuemart Order Items"
view: gcppoc_bikestore_virtuemart_order_items {
  view_label: "Order Items"
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vivense_poc.gcppoc_bikestore_virtuemart_order_items`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alternative Name" in Explore.

  dimension: alternative_name {
    type: string
    sql: ${TABLE}.alternative_name ;;
  }

  dimension: assembly_item_id {
    type: number
    sql: ${TABLE}.assembly_item_id ;;
  }

  dimension: bill_ettn {
    type: string
    sql: ${TABLE}.bill_ettn ;;
  }

  dimension: bill_file_path {
    type: string
    sql: ${TABLE}.bill_file_path ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: bill_print {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.bill_print_date ;;
  }

  dimension: bill_printed {
    type: number
    sql: ${TABLE}.bill_printed ;;
  }

  dimension: bill_serial_no {
    type: string
    sql: ${TABLE}.bill_serial_no ;;
  }

  dimension: campaign_title {
    type: string
    sql: ${TABLE}.campaign_title ;;
  }

  dimension: cancel_cost {
    type: number
    sql: ${TABLE}.cancel_cost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cancel_cost {
    type: sum
    sql: ${cancel_cost} ;;
  }

  measure: average_cancel_cost {
    type: average
    sql: ${cancel_cost} ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.created_on ;;
  }

  dimension: customer_invoice {
    type: string
    sql: ${TABLE}.customer_invoice ;;
  }

  dimension: customer_return_invoice {
    type: string
    sql: ${TABLE}.customer_return_invoice ;;
  }

  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }

  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }

  dimension_group: delivery_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.delivery_date ;;
  }

  dimension_group: delivery_due_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.delivery_due_date ;;
  }

  dimension: effective_cogs {
    type: number
    sql: ${TABLE}.effective_cogs ;;
  }

  dimension: effective_cogs_accepted {
    type: number
    sql: ${TABLE}.effective_cogs_accepted ;;
  }

  dimension_group: expected_delivery {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expected_delivery_date ;;
  }

  dimension_group: expected_production_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expected_production_due_date ;;
  }

  dimension: extra_installation_status {
    type: string
    sql: ${TABLE}.extra_installation_status ;;
  }

  dimension: fabric_cogs_difference {
    type: number
    sql: ${TABLE}.fabric_cogs_difference ;;
  }

  dimension: fabric_extra {
    type: number
    sql: ${TABLE}.fabric_extra ;;
  }

  dimension: follow_up {
    type: string
    sql: ${TABLE}.follow_up ;;
  }

  dimension: follow_up2 {
    type: string
    sql: ${TABLE}.follow_up2 ;;
  }

  dimension: follow_up3 {
    type: string
    sql: ${TABLE}.follow_up3 ;;
  }

  dimension: followup_reference {
    type: string
    sql: ${TABLE}.followup_reference ;;
  }

  dimension: from_stock {
    type: number
    sql: ${TABLE}.from_stock ;;
  }

  dimension: installation_detail {
    type: string
    sql: ${TABLE}.installation_detail ;;
  }

  dimension: installation_status {
    type: string
    sql: ${TABLE}.installation_status ;;
  }

  dimension: installation_type {
    type: string
    sql: ${TABLE}.installation_type ;;
  }

  dimension: is_bulk {
    type: number
    sql: ${TABLE}.is_bulk ;;
  }

  dimension: last_operation_type {
    type: string
    sql: ${TABLE}.last_operation_type ;;
  }

  dimension_group: latest_delivery_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.latest_delivery_due_date ;;
  }

  dimension: locked_by {
    type: number
    sql: ${TABLE}.locked_by ;;
  }

  dimension_group: locked {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.locked_on ;;
  }

  dimension: manufacturer_invoice {
    type: string
    sql: ${TABLE}.manufacturer_invoice ;;
  }

  dimension: manufacturer_payment {
    type: string
    sql: ${TABLE}.manufacturer_payment ;;
  }

  dimension: manufacturer_pricediff_invoice {
    type: string
    sql: ${TABLE}.manufacturer_pricediff_invoice ;;
  }

  dimension: manufacturer_return_invoice {
    type: string
    sql: ${TABLE}.manufacturer_return_invoice ;;
  }

  dimension: manufacturer_status {
    type: string
    sql: ${TABLE}.manufacturer_status ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified_on ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: operation_sub_type {
    type: string
    sql: ${TABLE}.operation_sub_type ;;
  }

  dimension: operation_type {
    type: string
    sql: ${TABLE}.operation_type ;;
  }

  dimension: order_item_currency {
    type: number
    sql: ${TABLE}.order_item_currency ;;
  }

  dimension: order_item_name {
    type: string
    sql: ${TABLE}.order_item_name ;;
  }

  dimension: order_item_sku {
    type: string
    sql: ${TABLE}.order_item_sku ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: order_substatus {
    type: string
    sql: ${TABLE}.order_substatus ;;
  }

  dimension: order_type {
    type: number
    sql: ${TABLE}.order_type ;;
  }

  dimension: package_count {
    type: number
    sql: ${TABLE}.package_count ;;
  }

  dimension: pay_status {
    type: string
    sql: ${TABLE}.pay_status ;;
  }

  dimension_group: payment_confirmation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.payment_confirmation_date ;;
  }

  dimension_group: payment {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.payment_date ;;
  }

  dimension: product_attribute {
    type: string
    sql: ${TABLE}.product_attribute ;;
  }

  dimension: product_base_price_with_tax {
    type: number
    sql: ${TABLE}.product_basePriceWithTax ;;
  }

  dimension: product_discount {
    type: number
    sql: ${TABLE}.product_discount ;;
  }

  dimension: product_final_price {
    type: number
    sql: ${TABLE}.product_final_price ;;
  }

  dimension: product_item_price {
    type: number
    sql: ${TABLE}.product_item_price ;;
  }

  dimension: product_quantity {
    type: number
    sql: ${TABLE}.product_quantity ;;
  }

  dimension: product_subtotal_discount {
    type: number
    sql: ${TABLE}.product_subtotal_discount ;;
  }

  dimension: product_subtotal_with_tax {
    type: number
    sql: ${TABLE}.product_subtotal_with_tax ;;
  }

  dimension: product_tax {
    type: number
    sql: ${TABLE}.product_tax ;;
  }

  dimension: productbuilder_product_id {
    type: string
    sql: ${TABLE}.productbuilder_product_id ;;
  }

  dimension_group: production_due_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.production_due_date ;;
  }

  dimension: production_time {
    type: number
    sql: ${TABLE}.production_time ;;
  }

  dimension: remaining_payment {
    type: number
    sql: ${TABLE}.remaining_payment ;;
  }

  dimension: return_cause {
    type: string
    sql: ${TABLE}.return_cause ;;
  }

  dimension: showroom_stock_location {
    type: string
    sql: ${TABLE}.showroom_stock_location ;;
  }

  dimension_group: updated_delivery_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updated_delivery_due_date ;;
  }

  dimension_group: updated_production_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updated_production_due_date ;;
  }

  dimension: variant_id {
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  dimension: virtuemart_order_id {
    type: number
    sql: ${TABLE}.virtuemart_order_id ;;
  }

  dimension: virtuemart_order_item_id {
    type: number
    sql: ${TABLE}.virtuemart_order_item_id ;;
  }

  dimension: virtuemart_product_id {
    type: number
    sql: ${TABLE}.virtuemart_product_id ;;
  }

  dimension: virtuemart_vendor_id {
    type: number
    sql: ${TABLE}.virtuemart_vendor_id ;;
  }

  dimension: waybill {
    type: string
    sql: ${TABLE}.waybill ;;
  }

  measure: count {
    type: count
    drill_fields: [alternative_name, order_item_name]
  }

}
