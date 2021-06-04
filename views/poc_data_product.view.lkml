view: poc_data_product {
  sql_table_name: public.poc_data_product ;;

  dimension: allocation {
    type: number
    sql: ${TABLE}."allocation" ;;
  }

  dimension: color_code {
    type: string
    sql: ${TABLE}."color_code" ;;
  }

  dimension: color_name {
    type: string
    sql: ${TABLE}."color_name" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: erp_categorie {
    type: string
    sql: ${TABLE}."erp_categorie" ;;
  }

  dimension: erp_code_famille {
    type: string
    sql: ${TABLE}."erp_code_famille" ;;
  }

  dimension: ischildren {
    type: string
    sql: ${TABLE}."ischildren" ;;
  }

  dimension: master {
    type: string
    sql: ${TABLE}."master" ;;
  }

  dimension: nom_produit {
    type: string
    sql: ${TABLE}."nom_produit" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: product_categories {
    type: string
    sql: ${TABLE}."product_categories" ;;
  }

  dimension: product_hs_code {
    type: string
    sql: ${TABLE}."product_hs_code" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: sfcc_categorie_1 {
    type: string
    sql: ${TABLE}."sfcc_categorie_1" ;;
  }

  dimension: sfcc_categorie_10 {
    type: string
    sql: ${TABLE}."sfcc_categorie_10" ;;
  }

  dimension: sfcc_categorie_2 {
    type: string
    sql: ${TABLE}."sfcc_categorie_2" ;;
  }

  dimension: sfcc_categorie_3 {
    type: string
    sql: ${TABLE}."sfcc_categorie_3" ;;
  }

  dimension: sfcc_categorie_4 {
    type: string
    sql: ${TABLE}."sfcc_categorie_4" ;;
  }

  dimension: sfcc_categorie_5 {
    type: string
    sql: ${TABLE}."sfcc_categorie_5" ;;
  }

  dimension: sfcc_categorie_6 {
    type: string
    sql: ${TABLE}."sfcc_categorie_6" ;;
  }

  dimension: sfcc_categorie_7 {
    type: string
    sql: ${TABLE}."sfcc_categorie_7" ;;
  }

  dimension: sfcc_categorie_8 {
    type: string
    sql: ${TABLE}."sfcc_categorie_8" ;;
  }

  dimension: sfcc_categorie_9 {
    type: string
    sql: ${TABLE}."sfcc_categorie_9" ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}."size" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  measure: count {
    type: count
    drill_fields: [color_name, product_name]
  }
}
