# == Schema Information
#
# Table name: medicament_authorizations
#
#  id                :bigint           not null, primary key
#  medical_record_id :bigint           not null
#  doctor_id         :bigint           not null
#  appointment_id    :bigint           not null
#  patient_id        :bigint           not null
#  name              :string
#  quantity          :integer
#  periodicity       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  status            :integer
#
class MedicamentAuthorization < ApplicationRecord
  belongs_to :medical_record
  belongs_to :doctor
  belongs_to :appointment
  belongs_to :patient
end
