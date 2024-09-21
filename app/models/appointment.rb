class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :speciality
  belongs_to :health_center
end
