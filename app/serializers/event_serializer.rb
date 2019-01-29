class EventSerializer < ActiveModel::Serializer
  attributes :id, :group_id, :name, :description, :location, :date_time, :attending_members
end
