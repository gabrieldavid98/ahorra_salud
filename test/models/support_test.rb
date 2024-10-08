# == Schema Information
#
# Table name: supports
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  names                  :string
#  last_names             :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require "test_helper"

class SupportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
