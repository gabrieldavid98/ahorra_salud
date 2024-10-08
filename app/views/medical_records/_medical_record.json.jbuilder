json.extract! medical_record, :id, :patient_id, :doctor_id, :appointment_id, :disability, :allergies, :appointment_reason, :background, :analysis, :recommendations, :created_at, :updated_at
json.url medical_record_url(medical_record, format: :json)
