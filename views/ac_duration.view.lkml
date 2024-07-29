view: ac_duration {
  sql_table_name: `ifa_veezy_intellegence.ac_duration` ;;

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
  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }
  measure: count {
    type: count
  }
}
