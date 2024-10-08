# == Schema Information
#
# Table name: doctors
#
#  id         :bigint           not null, primary key
#  names      :string
#  last_names :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Doctor < ApplicationRecord
  has_many :appointments
end
