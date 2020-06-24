class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates(:username, :password, presence: true, length: { minimum: 5, maximum: 20 })
end
