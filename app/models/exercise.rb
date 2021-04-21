class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  validates :name, presence: true
  validates :category, inclusion: { in: %w(endurance strength balance flexability) }
  validates :target, inclusion: { in: %w(chest back arms shoulders legs core other) } 
end
