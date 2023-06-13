include: "/views/snowflake_usage/*.view"

explore: load_history{
  hidden: yes
  fields: [ALL_FIELDS*,-tables.table_name,-tables.id]
  join: tables {
    sql_on: ${load_history.table_id} = ${tables.id} ;;
    relationship: many_to_one
  }
}
