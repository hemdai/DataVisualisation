view: ass_inventory_store {
  sql_table_name: public.ass_inventory_store ;;

  dimension: activate {
    type: yesno
    sql: ${TABLE}."activate" ;;
  }

  dimension: inventory_tech_id {
    type: number
    sql: ${TABLE}."inventory_tech_id" ;;
  }

  dimension: inventorystore_id {
    type: string
    sql: ${TABLE}."inventorystore_id" ;;
  }

  dimension: inventorystore_tech_id {
    type: number
    sql: ${TABLE}."inventorystore_tech_id" ;;
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
