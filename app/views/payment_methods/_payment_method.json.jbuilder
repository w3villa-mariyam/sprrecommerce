json.extract! payment_method, :id, :name, :discription, :store, :provider, :created_at, :updated_at
json.url payment_method_url(payment_method, format: :json)
