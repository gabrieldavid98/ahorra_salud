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
require "test_helper"

class TestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
