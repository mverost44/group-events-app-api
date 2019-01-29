class AttendingMemberSerializer < ActiveModel::Serializer
  attributes :id, :event, :user_id
end
