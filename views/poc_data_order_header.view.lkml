view: poc_data_order_header {
  sql_table_name: public.poc_data_order_header ;;

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: liv_adr1 {
    type: string
    sql: ${TABLE}."liv_adr1" ;;
  }

  dimension: liv_country {
    type: string
    sql: ${TABLE}."liv_country" ;;
  }

  dimension: liv_forname {
    type: string
    sql: ${TABLE}."liv_forname" ;;
  }

  dimension: liv_name {
    type: string
    sql: ${TABLE}."liv_name" ;;
  }

  dimension: liv_town {
    type: string
    sql: ${TABLE}."liv_town" ;;
  }

  dimension: liv_zipcode {
    type: string
    sql: ${TABLE}."liv_zipcode" ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}."order_date" ;;
  }

  dimension: order_sfcc {
    type: string
    sql: ${TABLE}."order_sfcc" ;;
  }

  dimension: transport_id {
    type: string
    sql: ${TABLE}."transport_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [liv_forname, liv_name, customer.firstname, customer.lastname, customer.customer_id]
  }
}
