

# view: summarized_product_order {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
view: summarized_product_order {
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

  dimension_group: order_date {
    type: time
    timeframes: [date, week, month, year]
    sql: CAST(${TABLE}."order_date" as timestamp) ;;
  }

  measure: total_sales {
    type: sum
    sql: ${price} ;;
  }

  measure: Total {
    type: number
    sql: ${total_sales}*${count} ;;
  }

  set: detail {
    fields: [product_id, price, nom_produit]
  }
}
