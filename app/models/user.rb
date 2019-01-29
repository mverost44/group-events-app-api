# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :group_members
  has_many :groups, through: :group_members
  has_many :attending_members
  has_many :events_to_attend, through: :attending_members, source: :event
end
