class Exercise < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises

  validates :name, presence: true
  validates :category, inclusion: { in: %w(endurance strength balance flexability) }
  validates :target, inclusion: { in: %w(chest back arms shoulders legs core other) } 
end
