# Define the database connection to be used for this model.
connection: "vestel"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: vestel_nova_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vestel_nova_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Vestel Nova"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.


# Create a single explore by joining three views based on country_code with FULL OUTER JOIN
explore: device_error_counts {}

explore: ac_set_temperature {}

explore: channel_duration {}

explore: dw_weekly_program_usage {}

explore: oven_daily_program_usage {}

explore: evc_energy {}

explore: ac_duration {}

explore: devices {}

explore: tables {}

explore: rf_door_open {}

explore: tv_app_time_spent {}

explore: td_weekly_program_usage {}

explore: tv_app_usage {}

explore: wm_weekly_program_usage {}
