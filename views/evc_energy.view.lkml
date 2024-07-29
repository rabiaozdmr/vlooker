view: evc_energy {
  sql_table_name: `ifa_veezy_intellegence.evc_energy` ;;

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
  dimension: energy {
    type: number
    sql: ${TABLE}.energy ;;
  }
  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }
  measure: count {
    type: count
  }
}
