view: rf_door_open {
  sql_table_name: `ifa_veezy_intellegence.rf_door_open` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: count_rf_door_open {
    type: number
    sql: ${TABLE}.count ;;
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
  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }
  measure: count {
    type: count
  }
}
