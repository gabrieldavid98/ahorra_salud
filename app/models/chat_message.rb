class ChatMessage < ApplicationRecord
  belongs_to :chat
  belongs_to :support
end
