view: master {
  sql_table_name: public.master ;;
  drill_fields: [master_id]

  dimension: master_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."master_id" ;;
  }

  dimension: catalog_tech_id {
    type: number
    sql: ${TABLE}."catalog_tech_id" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: datasource_id {
    type: string
    sql: ${TABLE}."datasource_id" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: master_name {
    type: string
    sql: ${TABLE}."master_name" ;;
  }

  dimension: master_tech_id {
    type: number
    sql: ${TABLE}."master_tech_id" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  measure: count {
    type: count
    drill_fields: [master_id, master_name]
  }
}
