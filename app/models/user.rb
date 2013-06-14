class User < ActiveRecord::Base
  has_secure_password
  has_many :questions
  has_many :feedbacks
  validates :name, uniqueness: true

end
