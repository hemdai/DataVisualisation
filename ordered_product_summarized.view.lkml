view: ordered_product_summarized {
  derived_table: {
    sql: select
        pdol.product_id, pdp.price, pdp.nom_produit,pdol.order_date
      from
        poc_data_order_line pdol
      inner join
        poc_data_product pdp
      on
        pdol.product_id = pdp.sku
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."product_id" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: nom_produit {
    type: string
    sql: ${TABLE}."nom_produit" ;;
  }

  dimension: order_date {
    type: string
    sql: CAST(${TABLE}."order_date" as timestamp ;;
  }

  set: detail {
    fields: [product_id, price, nom_produit, order_date]
  }
}
