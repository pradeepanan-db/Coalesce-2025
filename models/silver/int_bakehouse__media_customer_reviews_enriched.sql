SELECT *,
  ai_query(
    'databricks-meta-llama-3-3-70b-instruct',
    "Can you tell me the average temperature in the location the reviewer is referring to, in the month of the review? " || review || review_date
    ) as response
  FROM {{ ref('stg_bakehouse__media_customer_reviews') }}