# == Schema Information
#
# Table name: chat_messages
#
#  id         :bigint           not null, primary key
#  chat_id    :bigint           not null
#  support_id :bigint           not null
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ChatMessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
