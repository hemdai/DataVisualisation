view: ass_asset_product_model {
  sql_table_name: public.ass_asset_product_model ;;

  dimension: asset_tech_id {
    type: number
    sql: ${TABLE}."asset_tech_id" ;;
  }

  dimension: assetpmodel_id {
    type: string
    sql: ${TABLE}."assetpmodel_id" ;;
  }

  dimension: assetpmodel_tech_id {
    type: number
    sql: ${TABLE}."assetpmodel_tech_id" ;;
  }

  dimension: pmodel_tech_id {
    type: number
    sql: ${TABLE}."pmodel_tech_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
