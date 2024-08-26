# Define the database connection to be used for this model.
connection: "vestel"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: vestel_nova_default_datagroup {
  max_cache_age: "24 hour"
}

persist_with: vestel_nova_default_datagroup

# Include a base view for country_code
view: country_view {
  sql_table_name: your_database.your_country_table ;;

  dimension: country_code {
    sql: ${TABLE}.country_code ;;
    primary_key: yes
  }
}

# Joins each explore to the country_view based on country_code
explore: device_error_counts {
  join: country_view {
    type: left_outer
    sql_on: ${device_error_counts.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: ac_set_temperature {
  join: country_view {
    type: left_outer
    sql_on: ${ac_set_temperature.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: channel_duration {
  join: country_view {
    type: left_outer
    sql_on: ${channel_duration.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: dw_weekly_program_usage {
  join: country_view {
    type: left_outer
    sql_on: ${dw_weekly_program_usage.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: oven_daily_program_usage {
  join: country_view {
    type: left_outer
    sql_on: ${oven_daily_program_usage.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: evc_energy {
  join: country_view {
    type: left_outer
    sql_on: ${evc_energy.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: ac_duration {
  join: country_view {
    type: left_outer
    sql_on: ${ac_duration.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: devices {
  join: country_view {
    type: left_outer
    sql_on: ${devices.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: rf_door_open {
  join: country_view {
    type: left_outer
    sql_on: ${rf_door_open.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: tv_app_time_spent {
  join: country_view {
    type: left_outer
    sql_on: ${tv_app_time_spent.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: td_weekly_program_usage {
  join: country_view {
    type: left_outer
    sql_on: ${td_weekly_program_usage.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: tv_app_usage {
  join: country_view {
    type: left_outer
    sql_on: ${tv_app_usage.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}

explore: wm_weekly_program_usage {
  join: country_view {
    type: left_outer
    sql_on: ${wm_weekly_program_usage.country_code} = ${country_view.country_code} ;;
    relationship: one_to_one
  }
}
