class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :target, :user_id, :created_at, :updated_at
end
