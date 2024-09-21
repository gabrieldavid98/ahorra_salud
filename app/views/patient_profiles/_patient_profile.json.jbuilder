json.extract! patient_profile, :id, :patient_id, :names, :last_names, :identification_type_id, :identification, :address, :phone, :sex, :birthdate, :created_at, :updated_at
json.url patient_profile_url(patient_profile, format: :json)
