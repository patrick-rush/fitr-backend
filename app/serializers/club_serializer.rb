class ClubSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :description, :location, :user, :created_at, :updated_at
end
