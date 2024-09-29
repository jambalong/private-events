class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendances, foreign_key: "attended_event_id"
  has_many :attendees, through: :attendances

  def self.past
    today = Date.today
    self.all.where("start_date < ?", today)
  end

  def self.upcoming
    today = Date.today
    self.all.where("start_date >= ?", today)
  end
end
