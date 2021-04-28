class Club < ApplicationRecord
  belongs_to :user
  has_many :memberships, dependent: :destroy
  has_many :members, through: :memberships, source: user
end
