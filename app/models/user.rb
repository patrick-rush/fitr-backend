class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :exercises
  has_many :workouts
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :clubs
  has_many :memberships, dependent: :destroy
end
