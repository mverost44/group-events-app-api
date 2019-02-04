class Group < ApplicationRecord
  belongs_to :organizer,
             class_name: 'User',
             foreign_key: 'user_id',
             inverse_of: 'organized_groups'

  has_many :group_members
  has_many :users, through: :group_members, dependent: :destroy
  has_many :events, dependent: :destroy
  # validates :user, presence: true
end
