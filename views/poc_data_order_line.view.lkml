view: poc_data_order_line {
  sql_table_name: public.poc_data_order_line ;;

  dimension: credit_note {
    type: string
    sql: ${TABLE}."credit_note" ;;
  }

  dimension: currency_cur {
    type: string
    sql: ${TABLE}."currency_cur" ;;
  }

  dimension: currency_id {
    type: string
    sql: ${TABLE}."currency_id" ;;
  }

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: net_price_cur_ht {
    type: number
    sql: ${TABLE}."net_price_cur_ht" ;;
  }

  dimension: net_price_cur_ttc {
    type: number
    sql: ${TABLE}."net_price_cur_ttc" ;;
  }

  dimension: net_price_ht {
    type: number
    sql: ${TABLE}."net_price_ht" ;;
  }

  dimension: net_price_ttc {
    type: number
    sql: ${TABLE}."net_price_ttc" ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}."order_date" ;;
  }

  dimension: order_qty {
    type: number
    sql: ${TABLE}."order_qty" ;;
  }

  dimension: order_sfcc {
    type: string
    sql: ${TABLE}."order_sfcc" ;;
  }

  dimension: prix_base_cur_ht {
    type: number
    sql: ${TABLE}."prix_base_cur_ht" ;;
  }

  dimension: prix_base_cur_ttc {
    type: number
    sql: ${TABLE}."prix_base_cur_ttc" ;;
  }

  dimension: prix_base_ht {
    type: number
    sql: ${TABLE}."prix_base_ht" ;;
  }

  dimension: prix_base_ttc {
    type: number
    sql: ${TABLE}."prix_base_ttc" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}."promo_code" ;;
  }

  dimension: taux_change {
    type: number
    sql: ${TABLE}."taux_change" ;;
  }

  dimension: vat_rate {
    type: number
    sql: ${TABLE}."vat_rate" ;;
  }

  dimension: zcmp_shippingsize {
    type: string
    sql: ${TABLE}."zcmp_shippingsize" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer.firstname, customer.lastname, customer.customer_id, product.product_id, product.product_name]
  }


  dimension: gross_product {
    type: number
    sql: ${prix_base_ttc} - ${poc_data_product.price};;
  }

  measure: total_net_price_ht {
    label: "Total Net Price HT"
    description: "Calculates the total net price excluding VAT"
    type: sum
    sql: ${net_price_ht} ;;
    value_format_name: eur
    drill_fields: [order_details*]
  }
  # GMV = Total Net Price -

  measure: gmv {
    label: "GMV"
    description: "Calculates the total net price excluding Shipping product"
    type: sum
    sql: ${net_price_ht} ;;
    value_format_name: eur
    drill_fields: [order_details*]
    filters: [product_id: "-SHIPPING"]
  }

  measure: average_basket {
    label: "Average Basket"
    type: average
    sql: ${net_price_ht} ;;
    value_format_name: eur
    drill_fields: [order_details*]
    sql_distinct_key: ${customer_id} ;;
    filters: [product_id: "-SHIPPING"]
  }



  measure: percent_of_gmv {
    type: number
    sql: 1.0*${gmv}/nullif(${total_net_price_ht},0) ;;
  }


  set: order_details {
    fields: [order_date, customer_id, product_id, poc_data_product.nom_produit, net_price_ht]
  }
}
