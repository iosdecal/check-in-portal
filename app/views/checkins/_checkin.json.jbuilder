json.extract! checkin, :id, :week, :user_id, :integer, :buddy_id, :integer, :created_at, :updated_at
json.url checkin_url(checkin, format: :json)
