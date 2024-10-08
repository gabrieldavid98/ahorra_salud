# == Schema Information
#
# Table name: chats
#
#  id         :bigint           not null, primary key
#  patient_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Chat < ApplicationRecord
  belongs_to :patient
end
