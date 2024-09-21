# == Schema Information
#
# Table name: identification_types
#
#  id         :bigint           not null, primary key
#  short_name :string
#  long_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class IdentificationTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
