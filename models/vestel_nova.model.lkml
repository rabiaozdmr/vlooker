connection: "vestel"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: vestel_nova_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vestel_nova_default_datagroup

explore: ac_set_temperature {}

explore: evc_energy {}

explore: dw_weekly_program_usage {}

explore: devices {}

explore: device_error_counts {}

explore: ac_duration {}

explore: channel_duration {}

explore: oven_daily_program_usage {}

explore: rf_door_open {}

explore: tv_app_time_spent {}

explore: tv_app_usage {}

explore: wm_weekly_program_usage {}

explore: td_weekly_program_usage {}

