view: sequelize_meta {
  sql_table_name: public.sequelize_meta ;;

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
