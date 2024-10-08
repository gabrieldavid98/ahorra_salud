# == Schema Information
#
# Table name: patient_profiles
#
#  id                     :bigint           not null, primary key
#  patient_id             :bigint           not null
#  names                  :string
#  last_names             :string
#  identification_type_id :bigint           not null
#  identification         :integer
#  address                :string
#  phone                  :string
#  sex                    :boolean
#  birthdate              :date
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class PatientProfile < ApplicationRecord
  belongs_to :patient
  belongs_to :identification_type
end
