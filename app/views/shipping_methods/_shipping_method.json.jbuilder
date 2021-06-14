json.extract! shipping_method, :id, :name, :zone_id, :shipping_category_id, :tax_category_id, :created_at, :updated_at
json.url shipping_method_url(shipping_method, format: :json)
