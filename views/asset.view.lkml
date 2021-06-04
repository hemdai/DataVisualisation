view: asset {
  sql_table_name: public.asset ;;

  dimension: asset_alt {
    type: string
    sql: ${TABLE}."asset_alt" ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}."asset_name" ;;
  }

  dimension: asset_source {
    type: string
    sql: ${TABLE}."asset_source" ;;
  }

  dimension: asset_tech_id {
    type: number
    sql: ${TABLE}."asset_tech_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_name]
  }
}
