class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :name, :bio, :location, :age, :score, :created_at
end
