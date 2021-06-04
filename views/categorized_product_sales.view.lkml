
view: categorized_product_sales {
  derived_table: {
    sql: select
        pdol.product_id, pdp.price, pdp.nom_produit,pdol.order_date, pdp.product_categories
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

  measure: total_sales {
    type: number
    sql: ${price}*${count} ;;
  }

  measure: total {
    label: "Total"
    description: "total product price"
    type: number
    sql: ${total_sales} ;;
    value_format_name: eur
  }

  dimension: category {
    type: string
    sql: ${TABLE}."product_categories" ;;
  }

  measure: percent_of_product {
    type: number
    sql: 1.0*${total_sales}/nullif(${total},0) ;;
  }

  set: detail {
    fields: [price, nom_produit]
  }

  # set: detail {
  #   fields: [product_id, price, nom_produit, order_date]
  # }
}
