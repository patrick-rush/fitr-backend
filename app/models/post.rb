class Post < ApplicationRecord
  # has_many :likes, as: :likeable
  has_many :comments
  has_many :likes, as: :likeable
  belongs_to :user

  validates :content, presence: true
end
