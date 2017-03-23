json.extract! user, :id, :username, :password, :email, :name, :phone, :gender, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
