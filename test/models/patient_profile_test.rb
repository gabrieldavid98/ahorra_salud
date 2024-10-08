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
require "test_helper"

class PatientProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
