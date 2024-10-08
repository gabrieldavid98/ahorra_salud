json.extract! medicament_authorization, :id, :medical_record_id, :doctor_id, :appointment_id, :patient_id, :name, :quantity, :periodicity, :created_at, :updated_at
json.url medicament_authorization_url(medicament_authorization, format: :json)
