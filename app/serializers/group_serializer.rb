class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :events, :user_ids
end
