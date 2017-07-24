json.extract! checkin, :id, :week, :user_id, :buddy_id, :comment, :created_at, :updated_at
json.url checkin_url(checkin, format: :json)
