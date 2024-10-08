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
require "test_helper"

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
