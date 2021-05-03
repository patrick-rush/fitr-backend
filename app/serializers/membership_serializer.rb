class MembershipSerializer
  include FastJsonapi::ObjectSerializer
  attributes :club_id, :user_id
end
