class User < ApplicationRecord
  has_many :to_user, class_name: 'Message', foreign_key: 'to_user_id'
  has_many :from_user, class_name: 'Message', foreign_key: 'from_user_id'

end
