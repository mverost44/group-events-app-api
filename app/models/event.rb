class Event < ApplicationRecord
  belongs_to :group
  has_many :attending_members
  belongs_to :event_organizer,
             class_name: 'User',
             foreign_key: 'user_id',
             inverse_of: 'organized_events'
end
