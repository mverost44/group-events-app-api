class GroupMemberSerializer < ActiveModel::Serializer
  attributes :id
  has_one :group
  has_one :user
end
