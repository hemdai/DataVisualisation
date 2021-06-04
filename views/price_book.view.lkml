view: price_book {
  sql_table_name: public.price_book ;;

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

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
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

  dimension: on_line {
    type: yesno
    sql: ${TABLE}."on_line" ;;
  }

  dimension_group: on_line_from_dt {
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
    sql: ${TABLE}."on_line_from_dt" ;;
  }

  dimension_group: on_line_to_dt {
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
    sql: ${TABLE}."on_line_to_dt" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: pricebook_id {
    type: string
    sql: ${TABLE}."pricebook_id" ;;
  }

  dimension: pricebook_info {
    type: string
    sql: ${TABLE}."pricebook_info" ;;
  }

  dimension: pricebook_tech_id {
    type: number
    sql: ${TABLE}."pricebook_tech_id" ;;
  }

  dimension: product_tech_id {
    type: number
    sql: ${TABLE}."product_tech_id" ;;
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
    drill_fields: []
  }
}
