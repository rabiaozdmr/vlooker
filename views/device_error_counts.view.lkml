view: device_error_counts {
  sql_table_name: `ifa_veezy_intellegence.device_error_counts` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }
  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }
  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }
  dimension: error_count {
    type: number
    sql: ${TABLE}.error_count ;;
  }
  measure: count {
    type: count
  }
}
