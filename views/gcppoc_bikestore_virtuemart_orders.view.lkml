# The name of this view in Looker is "Gcppoc Bikestore Virtuemart Orders"
view: gcppoc_bikestore_virtuemart_orders {
  label: "Orders"
  view_label: "Orders"
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vivense_poc.gcppoc_bikestore_virtuemart_orders`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " 3d Detail" in Explore.

  dimension: _3d_detail {
    type: string
    sql: ${TABLE}._3d_detail ;;
  }

  dimension: accounting_ok {
    type: string
    sql: ${TABLE}.accounting_ok ;;
  }

  dimension: bank_logo {
    type: string
    sql: ${TABLE}.bank_logo ;;
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
    type: string
    sql: ${TABLE}.bill_printed ;;
  }

  dimension: bill_serial_no {
    type: string
    sql: ${TABLE}.bill_serial_no ;;
  }

  dimension: cart_type {
    type: string
    sql: ${TABLE}.cart_type ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: coupon_discount {
    type: number
    sql: ${TABLE}.coupon_discount ;;
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

  dimension: customer_note {
    type: string
    sql: ${TABLE}.customer_note ;;
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

  dimension: delivery_cost {
    type: number
    sql: ${TABLE}.delivery_cost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_delivery_cost {
    type: sum
    sql: ${delivery_cost} ;;
  }

  measure: average_delivery_cost {
    type: average
    sql: ${delivery_cost} ;;
  }

  dimension: installment_count {
    type: string
    sql: ${TABLE}.installment_count ;;
  }

  dimension: installment_extra {
    type: number
    sql: ${TABLE}.installment_extra ;;
  }

  dimension: interest_cost {
    type: string
    sql: ${TABLE}.interest_cost ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: is_bulk_order {
    type: number
    sql: ${TABLE}.is_bulk_order ;;
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

  dimension: long_distance_delivery_cost {
    type: number
    sql: ${TABLE}.long_distance_delivery_cost ;;
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

  dimension: order_bill_discount_amount {
    type: number
    sql: ${TABLE}.order_billDiscountAmount ;;
  }

  dimension: order_bill_tax_amount {
    type: number
    sql: ${TABLE}.order_billTaxAmount ;;
  }

  dimension: order_currency {
    type: number
    sql: ${TABLE}.order_currency ;;
  }

  dimension: order_discount {
    type: number
    sql: ${TABLE}.order_discount ;;
  }

  dimension: order_discount_amount {
    type: number
    sql: ${TABLE}.order_discountAmount ;;
  }

  dimension: order_email_sent {
    type: string
    sql: ${TABLE}.order_email_sent ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: order_pass {
    type: string
    sql: ${TABLE}.order_pass ;;
  }

  dimension: order_payment {
    type: number
    sql: ${TABLE}.order_payment ;;
  }

  dimension: order_payment_tax {
    type: number
    sql: ${TABLE}.order_payment_tax ;;
  }

  dimension: order_platform {
    type: number
    sql: ${TABLE}.order_platform ;;
  }

  dimension: order_sales_price {
    type: number
    sql: ${TABLE}.order_salesPrice ;;
  }

  dimension: order_shipment {
    type: number
    sql: ${TABLE}.order_shipment ;;
  }

  dimension: order_shipment_tax {
    type: number
    sql: ${TABLE}.order_shipment_tax ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: order_substatus {
    type: string
    sql: ${TABLE}.order_substatus ;;
  }

  dimension: order_subtotal {
    type: number
    sql: ${TABLE}.order_subtotal ;;
  }

  dimension: order_tax {
    type: number
    sql: ${TABLE}.order_tax ;;
  }

  dimension: order_total {
    type: number
    sql: ${TABLE}.order_total ;;
  }

  dimension: ref_bank {
    type: string
    sql: ${TABLE}.ref_bank ;;
  }

  dimension: sale_location {
    type: number
    sql: ${TABLE}.sale_location ;;
  }

  dimension: site_id {
    type: number
    sql: ${TABLE}.site_id ;;
  }

  dimension: survey_status {
    type: string
    sql: ${TABLE}.survey_status ;;
  }

  dimension: transportation_extra {
    type: number
    sql: ${TABLE}.transportation_extra ;;
  }

  dimension: user_currency_id {
    type: string
    sql: ${TABLE}.user_currency_id ;;
  }

  dimension: user_currency_rate {
    type: number
    sql: ${TABLE}.user_currency_rate ;;
  }

  dimension: virtuemart_order_id {
    type: number
    sql: ${TABLE}.virtuemart_order_id ;;
  }

  dimension: virtuemart_paymentmethod_id {
    type: number
    sql: ${TABLE}.virtuemart_paymentmethod_id ;;
  }

  dimension: virtuemart_shipmentmethod_id {
    type: number
    sql: ${TABLE}.virtuemart_shipmentmethod_id ;;
  }

  dimension: virtuemart_user_id {
    type: number
    sql: ${TABLE}.virtuemart_user_id ;;
  }

  dimension: virtuemart_vendor_id {
    type: number
    sql: ${TABLE}.virtuemart_vendor_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: amount_growth {
    type: percent_of_previous
    sql:${order_subtotal};;
  }

}
