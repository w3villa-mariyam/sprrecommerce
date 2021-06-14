json.extract! product, :id, :name, :sku, :discription, :price, :meta_title, :meta_discription, :meta_keyword, :tax_category_id, :varient_id, :option_type_id, :created_at, :updated_at
json.url product_url(product, format: :json)
