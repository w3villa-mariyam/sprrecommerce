json.extract! payment, :id, :amount, :state_id, :store, :name, :discription, :created_at, :updated_at
json.url payment_url(payment, format: :json)
