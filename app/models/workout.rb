class Workout < ApplicationRecord
  belongs_to :user
  has_many :exercises, through: :workout_exercises

  validates_presence_of :exercise
end
