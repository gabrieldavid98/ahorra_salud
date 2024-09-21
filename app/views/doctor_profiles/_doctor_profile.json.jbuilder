json.extract! doctor_profile, :id, :doctor_id, :names, :last_names, :identification_type_id, :identification, :sex, :birthdate, :phone, :created_at, :updated_at
json.url doctor_profile_url(doctor_profile, format: :json)
