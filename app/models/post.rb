class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates(:title, presence: true, length: { minimum: 10, maximum: 30 })
  validates(:body, presence: true, length: { maximum: 100 })
end
