class Event < ApplicationRecord
  belongs_to :group
  has_many :attending_members
end
