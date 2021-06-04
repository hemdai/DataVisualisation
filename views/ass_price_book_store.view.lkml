view: ass_price_book_store {
  sql_table_name: public.ass_price_book_store ;;

  dimension: activate {
    type: yesno
    sql: ${TABLE}."activate" ;;
  }

  dimension: pricebook_tech_id {
    type: number
    sql: ${TABLE}."pricebook_tech_id" ;;
  }

  dimension: pricebookstore_id {
    type: string
    sql: ${TABLE}."pricebookstore_id" ;;
  }

  dimension: pricebookstore_tech_id {
    type: number
    sql: ${TABLE}."pricebookstore_tech_id" ;;
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
