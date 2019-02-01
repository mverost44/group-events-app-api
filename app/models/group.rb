class Group < ApplicationRecord
  belongs_to :organizer,
             class_name: 'User',
             foreign_key: 'user_id',
             inverse_of: 'organized_groups'

  has_many :group_members
  has_many :users, through: :group_members
  has_many :events
  # validates :user, presence: true
end
