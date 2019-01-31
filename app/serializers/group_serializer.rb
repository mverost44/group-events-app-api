class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :events, :users, :editable

  def editable
    scope == object.users
  end
end
