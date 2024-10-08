# == Schema Information
#
# Table name: medical_records
#
#  id                 :bigint           not null, primary key
#  patient_id         :bigint           not null
#  doctor_id          :bigint           not null
#  appointment_id     :bigint           not null
#  disability         :string
#  allergies          :string
#  appointment_reason :text
#  background         :text
#  analysis           :text
#  recommendations    :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class MedicalRecord < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :appointment
end
