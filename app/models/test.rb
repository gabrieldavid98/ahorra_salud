# == Schema Information
#
# Table name: tests
#
#  id         :bigint           not null, primary key
#  title      :string
#  patient_id :bigint           not null
#  doctor_id  :bigint           not null
#  date_time  :datetime
#  results    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Test < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
end
