class Appointment < ApplicationRecord
  validates_presence_of :date
  validates_presence_of :time

  belongs_to :user
  belongs_to :car

  scope :recent, -> { order(created_at: :desc)}
end
