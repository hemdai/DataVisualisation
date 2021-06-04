view: poc_data_order_payment {
  sql_table_name: public.poc_data_order_payment ;;

  dimension: card_type {
    type: string
    sql: ${TABLE}."card_type" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: mont_pt {
    type: number
    sql: ${TABLE}."mont_pt" ;;
  }

  dimension: order_sfcc {
    type: string
    sql: ${TABLE}."order_sfcc" ;;
  }

  dimension: reg_mod {
    type: string
    sql: ${TABLE}."reg_mod" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
