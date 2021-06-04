view: catalog {
  sql_table_name: public.catalog ;;
  drill_fields: [catalog_id]

  dimension: catalog_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."catalog_id" ;;
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
    drill_fields: [catalog_id]
  }
}
