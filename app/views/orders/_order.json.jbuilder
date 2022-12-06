json.extract! order, :id, :name, :address, :paytype, :email, :created_at, :updated_at
json.url order_url(order, format: :json)
