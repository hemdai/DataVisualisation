view: ref_size {
  sql_table_name: public.ref_size ;;

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

  dimension: size_id {
    type: string
    sql: ${TABLE}."size_id" ;;
  }

  dimension: size_name {
    type: string
    sql: ${TABLE}."size_name" ;;
  }

  dimension: size_tech_id {
    type: number
    sql: ${TABLE}."size_tech_id" ;;
  }

  dimension: size_type {
    type: string
    sql: ${TABLE}."size_type" ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}."sort_order" ;;
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
    drill_fields: [size_name]
  }
}
