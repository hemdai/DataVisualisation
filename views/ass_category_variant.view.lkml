view: ass_category_variant {
  sql_table_name: public.ass_category_variant ;;

  dimension: category_tech_id {
    type: number
    sql: ${TABLE}."category_tech_id" ;;
  }

  dimension: categoryvariant_tech_id {
    type: number
    sql: ${TABLE}."categoryvariant_tech_id" ;;
  }

  dimension: variant_tech_id {
    type: number
    sql: ${TABLE}."variant_tech_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
