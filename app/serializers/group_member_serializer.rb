class GroupMemberSerializer < ActiveModel::Serializer
  attributes :group_id, :user_id, :group
end
