class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user_id, :comments, :likes
end
