# The name of this view in Looker is "Product Df"
view: product_df {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vivensesandbox.vivense_poc.productDF`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " ID" in Explore.

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: attributes {
    type: string
    sql: ${TABLE}.attributes ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: calculate_from_components {
    type: yesno
    sql: ${TABLE}.calculateFromComponents ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: collections {
    type: string
    sql: ${TABLE}.collections ;;
  }

  dimension: components {
    type: string
    sql: ${TABLE}.components ;;
  }

  dimension: create_date {
    type: string
    sql: ${TABLE}.createDate ;;
  }

  dimension: customer_rating {
    type: string
    sql: ${TABLE}.customerRating ;;
  }

  dimension: data_insert_date {
    type: string
    sql: ${TABLE}.dataInsertDate ;;
  }

  dimension: deleted {
    type: yesno
    sql: ${TABLE}.deleted ;;
  }

  dimension: dimensions {
    type: string
    sql: ${TABLE}.dimensions ;;
  }

  dimension: documents {
    type: string
    sql: ${TABLE}.documents ;;
  }

  dimension: edit_version {
    type: number
    sql: ${TABLE}.editVersion ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_edit_version {
    type: sum
    sql: ${edit_version} ;;
  }

  measure: average_edit_version {
    type: average
    sql: ${edit_version} ;;
  }

  dimension: eligible_for_export {
    type: yesno
    sql: ${TABLE}.eligibleForExport ;;
  }

  dimension: genesis {
    type: yesno
    sql: ${TABLE}.genesis ;;
  }

  dimension: granted_sites {
    type: string
    sql: ${TABLE}.grantedSites ;;
  }

  dimension: is_in_campaign {
    type: yesno
    sql: ${TABLE}.isInCampaign ;;
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}.legacyId ;;
  }

  dimension: legacy_variant {
    type: number
    sql: ${TABLE}.legacyVariant ;;
  }

  dimension: lot_no {
    type: string
    sql: ${TABLE}.lotNo ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: media {
    type: string
    sql: ${TABLE}.media ;;
  }

  dimension: multiple_supplier_enabled {
    type: yesno
    sql: ${TABLE}.multipleSupplierEnabled ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: packages {
    type: string
    sql: ${TABLE}.packages ;;
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}.productFamily ;;
  }

  dimension: product_modules_info {
    type: string
    sql: ${TABLE}.productModulesInfo ;;
  }

  dimension: purchase_price {
    type: string
    sql: ${TABLE}.purchasePrice ;;
  }

  dimension: quantity_unit {
    type: string
    sql: ${TABLE}.quantityUnit ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension: secondary_categories {
    type: string
    sql: ${TABLE}.secondaryCategories ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: shared_with {
    type: string
    sql: ${TABLE}.sharedWith ;;
  }

  dimension: site_policy {
    type: string
    sql: ${TABLE}.sitePolicy ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.supplier ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.upc ;;
  }

  dimension: update_date {
    type: string
    sql: ${TABLE}.updateDate ;;
  }

  dimension: variant_id {
    type: string
    sql: ${TABLE}.variantId ;;
  }

  dimension: vsin {
    type: string
    sql: ${TABLE}.vsin ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
