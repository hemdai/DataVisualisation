view: login {
  sql_table_name: public.login ;;

  dimension_group: lastconnection {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."lastconnection_at" ;;
  }

  dimension: login_tech_id {
    type: number
    sql: ${TABLE}."login_tech_id" ;;
  }

  dimension: passwordhash {
    type: string
    sql: ${TABLE}."passwordhash" ;;
  }

  dimension: passwordsalt {
    type: string
    sql: ${TABLE}."passwordsalt" ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}."username" ;;
  }

  measure: count {
    type: count
    drill_fields: [username]
  }
}
