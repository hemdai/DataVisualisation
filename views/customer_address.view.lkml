view: customer_address {
  sql_table_name: public.customer_address ;;

  dimension: address_1 {
    type: string
    sql: ${TABLE}."address_1" ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}."address_2" ;;
  }

  dimension: address_3 {
    type: string
    sql: ${TABLE}."address_3" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}."company" ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}."country_code" ;;
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

  dimension: customer_tech_id {
    type: number
    sql: ${TABLE}."customer_tech_id" ;;
  }

  dimension: customeradd_id {
    type: string
    sql: ${TABLE}."customeradd_id" ;;
  }

  dimension: customeradd_tech_id {
    type: number
    sql: ${TABLE}."customeradd_tech_id" ;;
  }

  dimension: customeradd_type {
    type: string
    sql: ${TABLE}."customeradd_type" ;;
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

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phone_number" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal_code" ;;
  }

  dimension: relay_code {
    type: string
    sql: ${TABLE}."relay_code" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
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
