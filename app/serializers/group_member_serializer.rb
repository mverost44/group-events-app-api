class GroupMemberSerializer < ActiveModel::Serializer
  attributes :group_id, :user_id, :group

  def editable
    scope == object.user_id
  end
end
