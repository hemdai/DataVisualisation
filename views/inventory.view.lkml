view: inventory {
  sql_table_name: public.inventory ;;
  drill_fields: [inventory_id]

  dimension: inventory_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."inventory_id" ;;
  }

  dimension: allocation {
    type: number
    sql: ${TABLE}."allocation" ;;
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

  dimension: inventory_tech_id {
    type: number
    sql: ${TABLE}."inventory_tech_id" ;;
  }

  dimension: perpetual {
    type: yesno
    sql: ${TABLE}."perpetual" ;;
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
    drill_fields: [inventory_id]
  }
}
