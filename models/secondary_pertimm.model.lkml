connection: "marketplace_backup_db"

# include all the views
include: "/views/**/*.view"

datagroup: secondary_pertimm_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: secondary_pertimm_default_datagroup

explore: ass_asset_product_model {}

explore: ass_asset_store {}

explore: ass_catalog_store {}

explore: ass_category_variant {}

explore: ass_inventory_store {}

explore: ass_price_book_store {}

explore: asset {}

explore: catalog {}

explore: category {}

explore: connection_reg_r3 {}

explore: customer {}

explore: customer_address {}

explore: inventory {}

explore: login {}

explore: master {}

explore: poc_data_order_header {
  join: customer {
    type: left_outer
    sql_on: ${poc_data_order_header.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }
}

# explore: poc_data_order_line {
#   join: customer {
#     type: left_outer
#     sql_on: ${poc_data_order_line.customer_id} = ${customer.customer_id} ;;
#     relationship: many_to_one
#   }

#   join: product {
#     type: left_outer
#     sql_on: ${poc_data_order_line.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

explore: poc_data_order_payment {}

explore: poc_data_product {}

explore: price_book {}

explore: product {}

explore: product_model {}

explore: ref_brand {}

explore: ref_color {}

explore: ref_size {}

explore: sequelize_meta {}

explore: store {}

explore: user {}

explore: summarized_product_order {}

explore: categorized_product_sales {}
