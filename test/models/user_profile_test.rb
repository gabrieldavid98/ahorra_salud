# == Schema Information
#
# Table name: user_profiles
#
#  id                     :bigint           not null, primary key
#  user_id                :bigint           not null
#  names                  :string
#  last_names             :string
#  identification_type_id :bigint           not null
#  identification         :integer
#  sex                    :boolean
#  birthdate              :date
#  phone                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require "test_helper"

class UserProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
