view: ref_color {
  sql_table_name: public.ref_color ;;

  dimension: color_code {
    type: string
    sql: ${TABLE}."color_code" ;;
  }

  dimension: color_id {
    type: string
    sql: ${TABLE}."color_id" ;;
  }

  dimension: color_image {
    type: string
    sql: ${TABLE}."color_image" ;;
  }

  dimension: color_name {
    type: string
    sql: ${TABLE}."color_name" ;;
  }

  dimension: color_public_name {
    type: string
    sql: ${TABLE}."color_public_name" ;;
  }

  dimension: color_tech_id {
    type: number
    sql: ${TABLE}."color_tech_id" ;;
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
    drill_fields: [color_name, color_public_name]
  }
}
