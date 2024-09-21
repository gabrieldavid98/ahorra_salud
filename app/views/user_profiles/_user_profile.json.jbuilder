json.extract! user_profile, :id, :user_id, :names, :last_names, :identification_type_id, :identification, :sex, :birthdate, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
