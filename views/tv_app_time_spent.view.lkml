# The name of this view in Looker is "Tv App Time Spent"
view: tv_app_time_spent {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ifa_veezy_intellegence.tv_app_time_spent` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age 15 25" in Explore.

  dimension: age_15_25 {
    type: number
    sql: ${TABLE}.age_15_25 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age_15_25 {
    type: sum
    sql: ${age_15_25} ;;  }
  measure: average_age_15_25 {
    type: average
    sql: ${age_15_25} ;;  }

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

  dimension: female {
    type: number
    sql: ${TABLE}.female ;;
  }

  dimension: male {
    type: number
    sql: ${TABLE}.male ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
  }
  measure: count {
    type: count
    drill_fields: [app_name]
  }
  measure: sum_time_spent {
    type: sum
    sql: ${TABLE}.time_spent ;;
   }
    measure: time_spent_m {
      type: count_distinct
      sql: ${TABLE}.time_spent ;;
    }

}
