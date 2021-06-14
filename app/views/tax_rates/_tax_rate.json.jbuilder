json.extract! tax_rate, :id, :name, :amount, :tax_category_id, :zone, :created_at, :updated_at
json.url tax_rate_url(tax_rate, format: :json)
