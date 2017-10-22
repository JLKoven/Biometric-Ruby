json.extract! exercise_session, :id, :date, :type_name, :program, :user_id, :created_at, :updated_at
json.url exercise_session_url(exercise_session, format: :json)
