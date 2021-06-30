class User < ApplicationRecord
  has_many :from_user, class_name: 'Message', foreign_key: 'from_user_id'
  
end
