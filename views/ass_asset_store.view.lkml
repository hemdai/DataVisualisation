view: ass_asset_store {
  sql_table_name: public.ass_asset_store ;;

  dimension: asset_tech_id {
    type: number
    sql: ${TABLE}."asset_tech_id" ;;
  }

  dimension: assetstore_id {
    type: string
    sql: ${TABLE}."assetstore_id" ;;
  }

  dimension: assetstore_tech_id {
    type: number
    sql: ${TABLE}."assetstore_tech_id" ;;
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
