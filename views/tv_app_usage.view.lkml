view: tv_app_usage {
  sql_table_name: `ifa_veezy_intellegence.tv_app_usage` ;;

  dimension: age_15_25 {
    type: number
    sql: ${TABLE}.age_15_25 ;;
  }
  dimension: age_26_35 {
    type: number
    sql: ${TABLE}.age_26_35 ;;
  }
  dimension: age_36_45 {
    type: number
    sql: ${TABLE}.age_36_45 ;;
  }
  dimension: age_46_55 {
    type: number
    sql: ${TABLE}.age_46_55 ;;
  }
  dimension: age_56_ {
    type: number
    sql: ${TABLE}.age_56_ ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }
  dimension: click_count {
    type: number
    sql: ${TABLE}.click_count ;;
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
  dimension: female {
    type: number
    sql: ${TABLE}.female ;;
  }
  dimension: male {
    type: number
    sql: ${TABLE}.male ;;
  }
  measure: count {
    type: count
    drill_fields: [app_name]
  }
}
