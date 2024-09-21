class PatientProfile < ApplicationRecord
  belongs_to :patient
  belongs_to :identification_type
end
