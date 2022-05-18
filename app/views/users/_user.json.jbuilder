json.extract! user, :id, :name, :street, :postal_code, :created_at, :updated_at
json.url user_url(user, format: :json)
