view: product_model {
  sql_table_name: public.product_model ;;

  dimension: brand_tech_id {
    type: number
    sql: ${TABLE}."brand_tech_id" ;;
  }

  dimension: catalog_tech_id_id {
    type: string
    sql: ${TABLE}."catalog_tech_id_id" ;;
  }

  dimension: catalog_tech_id_id_id {
    type: string
    sql: ${TABLE}."catalog_tech_id_id_id" ;;
  }

  dimension: color_tech_id {
    type: number
    sql: ${TABLE}."color_tech_id" ;;
  }

  dimension: color_tech_id_id {
    type: string
    sql: ${TABLE}."color_tech_id_id" ;;
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

  dimension: height {
    type: number
    sql: ${TABLE}."height" ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}."length" ;;
  }

  dimension: master_tech_id {
    type: number
    sql: ${TABLE}."master_tech_id" ;;
  }

  dimension: master_tech_id_id {
    type: string
    sql: ${TABLE}."master_tech_id_id" ;;
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

  dimension: pmodel_id {
    type: string
    sql: ${TABLE}."pmodel_id" ;;
  }

  dimension: pmodel_name {
    type: string
    sql: ${TABLE}."pmodel_name" ;;
  }

  dimension: pmodel_tech_id {
    type: number
    sql: ${TABLE}."pmodel_tech_id" ;;
  }

  dimension: pmodel_type {
    type: string
    sql: ${TABLE}."pmodel_type" ;;
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

  dimension: weight {
    type: number
    sql: ${TABLE}."weight" ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}."width" ;;
  }

  measure: count {
    type: count
    drill_fields: [pmodel_name]
  }
}
