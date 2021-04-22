class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :user_invites, class_name: "Invitation", foreign_key: :event_id
  has_many :attendees, through: :user_invites, source: :invitee
end
