class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :exercises, :user
end
