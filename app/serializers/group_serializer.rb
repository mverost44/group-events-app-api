class GroupSerializer < ActiveModel::Serializer
  attributes :id, :organizer, :name, :description, :users, :editable

  def editable
    scope == object.organizer
  end
end
