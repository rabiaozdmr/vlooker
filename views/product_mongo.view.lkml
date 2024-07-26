view: product_mongo {
  derived_table: {
    sql: SELECT
      legacyId,
      REPLACE(JSON_EXTRACT(supplier,'$.type'),'"','' )AS suplier_type,
      REPLACE(JSON_EXTRACT(supplier,'$.segment'),'"','' )AS suplier_segment,
      REPLACE(JSON_EXTRACT(supplier,'$.taxInfo.officialName'),'"','' )AS supplier_officialName,
      REPLACE(JSON_EXTRACT(manufacturer,'$.name'),'"','' )AS manufacturer_name,
      REPLACE(JSON_EXTRACT(manufacturer,'$.type'),'"','' )AS manufacturer_type,
      REPLACE(JSON_EXTRACT(manufacturer,'$.segment'),'"','' )AS manufacturer_segment,
      REPLACE(JSON_EXTRACT(manufacturer,'$.taxInfo.officialName'),'"','' )AS manufacturer_officialName,
      type,
      REPLACE(JSON_EXTRACT(title,'$.tr'),'"','' )AS title,
      REPLACE(JSON_EXTRACT(category,'$.title.tr'),'"','' )AS category_title,
      REPLACE(JSON_EXTRACT(sitePolicy,'$.shipment'),'"','' )AS shipment,
      REPLACE(JSON_EXTRACT(sitePolicy,'$.installationType'),'"','' )AS installationType,
      REPLACE(JSON_EXTRACT(sitePolicy,'$.fulfillmentType'),'"','' )AS fulfillmentType,
      REPLACE(JSON_EXTRACT_SCALAR(sitePolicy,'$.prices[0].unitPrice'),'"','' )AS unitPrice,
      REPLACE(JSON_EXTRACT(sitePolicy,'$.prices[0].generalMarketPrice'),'"','' )AS generalMarketPrice,
      REPLACE(JSON_EXTRACT(sitePolicy,'$.alias'),'"','' )AS alias,
      REPLACE(JSON_EXTRACT(purchasePrice,'$.priceType'),'"','' )AS purchasePrice_type,
      REPLACE(JSON_EXTRACT(purchasePrice,'$.unitPrice'),'"','' )AS purchasePrice_unitPrice,
      REPLACE(JSON_EXTRACT(dimensions, "$[0].title.tr"),'"','' )  AS dimensions_title
      FROM `vivensesandbox.vivense_poc.productDF`
       ;;
  }
view_label: "Product"
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}.legacyId ;;
  }

  dimension: suplier_type {
    type: string
    sql: ${TABLE}.suplier_type ;;
  }

  dimension: suplier_segment {
    type: string
    sql: ${TABLE}.suplier_segment ;;
  }

  dimension: supplier_official_name {
    type: string
    sql: ${TABLE}.supplier_officialName ;;
  }

  dimension: manufacturer_name {
    type: string
    sql: ${TABLE}.manufacturer_name ;;
  }

  dimension: manufacturer_type {
    type: string
    sql: ${TABLE}.manufacturer_type ;;
  }

  dimension: manufacturer_segment {
    type: string
    sql: ${TABLE}.manufacturer_segment ;;
  }

  dimension: manufacturer_official_name {
    type: string
    sql: ${TABLE}.manufacturer_officialName ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: category_title {
    type: string
    sql: ${TABLE}.category_title ;;
  }

  dimension: shipment {
    type: string
    sql: ${TABLE}.shipment ;;
  }

  dimension: installation_type {
    type: string
    sql: ${TABLE}.installationType ;;
  }

  dimension: fulfillment_type {
    type: string
    sql: ${TABLE}.fulfillmentType ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unitPrice ;;
  }

  dimension: general_market_price {
    type: string
    sql: ${TABLE}.generalMarketPrice ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: purchase_price_type {
    type: string
    sql: ${TABLE}.purchasePrice_type ;;
  }

  dimension: purchase_price_unit_price {
    type: string
    sql: ${TABLE}.purchasePrice_unitPrice ;;
  }

  dimension: dimensions_title {
    type: string
    sql: ${TABLE}.dimensions_title ;;
  }

  set: detail {
    fields: [
      legacy_id,
      suplier_type,
      suplier_segment,
      supplier_official_name,
      manufacturer_name,
      manufacturer_type,
      manufacturer_segment,
      manufacturer_official_name,
      type,
      title,
      category_title,
      shipment,
      installation_type,
      fulfillment_type,
      unit_price,
      general_market_price,
      alias,
      purchase_price_type,
      purchase_price_unit_price,
      dimensions_title
    ]
  }
}
