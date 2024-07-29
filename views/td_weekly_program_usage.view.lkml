view: td_weekly_program_usage {
  sql_table_name: `ifa_veezy_intellegence.td_weekly_program_usage` ;;

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
  dimension: program {
    type: string
    sql: ${TABLE}.program ;;
  }
  dimension: usage_count {
    type: number
    sql: ${TABLE}.usage_count ;;
  }
  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }
  measure: count {
    type: count
  }
}
