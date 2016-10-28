json.extract! product, :id, :created_at, :updated_at, :description, :price
json.url product_url(product, format: :json)