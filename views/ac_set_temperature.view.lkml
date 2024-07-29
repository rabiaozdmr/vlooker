view: ac_set_temperature {
  sql_table_name: `ifa_veezy_intellegence.ac_set_temperature` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: count_ac_set_temperature {
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
  dimension: set_temperature {
    type: string
    sql: ${TABLE}.set_temperature ;;
  }
  measure: count {
    type: count
  }
}
