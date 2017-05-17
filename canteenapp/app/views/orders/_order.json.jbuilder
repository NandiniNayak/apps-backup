json.extract! order, :id, :name, :menu_id, :quantity, :created_at, :updated_at
json.url order_url(order, format: :json)
