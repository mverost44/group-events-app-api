class GroupSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :description, :users, :events, :editable

  def editable
    scope == object.organizer
  end
end
