class CreateAttendingMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :attending_members do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
