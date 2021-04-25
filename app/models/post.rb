class Post < ApplicationRecord
  # has_many :likes, as: :likeable
  # has_many :comments, as: :commentable
  belongs_to :user

  validates :content, presence: true
end
