{{ config(
   materialized = 'table'
 ) }}

SELECT
  *,
  ai_analyze_sentiment(review) AS sentiment,
  ai_extract(CAST(review AS STRING), ARRAY('products')) AS products_mentioned,     
  ai_gen(
    "Generate a reply in 60 words to address the customer's review.
    Customer's review: " || review
  ) AS generated_reply
FROM
  {{ ref('stg_bakehouse__media_customer_reviews') }}