view: oven_daily_program_usage {
  sql_table_name: `ifa_veezy_intellegence.oven_daily_program_usage` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: count_oven_daily_program_usage {
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
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }
  dimension: program {
    type: string
    sql: ${TABLE}.program ;;
  }
  measure: count {
    type: count
  }
}
