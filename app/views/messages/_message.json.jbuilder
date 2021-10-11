json.extract! message, :id, :name, :surname, :email, :title, :text, :created_at, :updated_at
json.url message_url(message, format: :json)
