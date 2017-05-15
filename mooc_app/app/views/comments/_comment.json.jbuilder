json.extract! comment, :id, :user_id, :lecture_id, :comment_text, :created_at, :updated_at
json.url comment_url(comment, format: :json)
