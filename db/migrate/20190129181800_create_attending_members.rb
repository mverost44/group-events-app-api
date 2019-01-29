class CreateAttendingMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :attending_members do |t|
      t.integer :event_id, index: true, foreign_key: true
      t.integer :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
