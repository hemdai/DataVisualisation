view: ass_catalog_store {
  sql_table_name: public.ass_catalog_store ;;

  dimension: assetstore_tech_id {
    type: number
    sql: ${TABLE}."assetstore_tech_id" ;;
  }

  dimension: catalog_tech_id {
    type: number
    sql: ${TABLE}."catalog_tech_id" ;;
  }

  dimension: catalogstore_id {
    type: string
    sql: ${TABLE}."catalogstore_id" ;;
  }

  dimension: store_tech_id {
    type: number
    sql: ${TABLE}."store_tech_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
