view: channel_duration {
  sql_table_name: `ifa_veezy_intellegence.channel_duration` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
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
  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
  }
  measure: count {
    type: count
    drill_fields: [channel_name]
  }
}
