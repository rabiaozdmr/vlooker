# The name of this view in Looker is "Dw Weekly Program Usage"
view: dw_weekly_program_usage {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ifa_veezy_intellegence.dw_weekly_program_usage` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Brand" in Explore.

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

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_usage_count {
    type: sum
    sql: ${usage_count} ;;  }
  measure: average_usage_count {
    type: average
    sql: ${usage_count} ;;  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }
  measure: count {
    type: count
  }
}
