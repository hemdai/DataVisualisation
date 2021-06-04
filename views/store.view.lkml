view: store {
  sql_table_name: public.store ;;
  drill_fields: [store_id]

  dimension: store_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."store_id" ;;
  }

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

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: events_info {
    type: string
    sql: ${TABLE}."events_info" ;;
  }

  dimension: hours_info {
    type: string
    sql: ${TABLE}."hours_info" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phone_number" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal_code" ;;
  }

  dimension: seo_page_description {
    type: string
    sql: ${TABLE}."seo_page_description" ;;
  }

  dimension: seo_page_keywords {
    type: string
    sql: ${TABLE}."seo_page_keywords" ;;
  }

  dimension: seo_page_title {
    type: string
    sql: ${TABLE}."seo_page_title" ;;
  }

  dimension: seo_page_url {
    type: string
    sql: ${TABLE}."seo_page_url" ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}."slug" ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}."sort_order" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}."store_name" ;;
  }

  dimension: store_tech_id {
    type: number
    sql: ${TABLE}."store_tech_id" ;;
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
    drill_fields: [store_id, store_name]
  }
}
