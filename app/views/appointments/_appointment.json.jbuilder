json.extract! appointment, :id, :doctor_id, :user_id, :speciality_id, :health_center_id, :date_time, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
