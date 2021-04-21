class Workout < ApplicationRecord
  belongs_to :user
  # has_many :exercises

  # validates_presence_of :exercise
end
