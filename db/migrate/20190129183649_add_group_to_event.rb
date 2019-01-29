class AddGroupToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :group, foreign_key: true
  end
end
