json.extract! send_email, :id, :name, :email, :phone, :address, :created_at, :updated_at
json.url send_email_url(send_email, format: :json)
