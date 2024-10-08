# == Schema Information
#
# Table name: appointments
#
#  id               :bigint           not null, primary key
#  doctor_id        :bigint           not null
#  patient_id       :bigint           not null
#  specialty_id     :bigint           not null
#  health_center_id :bigint           not null
#  date_time        :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :specialty
  belongs_to :health_center

  has_one :medical_record, dependent: :delete
  has_many :medicament_authorizations, dependent: :delete_all
end
