class MembershipSerializer
  include FastJsonapi::ObjectSerializer
  attributes :group_id, :user_id
end
