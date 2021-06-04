view: category {
  sql_table_name: public.category ;;
  drill_fields: [category_id]

  dimension: category_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."category_id" ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}."category_name" ;;
  }

  dimension: category_tech_id {
    type: number
    sql: ${TABLE}."category_tech_id" ;;
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

  dimension: parent_category_id {
    type: number
    sql: ${TABLE}."parent_category_id" ;;
  }

  dimension: parent_category_id_id {
    type: number
    sql: ${TABLE}."parent_category_id_id" ;;
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

  dimension: short_description {
    type: string
    sql: ${TABLE}."short_description" ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}."slug" ;;
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
    drill_fields: [category_id, category_name]
  }
}
