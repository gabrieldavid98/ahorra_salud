# == Schema Information
#
# Table name: chats
#
#  id         :bigint           not null, primary key
#  patient_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ChatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
