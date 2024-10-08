class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendances, foreign_key: "attended_event_id", dependent: :destroy
  has_many :attendees, through: :attendances

  scope :past, -> { where(start_date: ...Date.today) }
  scope :upcoming, -> { where(start_date: Date.today..) }
end
