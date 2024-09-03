# The name of this view in Looker is "Tables"
view: tables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vestel-nova.ifa_veezy_intellegence.tables` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age 15 25" in Explore.

  dimension: age_15_25 {
    type: string
    sql: ${TABLE}.age_15_25 ;;
  }

  dimension: age_26_35 {
    type: string
    sql: ${TABLE}.age_26_35 ;;
  }

  dimension: age_36_45 {
    type: string
    sql: ${TABLE}.age_36_45 ;;
  }

  dimension: age_46_55 {
    type: string
    sql: ${TABLE}.age_46_55 ;;
  }

  dimension: age_56_ {
    type: string
    sql: ${TABLE}.age_56_ ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: count_devices {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  dimension: click_count {
    type: number
    sql: ${TABLE}.click_count ;;
  }

  dimension: count_tables {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    drill_fields: [app_name,sum_time_spent]
    sql: CASE
         WHEN ${TABLE}.country = 'unknown' THEN NULL
         ELSE ${TABLE}.country
       END ;;
  }

  dimension: country_name {
    type: string
    map_layer_name: countries
    drill_fields: [app_name,sum_time_spent]
    sql: CASE
         WHEN ${TABLE}.country_name = 'unknown' THEN NULL
         ELSE ${TABLE}.country_name
       END ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: location {
    type: location
    sql_latitude:${TABLE}.Latitude ;;
    sql_longitude:${TABLE}.Longitude ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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
  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_duration {
    type: sum
    sql: ${duration} ;;  }

  measure: average_duration {
    type: average
    sql: ${duration} ;;  }

  dimension: energy {
    type: number
    sql: ${TABLE}.energy ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }

  dimension: error_count {
    type: number
    sql: ${TABLE}.error_count ;;
  }

  dimension: female {
    type: string
    sql: ${TABLE}.female ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: male {
    type: string
    sql: ${TABLE}.male ;;
  }

  dimension: program {
    type: string
    sql: ${TABLE}.program ;;
  }

  dimension: program_17 {
    type: string
    sql: ${TABLE}.program_17 ;;
  }

  dimension: set_temperature {
    type: number
    sql: ${TABLE}.set_temperature ;;
  }

  dimension: table {
    type: string
    sql: ${TABLE}.table ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
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
    drill_fields: [channel_name, app_name]
  }
  measure: total_usage_count {
    type: sum
    sql: ${usage_count} ;;  }

  measure: total_count_devices {
    type: sum
    sql: ${TABLE}.count ;;  }

  measure: click_count_sum {
    type: sum
    sql: ${TABLE}.click_count ;;
  }

  measure: sum_time_spent {
    type: sum
    sql: ${TABLE}.time_spent ;;
  }

  measure: brand_count {
    type: count_distinct
    sql: ${TABLE}.brand;;
  }
  dimension: count_ac_set_temperature {
    type: number
    sql: ${TABLE}.count ;;
  }

  measure: total_count_AC_set_temperature {
    type: sum
    sql: ${count_ac_set_temperature} ;;  }

  dimension: count_oven_daily_program_usage {
    type: number
    sql: ${TABLE}.count ;;
  }

  measure: total_count_oven_daily_program_usage {
    type: sum
    sql: ${count_oven_daily_program_usage} ;;  }


  measure: total_error_count {
    type: sum
    sql: ${error_count} ;;  }

  measure: total_energy {
    type: sum
    sql: ${energy} ;;  }
}
