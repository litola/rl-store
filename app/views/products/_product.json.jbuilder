json.extract! product, :id, :price, :name, :qty, :description, :category_id, :product_type, :vendor_id, :created_at, :updated_at
json.url product_url(product, format: :json)