class Conversation < ApplicationRecord
  has_many :conversation, class_name: 'Message', foreign_key: 'conversation_id'
end
